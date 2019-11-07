<?php

namespace ct\shoplocator\Application\Model;

use OxidEsales\Eshop\Core\Model\BaseModel;
use OxidEsales\Eshop\Core\UtilsObject;

$parentClass = UtilsObject::getInstance()->getClassName(BaseModel::class);
class_alias($parentClass, 'ct\\shoplocator\\Application\\Model\\MarkerSet2Map_extend_BaseModel');

/**
 * Class MarkerSet
 * @package ct\shoplocator\Application\Model
 * @mixin \OxidEsales\Eshop\Core\Model\BaseModel
 */
class MarkerSet2Map extends MarkerSet2Map_extend_BaseModel
{

    /**
     * @var string
     */
    protected $_sClassName = self::class;
    /**
     * @var string
     */
    protected $_sCoreTable = 'ct_shoplocator_map_has_marker_set';

    /**
     * MarkerSet2Map constructor.
     */
    public function __construct()
    {
        parent::__construct();
        $this->init($this->_sCoreTable);
    }

}