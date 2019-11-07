<?php

namespace ct\shoplocator\Application\Controller\Admin\Map;

use ct\shoplocator\Application\Controller\Admin\Edit as AdminDetailsController;
use OxidEsales\Eshop\Core\DatabaseProvider;
use OxidEsales\Eshop\Core\UtilsObject;
use OxidEsales\Eshop\Core\Registry;
use ct\shoplocator\Application\Model\Map;
use ct\shoplocator\Core\ShopLocatorAdminFileHelper;

$parentClass = UtilsObject::getInstance()->getClassName(AdminDetailsController::class);
class_alias($parentClass, 'ct\\shoplocator\\Application\\Controller\\Admin\\Map\\Edit_extend_AdminDetailsController');

/**
 * Class Edit
 * @package ct\shoplocator\Application\Controller\Admin\Map
 */
class Edit extends Edit_extend_AdminDetailsController
{

    /**
     * @var array
     */
    protected $checkBoxParams = array(
        'ct_shoplocator_map__preloader',
        'ct_shoplocator_map__disable_default_ui',
        'ct_shoplocator_map__draggable',
        'ct_shoplocator_map__disable_double_click_zoom',
        'ct_shoplocator_map__scroll_wheel_zoom',
        'ct_shoplocator_map__all_markers_in_view',
    );

    /**
     * @var string
     */
    protected $_sThisTemplate = 'map/ct_edit.tpl';

    /**
     * @var string
     */
    protected $editObject = Map::class;

    /**
     * @var string
     */
    protected $ajaxClass = EditAjax::class;

    /**
     * @var string
     */
    protected $ajaxTemplate = 'map/popups/ct_marker_set_ajax.tpl';

    /**
     * @param $params
     * @return mixed
     */
    protected function preSave($params)
    {
        $params = parent::preSave($params);
        $editObject = oxNew($this->editObject);
        $editObject->load($params['ct_shoplocator_map__oxid']);
        Registry::get(ShopLocatorAdminFileHelper::class)
            ->handleImages(
                $params,
                'ct_shoplocator_map__markers_icon',
                $editObject
            );
        return $params;
    }

    /**
     * @param $table
     * @return array
     * @throws \OxidEsales\Eshop\Core\Exception\DatabaseConnectionException
     * @throws \OxidEsales\Eshop\Core\Exception\DatabaseErrorException
     */
    public function getOptions($table)
    {
        $db = DatabaseProvider::getDb(DatabaseProvider::FETCH_MODE_ASSOC);
        return $db->getAll('SELECT oxid, title FROM ' . $table);

    }

    /**
     * @return array
     */
    public function geAvailableStyles()
    {
        return array(
            'lollipop',
            'cosmic',
            'pop',
            'retro',
            'bee',
            'dark',
            'metro',
            'modern',
            'material',
            'minimalistic',
            'purple',
            'diamond',
            'selective',
        );
    }

    /**
     * @return array
     */
    public function getMapType()
    {
        return array(
            'ROADMAP',
            'SATELLITE',
            'HYBRID',
            'TERRAIN',
        );
    }
}