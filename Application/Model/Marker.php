<?php

namespace ct\shoplocator\Application\Model;

use OxidEsales\Eshop\Core\Model\BaseModel;
use OxidEsales\Eshop\Core\UtilsObject;

$parentClass = UtilsObject::getInstance()->getClassName(BaseModel::class);
class_alias($parentClass, 'ct\\shoplocator\\Application\\Model\\Marker_extend_BaseModel');

/**
 * Class Marker
 * @package ct\shoplocator\Application\Model
 * @mixin \OxidEsales\Eshop\Core\Model\BaseModel
 */
class Marker extends Marker_extend_BaseModel
{

    /**
     * @var string
     */
    protected $_sClassName = self::class;
    /**
     * @var string
     */
    protected $_sCoreTable = 'ct_shoplocator_map_marker';

    /**
     * Marker constructor.
     */
    public function __construct()
    {
        parent::__construct();
        $this->init($this->_sCoreTable);
    }

}