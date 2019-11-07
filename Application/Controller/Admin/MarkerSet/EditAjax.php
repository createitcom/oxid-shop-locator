<?php

namespace ct\shoplocator\Application\Controller\Admin\MarkerSet;

use Exception;
use \OxidEsales\Eshop\Application\Controller\Admin\ListComponentAjax;
use \OxidEsales\Eshop\Core\UtilsObject;
use \OxidEsales\Eshop\Core\Registry;
use \OxidEsales\Eshop\Core\Request;
use \OxidEsales\Eshop\Core\DatabaseProvider;
use \OxidEsales\Eshop\Core\Field;
use \ct\shoplocator\Application\Model\Marker2MarkerSet;


$parentClass = UtilsObject::getInstance()->getClassName(ListComponentAjax::class);
class_alias($parentClass,
    'ct\\shoplocator\\Application\\Controller\\Admin\\MarkerSet\\EditAjax_extend_ListComponentAjax');

/**
 * Class EditAjax
 * @package ct\shoplocator\Application\Controller\Admin\MarkerSet
 */
class EditAjax extends EditAjax_extend_ListComponentAjax
{

    protected $_blAllowExtColumns = true;

    protected $_aColumns =
        array(
            'container1' => array(
                array('title', 'ct_shoplocator_map_marker', 1, 0, 0),
                array('lat', 'ct_shoplocator_map_marker', 1, 0, 0),
                array('lng', 'ct_shoplocator_map_marker', 1, 0, 0),
                array('street', 'ct_shoplocator_map_marker', 1, 0, 0),
                array('zip', 'ct_shoplocator_map_marker', 1, 0, 0),
                array('city', 'ct_shoplocator_map_marker', 1, 0, 0),
                array('oxid', 'ct_shoplocator_map_marker', 0, 0, 1),
            ),
            'container2' => array(
                array('title', 'ct_shoplocator_map_marker', 1, 0, 0),
                array('lat', 'ct_shoplocator_map_marker', 1, 0, 0),
                array('lng', 'ct_shoplocator_map_marker', 1, 0, 0),
                array('street', 'ct_shoplocator_map_marker', 1, 0, 0),
                array('zip', 'ct_shoplocator_map_marker', 1, 0, 0),
                array('city', 'ct_shoplocator_map_marker', 1, 0, 0),
                array('oxid', 'ct_shoplocator_map_marker', 0, 0, 1),
            ),
        );


    protected function _getQuery()
    {
        $myConfig = $this->getConfig();

        $markerTable = $this->_getViewName('ct_shoplocator_map_marker');
        $relationTable = $this->_getViewName('ct_shoplocator_map_marker_set_has_marker');

        $objectId = Registry::get(Request::class)->getRequestEscapedParameter('oxid');
        $synchObjectId = Registry::get(Request::class)->getRequestEscapedParameter('synchoxid');
        $db = DatabaseProvider::getDb(DatabaseProvider::FETCH_MODE_ASSOC);

        $sShopID = $myConfig->getShopId();

        if (!$objectId && $synchObjectId) {
            $addQuery = ' from ' . $markerTable . ' where 1 ';
        } else {
            $sJoin = $markerTable . '.oxid=' . $relationTable . '.marker_id';
            $subSelect = '';
            if ($synchObjectId && $objectId != $synchObjectId) {
                $subSelect = ' AND ' . $markerTable . 'oxid NOT IN ('
                    . ' SELECT ' . $markerTable . '.oxid FROM ' . $relationTable . ' LEFT JOIN ' . $markerTable
                    . ' ON ' . $sJoin . ' WHERE ' . $relationTable . '.marker_set_id=' . $db->quote($synchObjectId)
                    . ' AND ' . $markerTable . '.oxid IS NOT NULL';
            }

            $addQuery = ' FROM ' . $relationTable . ' JOIN ' . $markerTable
                . ' ON ' . $sJoin . ' WHERE ' . $relationTable . '.marker_set_id=' . $db->quote($objectId)
                . ' AND ' . $markerTable . '.oxid IS NOT NULL ' . $subSelect;
        }

        return $addQuery;
    }

    public function addItem()
    {
        $myConfig = $this->getConfig();

        $markers = $this->_getActionIds('ct_shoplocator_map_marker.oxid');
        $markerSetId = $myConfig->getRequestParameter('synchoxid');
        $sShopID = $myConfig->getShopId();

        DatabaseProvider::getDb()->startTransaction();
        try {
            $database = DatabaseProvider::getDb(DatabaseProvider::FETCH_MODE_ASSOC);
            $markerTable = $this->_getViewName('ct_shoplocator_map_marker');

            if (Registry::get(Request::class)->getRequestEscapedParameter('all')) {
                $markers = $this->_getAll($this->_addFilter('select ' . $markerTable . '.oxid ' . $this->_getQuery()));
            }

            if (is_array($markers)) {
                $relationTable = $this->_getViewName('ct_shoplocator_map_marker_set_has_marker');

                $oNew = oxNew(Marker2MarkerSet::class);

                $myUtilsObject = Registry::getUtilsObject();
                $oActShop = $myConfig->getActiveShop();

                $affectedIds = '';
                foreach ($markers as $addId) {
                    $selectQuery = 'select 1 from ' . $relationTable . ' as ct_shoplocator_map_marker_set_has_marker where ct_shoplocator_map_marker_set_has_marker.marker_set_id= '
                        . $database->quote($markerSetId) . ' and ct_shoplocator_map_marker_set_has_marker.marker_id = ' . $database->quote($addId);
                    if ($database->getOne($selectQuery, false, false)) {
                        continue;
                    }

                    $oNew->ct_shoplocator_map_marker_set_has_marker__oxid = new Field($oNew->setId(md5($addId . $markerSetId . $sShopID)));
                    $oNew->ct_shoplocator_map_marker_set_has_marker__marker_id = new Field($addId);
                    $oNew->ct_shoplocator_map_marker_set_has_marker__marker_set_id = new Field($markerSetId);

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

    public function removeItem()
    {
        $aArticles = $this->_getActionIds('ct_shoplocator_map_marker.oxid');
        $sCategoryID = Registry::get(Request::class)->getRequestEscapedParameter('oxid');

        if (Registry::get(Request::class)->getRequestEscapedParameter('all')) {
            $sArticleTable = $this->_getViewName('ct_shoplocator_map_marker');
            $aArticles = $this->_getAll($this->_addFilter('select ' . $sArticleTable . '.oxid ' . $this->_getQuery()));
        }

        if (is_array($aArticles) && count($aArticles)) {
            $this->removeRelationItems($aArticles, $sCategoryID);
        }
    }

    protected function removeRelationItems($articles, $markerSetId)
    {
        $db = DatabaseProvider::getDb(DatabaseProvider::FETCH_MODE_ASSOC);
        $prodIds = implode(', ', $db->quoteArray($articles));

        $delete = 'delete from ct_shoplocator_map_marker_set_has_marker ';

        $whereProductIdIn = ' marker_id in ( ' . $prodIds . ')';
        $where = ' where marker_set_id=' . $db->quote($markerSetId) . ' AND ' . $whereProductIdIn;

        $sQ = $delete . $where;
        $db->execute($sQ);
    }
}