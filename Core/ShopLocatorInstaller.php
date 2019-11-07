<?php

namespace ct\shoplocator\Core;

use OxidEsales\Eshop\Application\Controller\Admin\ShopConfiguration;
use OxidEsales\Eshop\Core\DatabaseProvider;
use OxidEsales\Eshop\Core\DbMetaDataHandler;
use OxidEsales\Eshop\Core\Registry;
use OxidEsales\Eshop\Core\Database\Adapter\Doctrine\Database;

/**
 * Class ShopLocatorInstaller
 * @package ct\shoplocator\Core
 */
class ShopLocatorInstaller extends ShopConfiguration
{

    /**
     * @var
     */
    protected $db;
    /**
     * @var
     */
    protected $dbName;
    /**
     * @var string
     */
    protected $moduleRelativePath = 'modules//ct/shoplocator';
    /**
     * @var null
     */
    static private $instance = null;

    /**
     * @return ShopLocatorInstaller|null
     * @throws \OxidEsales\Eshop\Core\Exception\DatabaseConnectionException
     */
    public function getInstance()
    {
        if (!self::$instance) {
            self::$instance = new ShopLocatorInstaller();
            /** @var Database db */
            self::$instance->db = DatabaseProvider::getDb(DatabaseProvider::FETCH_MODE_ASSOC);
            self::$instance->dbName = Registry::getConfig()->getConfigParam('dbName');
            self::$instance->modulePath = Registry::getConfig()->getConfigParam('sShopDir') . self::$instance->moduleRelativePath;

        }
        return self::$instance;
    }

    /**
     * @throws \OxidEsales\Eshop\Core\Exception\DatabaseConnectionException
     */
    public static function onActivate()
    {
        $oMetaData = oxNew(DbMetaDataHandler::class);
        $oMetaData->updateViews();

        $instance = self::getInstance();

        $instance->createDbTables();
    }


    /**
     *
     */
    protected function createDbTables()
    {
        $tables = array(
            'ct_shoplocator_map' =>
                'CREATE TABLE IF NOT EXISTS ct_shoplocator_map (
                    oxid CHAR(32) COLLATE latin1_general_ci NOT NULL,
                    title VARCHAR(255) NOT NULL DEFAULT \'\' COMMENT \'Title for the map\',
                    plugin_style VARCHAR(255) NULL DEFAULT NULL COMMENT \'Add style class to element we initialize script.\',
                    pagination_style TINYINT(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT \'Change pagination style, value 1 or 2.\',
                    preloader TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT \'Enable/Disable preloader to plugin body\',
                    markers_icon varchar(255) NULL DEFAULT NULL COMMENT \'Add path to marker image.\',
                    map_type VARCHAR(255) NULL DEFAULT NULL COMMENT \'Type of the map, MapTypeId.ROADMAP, MapTypeId.SATELLITE, MapTypeId.HYBRID, MapTypeId.TERRAIN.\',
                    disable_default_ui TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT \'Disable default google maps UI\',
                    draggable TINYINT(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT \'Drag event to the map.\',
                    disable_double_click_zoom TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT \'Disable DB click zoom on the map.\',
                    zoom INT(11) NOT NULL DEFAULT 10 COMMENT \'Set zoom to map\',
                    max_zoom INT(11) NOT NULL DEFAULT 15 COMMENT \'Set max zoom to map\',
                    min_zoom INT(11) NOT NULL DEFAULT 15 COMMENT \'Set min zoom to map\',
                    scroll_wheel_zoom TINYINT(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT \'Zoom with mouse scrollwheel\',
                    all_markers_in_view TINYINT(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT \'Set viewport to fit all markers\',
                    map_style TEXT NULL DEFAULT NULL COMMENT \'Add custom map style. takes data Generated by https://mapstyle.withgoogle.com/\',
                    center TEXT NULL DEFAULT NULL COMMENT \'Center map on longitude and latitude.\',
                    cluster_id CHAR(32) NULL DEFAULT NULL,
                    info_bubble_id CHAR(32) NULL DEFAULT NULL,
                    sidebar_id CHAR(32) NULL DEFAULT NULL,
                    PRIMARY KEY (oxid),
                    INDEX (title),
                    INDEX (plugin_style),
                    INDEX (pagination_style),
                    INDEX (preloader),
                    INDEX (markers_icon),
                    INDEX (map_type),
                    INDEX (disable_default_ui),
                    INDEX (draggable),
                    INDEX (disable_double_click_zoom),
                    INDEX (zoom),
                    INDEX (max_zoom),
                    INDEX (min_zoom),
                    INDEX (scroll_wheel_zoom),
                    INDEX (all_markers_in_view),
                    INDEX (cluster_id),
                    INDEX (info_bubble_id),
                    INDEX (sidebar_id)
                )               
                    Engine = InnoDB
                    DEFAULT charset = utf8 comment =\'CreateIT Map for Shoplocator\';',
            'ct_shoplocator_map_has_marker_set' =>
                'CREATE TABLE IF NOT EXISTS ct_shoplocator_map_has_marker_set (
                    oxid CHAR(32) COLLATE latin1_general_ci NOT NULL,
                    map_id CHAR(32) COLLATE latin1_general_ci NOT NULL,
                    marker_set_id CHAR(32) COLLATE latin1_general_ci NOT NULL,
                    PRIMARY KEY (`OXID`),
                    INDEX (`map_id`),
                    INDEX (`marker_set_id`)
                )
                    Engine = InnoDB
                    DEFAULT charset = utf8 comment =\'CreateIT Map-To-MarkerSet for Shoplocator\';',
            'ct_shoplocator_map_cluster' =>
                'CREATE TABLE IF NOT EXISTS ct_shoplocator_map_cluster (
                    oxid CHAR(32) COLLATE latin1_general_ci NOT NULL,
                    title VARCHAR(255) NOT NULL DEFAULT \'\' COMMENT \'Title for cluster\',
                    enable TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT \'Enable/disable marker clustering\',
                    class VARCHAR(255) NULL COMMENT \'Add class to cluster for better CSS style.\',
                    grid_size INT(11) NOT NULL DEFAULT 50 COMMENT \'The grid size of a cluster in pixels. The grid is a square.\',
                    max_zoom INT(11) NOT NULL DEFAULT 14 COMMENT \'The grid size of a cluster in pixels. The grid is a square.\',
                    style_anchor_icon_x INT(11) NOT NULL DEFAULT 0 COMMENT \'The anchor position X of the cluster icon\',
                    style_anchor_icon_y INT(11) NOT NULL DEFAULT 0 COMMENT \'The anchor position Y of the cluster icon\',
                    style_anchor_text_x INT(11) NOT NULL DEFAULT 0 COMMENT \'The position X from the center of the cluster icon to where the text label is to be centered.\',
                    style_anchor_text_y INT(11) NOT NULL DEFAULT 0 COMMENT \'The position Y from the center of the cluster icon to where the text label is to be centered.\',
                    style_background_x INT(11) NOT NULL DEFAULT 0 COMMENT \'The position X of the cluster icon image within the image defined by url.\',
                    style_background_y INT(11) NOT NULL DEFAULT 0 COMMENT \'The position Y of the cluster icon image within the image defined by url.\',
                    style_font_family VARCHAR(255) NOT NULL DEFAULT \'Arial,sans-serif\' COMMENT \'Cluster font.\',
                    style_font_style VARCHAR(255) NOT NULL DEFAULT \'normal\' COMMENT \'Style of the font(inherit, italic, normal, oblique)\',
                    style_font_color VARCHAR(255) NOT NULL DEFAULT \'white\' COMMENT \'Color of the text.\',
                    style_font_weight VARCHAR(255) NOT NULL DEFAULT \'bold\' COMMENT \'Same as css value.\',
                    style_font_size INT(11) UNSIGNED NOT NULL DEFAULT 18 COMMENT \'Size of the text.\',
                    style_small_height INT(11) UNSIGNED NOT NULL DEFAULT 60 COMMENT \'Small cluster height\',
                    style_small_width INT(11) UNSIGNED NOT NULL DEFAULT 54 COMMENT \'Small cluster width\',
                    style_medium_height INT(11) UNSIGNED NOT NULL DEFAULT 60 COMMENT \'Medium cluster height\',
                    style_medium_width INT(11) UNSIGNED NOT NULL DEFAULT 54 COMMENT \'Medium cluster width\',
                    style_big_height INT(11) UNSIGNED NOT NULL DEFAULT 60 COMMENT \'Big cluster height\',
                    style_big_width INT(11) UNSIGNED NOT NULL DEFAULT 54 COMMENT \'Big cluster width\',
                    style_small_icon VARCHAR(255) NULL DEFAULT NULL COMMENT \'Path to icon for small cluster size\',
                    style_medium_icon VARCHAR(255) NULL DEFAULT NULL COMMENT \'Path to icon for medium cluster size\',
                    style_big_icon VARCHAR(255) NULL DEFAULT NULL COMMENT \'Path to icon for big cluster size\',
                    PRIMARY KEY (oxid),
                    INDEX (title),
                    INDEX (enable),
                    INDEX (class),
                    INDEX (grid_size),
                    INDEX (max_zoom),
                    INDEX (style_anchor_icon_x),
                    INDEX (style_anchor_icon_y),
                    INDEX (style_anchor_text_x),
                    INDEX (style_anchor_text_y),
                    INDEX (style_background_x),
                    INDEX (style_background_y),
                    INDEX (style_anchor_text_x),
                    INDEX (style_anchor_text_y),
                    INDEX (style_font_family),
                    INDEX (style_font_style),
                    INDEX (style_font_color),
                    INDEX (style_font_weight),
                    INDEX (style_font_size),
                    INDEX (style_small_height),
                    INDEX (style_small_width),
                    INDEX (style_medium_height),
                    INDEX (style_medium_width),
                    INDEX (style_big_height),
                    INDEX (style_big_width),
                    INDEX (style_small_icon),
                    INDEX (style_medium_icon),
                    INDEX (style_big_icon)
                )
                    Engine = InnoDB
                    DEFAULT charset = utf8 comment =\'CreateIT Cluster for Shoplocator\';',
            'ct_shoplocator_map_info_bubble' =>
                'CREATE TABLE IF NOT EXISTS ct_shoplocator_map_info_bubble (
                    oxid CHAR(32) COLLATE latin1_general_ci NOT NULL,
                    title VARCHAR(255) NOT NULL DEFAULT \'\' COMMENT \'Title for info bubble\',
                    visible TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT \'Enable/disable infoBubble(infoWindow)\',
                    padding INT(11) NOT NULL DEFAULT 0 COMMENT \'Add padding to infoBubble main container.\',
                    border_radius INT(11) NOT NULL DEFAULT 4 COMMENT \'Add border radius to infoBubble main container.\',
                    border_width INT(11) NOT NULL DEFAULT 0 COMMENT \'Add border width radius to infoBubble main container.\',
                    border_color VARCHAR(255) NOT NULL DEFAULT \'#fff\' COMMENT \'Add border color to infoBubble main container.\',
                    background_color VARCHAR(255) NOT NULL DEFAULT \'#fff\' COMMENT \'Add color to infoBubble main container.\',
                    shadow_style TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT \'Pick shadow style, value 0, 1 or 2.\',
                    min_height INT(11) NULL DEFAULT NULL COMMENT \'Add min height to infoBubble main container.\',
                    max_height INT(11) NULL DEFAULT 100 COMMENT \'Add max height to infoBubble main container.\',
                    min_width INT(11) NULL DEFAULT 200 COMMENT \'Add min width to infoBubble main container\',
                    max_width INT(11) NULL DEFAULT NULL COMMENT \'Add max width to infoBubble main container.\',
                    arrow_style TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT \'Change arrow style, value 0, 1, 2.\',
                    arrow_size INT(11) NOT NULL DEFAULT 10 COMMENT \'Size of arrow.\',
                    arrow_position INT(11) NOT NULL DEFAULT 50 COMMENT \'Position of arrow.\',
                    close_button_hide TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT \'Show/hide close button\',
                    close_button_icon VARCHAR(255) NULL DEFAULT NULL COMMENT \'Path to closeButton icon\',
                    offset_top INT(11) NOT NULL DEFAULT 2 COMMENT \'Top value of the close button\',
                    offset_right INT(11) NOT NULL DEFAULT 2 COMMENT \'Right value of the close button\',
                    disable_auto_pan TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT \'Enable/Disable auto pan to element\',
                    get_directions_button_enable TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT \'Enable/Disable directions to location\',
                    get_directions_button_name VARCHAR(255) NULL DEFAULT NULL COMMENT \'Name of directions button\',
                    get_directions_button_use_geo TINYINT(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT \'Directions by geolocation, if false directions are calculated by adding some location in searchbox\',
                    PRIMARY KEY (oxid),
                    INDEX (title),
                    INDEX (visible),
                    INDEX (padding),
                    INDEX (border_radius),
                    INDEX (border_width),
                    INDEX (border_color),
                    INDEX (background_color),
                    INDEX (shadow_style),
                    INDEX (min_height),
                    INDEX (max_height),
                    INDEX (min_width),
                    INDEX (max_width),
                    INDEX (arrow_style),
                    INDEX (arrow_size),
                    INDEX (arrow_position),
                    INDEX (close_button_hide),
                    INDEX (close_button_icon),
                    INDEX (offset_top),
                    INDEX (offset_right),
                    INDEX (disable_auto_pan),
                    INDEX (get_directions_button_enable),
                    INDEX (get_directions_button_name),
                    INDEX (get_directions_button_use_geo)
                )
                    Engine = InnoDB
                    DEFAULT charset = utf8 comment =\'CreateIT Info Bubble for Shoplocator\';',
            'ct_shoplocator_map_sidebar' =>
                'CREATE TABLE IF NOT EXISTS ct_shoplocator_map_sidebar (
                    oxid CHAR(32) COLLATE latin1_general_ci NOT NULL,
                    title VARCHAR(255) NOT NULL DEFAULT \'\' COMMENT \'Title for sidebar\',
                    visible TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT \'Enable/disable sidebar\',
                    units ENUM (\'km\',\'mile\') NOT NULL DEFAULT \'km\' COMMENT \'Here you can change units for displayed distance. We support km and miles\',
                    select_section_visible TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT \'Enable/disable json multiple files\',
                    search_box_visible TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT \'Enable/disable search box\',
                    search_box_find_place_by ENUM (\'cities\',\'regions\') NOT NULL COMMENT \'Search locations by cities or regions\',
                    search_box_filter_by_country CHAR(2) NULL DEFAULT NULL COMMENT \'Filter by country. To enable you need to change value for true. Country use ISO 3166-1 Alpha-2 country code\',
                    search_box_enable TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT \'Enable/disable search on displayed markers\',
                    search_box_search_radius INT(11) UNSIGNED NOT NULL DEFAULT 20 COMMENT \'Radius of the search in km\',
                    results_visible_in_first_page TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT \'Enable/disable marker buttons on first page\',
                    results_items_per_page INT(11) UNSIGNED NOT NULL DEFAULT 10 COMMENT \'Results items per page\',
                    results_current_page INT(11) UNSIGNED NOT NULL DEFAULT 10 COMMENT \'Active results page\',
                    results_pagination_items INT(11) UNSIGNED NOT NULL DEFAULT 10 COMMENT \'Pagination items per page\',
                    PRIMARY KEY (oxid),
                    INDEX (title),
                    INDEX (visible),
                    INDEX (units),
                    INDEX (select_section_visible),
                    INDEX (search_box_visible),
                    INDEX (search_box_find_place_by),
                    INDEX (search_box_filter_by_country),
                    INDEX (search_box_enable),
                    INDEX (search_box_search_radius),
                    INDEX (results_visible_in_first_page),
                    INDEX (results_items_per_page),
                    INDEX (results_current_page),
                    INDEX (results_pagination_items)
                )
                    Engine = InnoDB
                    DEFAULT charset = utf8 comment =\'CreateIT Sidebar for Shoplocator\';',
            'ct_shoplocator_map_marker_set' =>
                'CREATE TABLE IF NOT EXISTS ct_shoplocator_map_marker_set (
                    oxid CHAR(32) COLLATE latin1_general_ci NOT NULL,
                    title VARCHAR(255) NULL DEFAULT NULL COMMENT \'Marker Set Title\',
                    PRIMARY KEY (oxid),
                    INDEX (title)
                )
                    Engine = InnoDB
                    DEFAULT charset = utf8 comment =\'CreateIT Map-To-MarkerSet for Shoplocator\';',
            'ct_shoplocator_map_marker_set_has_marker' =>
                'CREATE TABLE IF NOT EXISTS ct_shoplocator_map_marker_set_has_marker (
                    oxid CHAR(32) COLLATE latin1_general_ci NOT NULL,
                    marker_set_id CHAR(32) COLLATE latin1_general_ci NOT NULL,
                    marker_id CHAR(32) COLLATE latin1_general_ci NOT NULL,
                    PRIMARY KEY (`OXID`),
                    INDEX (`marker_set_id`),
                    INDEX (`marker_id`)
                )
                    Engine = InnoDB
                    DEFAULT charset = utf8 comment =\'CreateIT MarkerSet-To-Marker for Shoplocator\';',
            'ct_shoplocator_map_marker' =>
                'CREATE TABLE IF NOT EXISTS ct_shoplocator_map_marker (
                    oxid CHAR(32) COLLATE latin1_general_ci NOT NULL,
                    lat DECIMAL(9, 6) NOT NULL COMMENT \'latitude\',
                    lng DECIMAL(9, 6) NOT NULL COMMENT \'longitude\',
                    title VARCHAR(255) NULL DEFAULT NULL COMMENT \'Data for infowindow\',
                    street VARCHAR(255) NULL DEFAULT NULL COMMENT \'Data for infowindow\',
                    zip VARCHAR(255) NULL DEFAULT NULL COMMENT \'Data for infowindow\',
                    city VARCHAR(255) NULL DEFAULT NULL COMMENT \'Data for infowindow\',
                    PRIMARY KEY (oxid),
                    INDEX (lat),
                    INDEX (lng),
                    INDEX (title),
                    INDEX (street),
                    INDEX (zip),
                    INDEX (city)
                )
                    Engine = InnoDB
                    DEFAULT charset = utf8 comment =\'CreateIT Map for Shoplocator\';'
        );
        foreach ($tables as $newTable) {
            $this->db->execute($newTable);
        }
    }
}