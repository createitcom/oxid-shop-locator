<?php

namespace ct\shoplocator\Application\Model;

use OxidEsales\Eshop\Core\DatabaseProvider;
use OxidEsales\Eshop\Core\Model\BaseModel;
use OxidEsales\Eshop\Core\Registry;
use OxidEsales\Eshop\Core\UtilsObject;

$parentClass = UtilsObject::getInstance()->getClassName(BaseModel::class);
class_alias($parentClass, 'ct\\shoplocator\\Application\\Model\\MarkerSet_extend_BaseModel');

/**
 * Class MarkerSet
 * @package ct\shoplocator\Application\Model
 * @mixin \OxidEsales\Eshop\Core\Model\BaseModel
 */
class MarkerSet extends MarkerSet_extend_BaseModel
{

    /**
     * @var string
     */
    protected $_sClassName = self::class;
    /**
     * @var string
     */
    protected $_sCoreTable = 'ct_shoplocator_map_marker_set';
    /**
     * @var array
     */
    protected $markers = array();

    /**
     * MarkerSet constructor.
     */
    public function __construct()
    {
        parent::__construct();
        $this->init($this->_sCoreTable);
    }

    /**
     * @return array
     * @throws \OxidEsales\Eshop\Core\Exception\DatabaseConnectionException
     * @throws \OxidEsales\Eshop\Core\Exception\DatabaseErrorException
     */
    public function getMarkers()
    {
        if (count($this->markers) === 0) {
            $db = DatabaseProvider::getDb(DatabaseProvider::FETCH_MODE_ASSOC);
            $markerIds = $db->getCol('SELECT marker_id FROM ct_shoplocator_map_marker_set_has_marker WHERE marker_set_id=?',
                array($this->getId()));
            if ($markerIds) {
                $marker = oxNew(Marker::class);
                foreach ($markerIds as $entry) {
                    $clone = clone $marker;
                    $clone->load($entry);
                    if ($clone->isLoaded()) {
                        $this->markers[$clone->getId()] = $clone;
                    }
                }
            }
        }

        return $this->markers;
    }

    /**
     * @return string
     */
    public function getLink()
    {
        return Registry::getConfig()->getShopUrl() . 'index.php?cl=ct_shoplocator_marker_set&markerSetId=' . $this->getId();
    }
}