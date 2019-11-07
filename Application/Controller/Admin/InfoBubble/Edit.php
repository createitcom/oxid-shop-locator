<?php

namespace ct\shoplocator\Application\Controller\Admin\InfoBubble;

use ct\shoplocator\Core\ShopLocatorAdminFileHelper;
use ct\shoplocator\Application\Controller\Admin\Edit as AdminDetailsController;
use OxidEsales\Eshop\Core\UtilsObject;
use OxidEsales\Eshop\Core\Registry;
use ct\shoplocator\Application\Model\InfoBubble;

$parentClass = UtilsObject::getInstance()->getClassName(AdminDetailsController::class);
class_alias($parentClass,
    'ct\\shoplocator\\Application\\Controller\\Admin\\InfoBubble\\Edit_extend_AdminDetailsController');

/**
 * Class Edit
 * @package ct\shoplocator\Application\Controller\Admin\InfoBubble
 */
class Edit extends Edit_extend_AdminDetailsController
{

    /**
     * @var array
     */
    protected $checkBoxParams = array(
        'ct_shoplocator_map_info_bubble__visible',
        'ct_shoplocator_map_info_bubble__disable_auto_pan',
        'ct_shoplocator_map_info_bubble__close_button_hide',
        'ct_shoplocator_map_info_bubble__get_directions_button_enable',
        'ct_shoplocator_map_info_bubble__get_directions_button_use_geo',
    );

    /**
     * @var string
     */
    protected $_sThisTemplate = 'info_bubble/ct_edit.tpl';

    /**
     * @var string
     */
    protected $editObject = InfoBubble::class;

    /**
     * @param $params
     * @return mixed
     */
    protected function preSave($params)
    {
        $params = parent::preSave($params);
        $editObject = oxNew($this->editObject);
        $editObject->load($params['ct_shoplocator_map_info_bubble__oxid']);
        Registry::get(ShopLocatorAdminFileHelper::class)
            ->handleImages(
                $params,
                'ct_shoplocator_map_info_bubble__close_button_icon',
                $editObject
            );

        return $params;
    }
}