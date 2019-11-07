<?php
$sMetadataVersion = '2.0';

$aModule = array(
    'id' => 'ctshoplocator',
    'version' => '1.0.0',
    'title' => 'CT ShopLocator',
    'description' =>
        array(
            'de' => 'Modul für die ShopLocator by CreateIT',
            'en' => 'Shop Locator Module for OXID by CreateIT',
        ),
    'author' => 'CreateIT',
    'thumbnail' => 'createit.png',
    'url' => 'https://www.createit.com/',
    'email' => 'projects@createit.com',
    'extend' =>
        array(
            \OxidEsales\Eshop\Core\ViewConfig::class => \ct\shoplocator\OxidEsales\Core\ViewConfig::class,
        ),
    'controllers' =>
        array(
            'ct_shoplocator_admin_cluster_edit' => \ct\shoplocator\Application\Controller\Admin\Cluster\Edit::class,
            'ct_shoplocator_admin_cluster_frame' => \ct\shoplocator\Application\Controller\Admin\Cluster\Frame::class,
            'ct_shoplocator_admin_cluster_list_controller' => \ct\shoplocator\Application\Controller\Admin\Cluster\ListController::class,
            'ct_shoplocator_admin_edit' => \ct\shoplocator\Application\Controller\Admin\Edit::class,
            'ct_shoplocator_admin_info_bubble_edit' => \ct\shoplocator\Application\Controller\Admin\InfoBubble\Edit::class,
            'ct_shoplocator_admin_info_bubble_frame' => \ct\shoplocator\Application\Controller\Admin\InfoBubble\Frame::class,
            'ct_shoplocator_admin_info_bubble_list_controller' => \ct\shoplocator\Application\Controller\Admin\InfoBubble\ListController::class,
            'ct_shoplocator_admin_map_edit' => \ct\shoplocator\Application\Controller\Admin\Map\Edit::class,
            'ct_shoplocator_admin_map_edit_ajax' => \ct\shoplocator\Application\Controller\Admin\Map\EditAjax::class,
            'ct_shoplocator_admin_map_frame' => \ct\shoplocator\Application\Controller\Admin\Map\Frame::class,
            'ct_shoplocator_admin_map_list_controller' => \ct\shoplocator\Application\Controller\Admin\Map\ListController::class,
            'ct_shoplocator_admin_marker_edit' => \ct\shoplocator\Application\Controller\Admin\Marker\Edit::class,
            'ct_shoplocator_admin_marker_frame' => \ct\shoplocator\Application\Controller\Admin\Marker\Frame::class,
            'ct_shoplocator_admin_marker_list_controller' => \ct\shoplocator\Application\Controller\Admin\Marker\ListController::class,
            'ct_shoplocator_admin_marker_set_edit' => \ct\shoplocator\Application\Controller\Admin\MarkerSet\Edit::class,
            'ct_shoplocator_admin_marker_set_edit_ajax' => \ct\shoplocator\Application\Controller\Admin\MarkerSet\EditAjax::class,
            'ct_shoplocator_admin_marker_set_frame' => \ct\shoplocator\Application\Controller\Admin\MarkerSet\Frame::class,
            'ct_shoplocator_admin_marker_set_list_controller' => \ct\shoplocator\Application\Controller\Admin\MarkerSet\ListController::class,
            'ct_shoplocator_admin_sidebar_edit' => \ct\shoplocator\Application\Controller\Admin\Sidebar\Edit::class,
            'ct_shoplocator_admin_sidebar_frame' => \ct\shoplocator\Application\Controller\Admin\Sidebar\Frame::class,
            'ct_shoplocator_admin_sidebar_list_controller' => \ct\shoplocator\Application\Controller\Admin\Sidebar\ListController::class,
            'ct_shoplocator_marker_set' => \ct\shoplocator\Application\Controller\MarkerSet::class,
            'ct_shoplocator_map' => \ct\shoplocator\Application\Controller\Map::class,
            'ct_shoplocator_map_widget' => \ct\shoplocator\Application\Component\Widget\Map::class,
        ),
    'templates' =>
        array(
            'cluster/ct_edit.tpl' => 'ct/shoplocator/Application/views/admin/tpl/cluster/ct_edit.tpl',
            'cluster/ct_list.tpl' => 'ct/shoplocator/Application/views/admin/tpl/cluster/ct_list.tpl',
            'ct_shoplocator_admin_shop_config_options.tpl' => 'ct/shoplocator/Application/views/admin/tpl/ct_shoplocator_admin_shop_config_options.tpl',
            'ct_shoplocator_frame.tpl' => 'ct/shoplocator/Application/views/admin/tpl/ct_shoplocator_frame.tpl',
            'ct_shoplocator_js.tpl' => 'ct/shoplocator/Application/views/tpl/ct_shoplocator_js.tpl',
            'ct_shoplocator_map.tpl' => 'ct/shoplocator/Application/views/tpl/ct_shoplocator_map.tpl',
            'info_bubble/ct_edit.tpl' => 'ct/shoplocator/Application/views/admin/tpl/info_bubble/ct_edit.tpl',
            'info_bubble/ct_list.tpl' => 'ct/shoplocator/Application/views/admin/tpl/info_bubble/ct_list.tpl',
            'map/ct_edit.tpl' => 'ct/shoplocator/Application/views/admin/tpl/map/ct_edit.tpl',
            'map/ct_list.tpl' => 'ct/shoplocator/Application/views/admin/tpl/map/ct_list.tpl',
            'map/popups/ct_marker_set_ajax.tpl' => 'ct/shoplocator/Application/views/admin/tpl/map/popups/ct_marker_set_ajax.tpl',
            'marker/ct_edit.tpl' => 'ct/shoplocator/Application/views/admin/tpl/marker/ct_edit.tpl',
            'marker/ct_list.tpl' => 'ct/shoplocator/Application/views/admin/tpl/marker/ct_list.tpl',
            'marker_set/ct_edit.tpl' => 'ct/shoplocator/Application/views/admin/tpl/marker_set/ct_edit.tpl',
            'marker_set/ct_list.tpl' => 'ct/shoplocator/Application/views/admin/tpl/marker_set/ct_list.tpl',
            'marker_set/popups/ct_marker_ajax.tpl' => 'ct/shoplocator/Application/views/admin/tpl/marker_set/popups/ct_marker_ajax.tpl',
            'sidebar/ct_edit.tpl' => 'ct/shoplocator/Application/views/admin/tpl/sidebar/ct_edit.tpl',
            'sidebar/ct_list.tpl' => 'ct/shoplocator/Application/views/admin/tpl/sidebar/ct_list.tpl',
            'js/ct_shoplocator_js.tpl' => 'ct/shoplocator/Application/views/tpl/js/ct_shoplocator_js.tpl',
            'css/ct_shoplocator_plugin_style.tpl' => 'ct/shoplocator/Application/views/tpl/css/ct_shoplocator_plugin_style.tpl',
            'page/ct_shoplocator_map.tpl' => 'ct/shoplocator/Application/views/tpl/page/ct_shoplocator_map.tpl',
            'widget/ct_shoplocator_map.tpl' => 'ct/shoplocator/Application/views/tpl/widget/ct_shoplocator_map.tpl',
        ),
    'smartyPluginDirectories' =>
        array(),
    'blocks' =>
        array(
            0 =>
                array(
                    'template' => 'shop_config.tpl',
                    'block' => 'admin_shop_config_options',
                    'file' => '/Application/views/admin/tpl/ct_shoplocator_admin_shop_config_options.tpl',
                ),
            1 =>
                array(
                    'template' => 'bottomnaviitem.tpl',
                    'block' => 'admin_bottomnaviitem',
                    'file' => '/Application/views/admin/tpl/ct_shoplocator_bottomnaviitem.tpl',
                ),
        ),
    'events' =>
        array(
            'onActivate' => '\\ct\\shoplocator\\Core\\ShopLocatorInstaller::onActivate',
        ),
);