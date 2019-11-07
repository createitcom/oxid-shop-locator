<?php

namespace ct\shoplocator\Application\Controller\Admin\Map;

use Exception;
use \OxidEsales\Eshop\Application\Controller\Admin\ListComponentAjax;
use \OxidEsales\Eshop\Core\UtilsObject;
use \OxidEsales\Eshop\Core\Registry;
use \OxidEsales\Eshop\Core\Request;
use \OxidEsales\Eshop\Core\DatabaseProvider;
use \OxidEsales\Eshop\Core\Field;
use \ct\shoplocator\Application\Model\MarkerSet2Map;

$parentClass = UtilsObject::getInstance()->getClassName(ListComponentAjax::class);
class_alias($parentClass, 'ct\\shoplocator\\Application\\Controller\\Admin\\Map\\EditAjax_extend_ListComponentAjax');

/**
 * Class EditAjax
 * @package ct\shoplocator\Application\Controller\Admin\Map
 */
class EditAjax extends EditAjax_extend_ListComponentAjax
{

    /**
     * @var bool
     */
    protected $_blAllowExtColumns = true;

    /**
     * @var array
     */
    protected $_aColumns =
        array(
            'container1' => array(
                array('title', 'ct_shoplocator_map_marker_set', 1, 0, 0),
                array('oxid', 'ct_shoplocator_map_marker_set', 0, 0, 1),
            ),
            'container2' => array(
                array('title', 'ct_shoplocator_map_marker_set', 1, 0, 0),
                array('oxid', 'ct_shoplocator_map_marker_set', 0, 0, 1),
            ),
        );


    /**
     * @return string
     * @throws \OxidEsales\Eshop\Core\Exception\DatabaseConnectionException
     */
    protected function _getQuery()
    {
        $myConfig = $this->getConfig();

        $markerSetTable = $this->_getViewName('ct_shoplocator_map_marker_set');
        $relationTable = $this->_getViewName('ct_shoplocator_map_has_marker_set');

        $objectId = Registry::get(Request::class)->getRequestEscapedParameter('oxid');
        $synchObjectId = Registry::get(Request::class)->getRequestEscapedParameter('synchoxid');
        $db = DatabaseProvider::getDb(DatabaseProvider::FETCH_MODE_ASSOC);

        $sShopID = $myConfig->getShopId();

        if (!$objectId && $synchObjectId) {
            $addQuery = ' from ' . $markerSetTable . ' where 1 ';
        } else {
            $sJoin = $markerSetTable . '.oxid=' . $relationTable . '.marker_set_id';
            $subSelect = '';
            if ($synchObjectId && $objectId != $synchObjectId) {
                $subSelect = ' AND ' . $markerSetTable . 'oxid NOT IN ('
                    . ' SELECT ' . $markerSetTable . '.oxid FROM ' . $relationTable . ' LEFT JOIN ' . $markerSetTable
                    . ' ON ' . $sJoin . ' WHERE ' . $relationTable . '.map_id=' . $db->quote($synchObjectId)
                    . ' AND ' . $markerSetTable . '.oxid IS NOT NULL';
            }

            $addQuery = ' FROM ' . $relationTable . ' JOIN ' . $markerSetTable
                . ' ON ' . $sJoin . ' WHERE ' . $relationTable . '.map_id=' . $db->quote($objectId)
                . ' AND ' . $markerSetTable . '.oxid IS NOT NULL ' . $subSelect;
        }

        return $addQuery;
    }

    /**
     * @throws \OxidEsales\Eshop\Core\Exception\DatabaseConnectionException
     * @throws \OxidEsales\Eshop\Core\Exception\DatabaseErrorException
     */
    public function addItem()
    {
        $myConfig = $this->getConfig();

        $markerSets = $this->_getActionIds('ct_shoplocator_map_marker_set.oxid');
        $mapId = $myConfig->getRequestParameter('synchoxid');
        $sShopID = $myConfig->getShopId();

        DatabaseProvider::getDb()->startTransaction();
        try {
            $database = DatabaseProvider::getDb(DatabaseProvider::FETCH_MODE_ASSOC);
            $markerSetTable = $this->_getViewName('ct_shoplocator_map_marker_set');

            if (Registry::get(Request::class)->getRequestEscapedParameter('all')) {
                $markerSets = $this->_getAll($this->_addFilter('select ' . $markerSetTable . '.oxid ' . $this->_getQuery()));
            }

            if (is_array($markerSets)) {
                $relationTable = $this->_getViewName('ct_shoplocator_map_has_marker_set');

                $oNew = oxNew(MarkerSet2Map::class);

                $myUtilsObject = Registry::getUtilsObject();
                $oActShop = $myConfig->getActiveShop();

                $affectedIds = '';
                foreach ($markerSets as $addId) {
                    $selectQuery = 'select 1 from ' . $relationTable . ' as ct_shoplocator_map_has_marker_set where ct_shoplocator_map_has_marker_set.map_id= '
                        . $database->quote($mapId) . ' and ct_shoplocator_map_has_marker_set.marker_set_id = ' . $database->quote($addId);
                    if ($database->getOne($selectQuery, false, false)) {
                        continue;
                    }

                    $oNew->ct_shoplocator_map_has_marker_set__oxid = new Field($oNew->setId(md5($addId . $mapId . $sShopID)));
                    $oNew->ct_shoplocator_map_has_marker_set__marker_set_id = new Field($addId);
                    $oNew->ct_shoplocator_map_has_marker_set__map_id = new Field($mapId);

                    $oNew->save();

                    if ($affectedIds) {
                        $affectedIds .= ',';
                    }
                    $affectedIds .= $database->quote($addId);
                }
            }
        } catch (Exception $exception) {
            DatabaseProvider::getDb()->rollbackTransaction();
            throw $exception;
        }

        DatabaseProvider::getDb()->commitTransaction();
    }

    /**
     * @throws \OxidEsales\Eshop\Core\Exception\DatabaseConnectionException
     */
    public function removeItem()
    {
        $items = $this->_getActionIds('ct_shoplocator_map_marker_set.oxid');
        $sCategoryID = Registry::get(Request::class)->getRequestEscapedParameter('oxid');

        if (Registry::get(Request::class)->getRequestEscapedParameter('all')) {
            $itemTable = $this->_getViewName('ct_shoplocator_map_marker_set');
            $items = $this->_getAll($this->_addFilter('select ' . $itemTable . '.oxid ' . $this->_getQuery()));
        }

        if (is_array($items) && count($items)) {
            $this->removeRelationItems($items, $sCategoryID);
        }
    }

    /**
     * @param $items
     * @param $mapId
     * @throws \OxidEsales\Eshop\Core\Exception\DatabaseConnectionException
     * @throws \OxidEsales\Eshop\Core\Exception\DatabaseErrorException
     */
    protected function removeRelationItems($items, $mapId)
    {
        $db = DatabaseProvider::getDb(DatabaseProvider::FETCH_MODE_ASSOC);
        $prodIds = implode(', ', $db->quoteArray($items));

        $delete = 'delete from ct_shoplocator_map_has_marker_set ';

        $whereProductIdIn = ' marker_set_id in ( ' . $prodIds . ')';
        $where = 'where map_id=' . $db->quote($mapId) . ' AND ' . $whereProductIdIn;

        $sQ = $delete . $where;
        $db->execute($sQ);
    }
}