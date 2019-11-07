<?php

namespace ct\shoplocator\Application\Model;

use OxidEsales\Eshop\Core\Model\BaseModel;
use OxidEsales\Eshop\Core\Registry;
use OxidEsales\Eshop\Core\UtilsObject;

$parentClass = UtilsObject::getInstance()->getClassName(BaseModel::class);
class_alias($parentClass, 'ct\\shoplocator\\Application\\Model\\Cluster_extend_BaseModel');

/**
 * Class Cluster
 * @package ct\shoplocator\Application\Model
 * @mixin \OxidEsales\Eshop\Core\Model\BaseModel
 */
class Cluster extends Cluster_extend_BaseModel
{

    /**
     * @var string
     */
    protected $_sClassName = self::class;
    /**
     * @var string
     */
    protected $_sCoreTable = 'ct_shoplocator_map_cluster';

    /**
     * Cluster constructor.
     */
    public function __construct()
    {
        parent::__construct();
        $this->init($this->_sCoreTable);
    }

    /**
     * @param $type
     * @return bool|string
     */
    public function getClusterIcon($type)
    {
        switch ($type) {
            case 'small':
                if ($this->ct_shoplocator_map_cluster__style_small_icon->value != '' && $this->ct_shoplocator_map_cluster__style_small_icon->value !== null) {
                    return Registry::getConfig()->getPictureUrl('master/ctshoplocator/' . $this->ct_shoplocator_map_cluster__style_small_icon->value);
                }
                return false;
            case 'medium':
                if ($this->ct_shoplocator_map_cluster__style_medium_icon->value != '' && $this->ct_shoplocator_map_cluster__style_medium_icon->value !== null) {
                    return Registry::getConfig()->getPictureUrl('master/ctshoplocator/' . $this->ct_shoplocator_map_cluster__style_medium_icon->value);
                }
                return false;
            case 'big':
                if ($this->ct_shoplocator_map_cluster__style_big_icon->value != '' && $this->ct_shoplocator_map_cluster__style_big_icon->value !== null) {
                    return Registry::getConfig()->getPictureUrl('master/ctshoplocator/' . $this->ct_shoplocator_map_cluster__style_big_icon->value);
                }
                return false;
            default:
                return false;
        }
    }
}