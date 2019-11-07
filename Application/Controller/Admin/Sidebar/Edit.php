<?php

namespace ct\shoplocator\Application\Controller\Admin\Sidebar;

use ct\shoplocator\Application\Controller\Admin\Edit as AdminDetailsController;
use OxidEsales\Eshop\Core\UtilsObject;
use ct\shoplocator\Application\Model\Sidebar;

$parentClass = UtilsObject::getInstance()->getClassName(AdminDetailsController::class);
class_alias($parentClass,
    'ct\\shoplocator\\Application\\Controller\\Admin\\Sidebar\\Edit_extend_AdminDetailsController');

/**
 * Class Edit
 * @package ct\shoplocator\Application\Controller\Admin\Sidebar
 * @mixin \OxidEsales\Eshop\Application\Controller\Admin\AdminDetailsController
 */
class Edit extends Edit_extend_AdminDetailsController
{

    /**
     * @var string
     */
    protected $_sThisTemplate = 'sidebar/ct_edit.tpl';

    /**
     * @var string
     */
    protected $editObject = Sidebar::class;

    /**
     * @var array
     */
    protected $checkBoxParams = array(
        'ct_shoplocator_map_sidebar__visible',
        'ct_shoplocator_map_sidebar__select_section_visible',
        'ct_shoplocator_map_sidebar__search_box_visible',
        'ct_shoplocator_map_sidebar__search_box_enable',
        'ct_shoplocator_map_sidebar__results_visible_in_first_page',
    );

    /**
     * @return array
     */
    public function getSupportedUnits()
    {
        return array('km', 'mile');
    }

    /**
     * @return array
     */
    public function getSupportedPlaces()
    {
        return array('cities', 'regions');
    }
}