<?php

namespace ct\shoplocator\Application\Model;

use OxidEsales\Eshop\Core\Model\BaseModel;
use OxidEsales\Eshop\Core\Registry;
use OxidEsales\Eshop\Core\UtilsObject;

$parentClass = UtilsObject::getInstance()->getClassName(BaseModel::class);
class_alias($parentClass, 'ct\\shoplocator\\Application\\Model\\InfoBubble_extend_BaseModel');

/**
 * Class InfoBubble
 * @package ct\shoplocator\Application\Model
 * @mixin \OxidEsales\Eshop\Core\Model\BaseModel
 */
class InfoBubble extends InfoBubble_extend_BaseModel
{

    /**
     * @var string
     */
    protected $_sClassName = self::class;
    /**
     * @var string
     */
    protected $_sCoreTable = 'ct_shoplocator_map_info_bubble';

    /**
     * InfoBubble constructor.
     */
    public function __construct()
    {
        parent::__construct();
        $this->init($this->_sCoreTable);
    }

    /**
     * @return string
     */
    public function getCloseButton()
    {
        if ($this->ct_shoplocator_map_info_bubble__close_button_icon->value != '' && $this->ct_shoplocator_map_info_bubble__close_button_icon->value !== null) {
            return Registry::getConfig()->getPictureUrl('master/ctshoplocator/' . $this->ct_shoplocator_map_info_bubble__close_button_icon->value);
        }

        return Registry::getConfig()->getShopUrl() . '/modules/ct/shoplocator/out/src/style/closeButton.svg';
    }
}