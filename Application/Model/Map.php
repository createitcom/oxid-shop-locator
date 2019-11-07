<?php

namespace ct\shoplocator\Application\Model;

use OxidEsales\Eshop\Core\DatabaseProvider;
use OxidEsales\Eshop\Core\Model\BaseModel;
use OxidEsales\Eshop\Core\Registry;
use OxidEsales\Eshop\Core\UtilsObject;
use ct\shoplocator\Application\Model\SeoEncoder\Map as MapSeoEncoder;

$parentClass = UtilsObject::getInstance()->getClassName(BaseModel::class);
class_alias($parentClass, 'ct\\shoplocator\\Application\\Model\\Map_extend_BaseModel');

/**
 * Class Map
 * @package ct\shoplocator\Application\Model
 * @mixin \OxidEsales\Eshop\Core\Model\BaseModel
 */
class Map extends Map_extend_BaseModel
{

    /**
     * @var string
     */
    protected $_sClassName = self::class;
    /**
     * @var string
     */
    protected $_sCoreTable = 'ct_shoplocator_map';

    /**
     * @var
     */
    protected $cluster;
    /**
     * @var
     */
    protected $infoBubble;
    /**
     * @var array
     */
    protected $markerSets = array();
    /**
     * @var
     */
    protected $sidebar;

    /**
     * @var array
     * Existing styles
     */
    protected $defaultStyles = array(
        'lollipop' => '[{"featureType":"all","elementType":"geometry.stroke","stylers":[{"visibility":"simplified"}]},{"featureType":"administrative","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"administrative","elementType":"labels","stylers":[{"visibility":"simplified"},{"color":"#a31645"}]},{"featureType":"landscape","elementType":"all","stylers":[{"weight":"3.79"},{"visibility":"on"},{"color":"#ffecf0"}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"visibility":"on"}]},{"featureType":"landscape","elementType":"geometry.stroke","stylers":[{"visibility":"on"}]},{"featureType":"poi","elementType":"all","stylers":[{"visibility":"simplified"},{"color":"#a31645"}]},{"featureType":"poi","elementType":"geometry","stylers":[{"saturation":"0"},{"lightness":"0"},{"visibility":"off"}]},{"featureType":"poi","elementType":"geometry.stroke","stylers":[{"visibility":"off"}]},{"featureType":"poi.business","elementType":"all","stylers":[{"visibility":"simplified"},{"color":"#d89ca8"}]},{"featureType":"poi.business","elementType":"geometry","stylers":[{"visibility":"on"}]},{"featureType":"poi.business","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"saturation":"0"}]},{"featureType":"poi.business","elementType":"labels","stylers":[{"color":"#a31645"}]},{"featureType":"poi.business","elementType":"labels.icon","stylers":[{"visibility":"simplified"},{"lightness":"84"}]},{"featureType":"road","elementType":"all","stylers":[{"saturation":-100},{"lightness":45}]},{"featureType":"road.highway","elementType":"all","stylers":[{"visibility":"simplified"}]},{"featureType":"road.arterial","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"transit","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"all","stylers":[{"color":"#d89ca8"},{"visibility":"on"}]},{"featureType":"water","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#fedce3"}]},{"featureType":"water","elementType":"labels","stylers":[{"visibility":"off"}]}]',
        'cosmic' => '[{"featureType":"administrative","elementType":"labels.text.fill","stylers":[{"color":"#7d8d97"}]},{"featureType":"landscape","elementType":"all","stylers":[{"color":"#f2f2f2"}]},{"featureType":"landscape","elementType":"geometry.fill","stylers":[{"color":"#f2f5f6"}]},{"featureType":"poi","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"poi.attraction","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"poi.park","elementType":"geometry.fill","stylers":[{"color":"#e6f3d6"},{"visibility":"off"}]},{"featureType":"road","elementType":"all","stylers":[{"saturation":-100},{"lightness":45},{"visibility":"off"}]},{"featureType":"road.highway","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#f4d2c5"},{"visibility":"simplified"}]},{"featureType":"road.highway","elementType":"labels.text","stylers":[{"color":"#4e4e4e"}]},{"featureType":"road.arterial","elementType":"geometry.fill","stylers":[{"color":"#f4f4f4"}]},{"featureType":"road.arterial","elementType":"labels.text.fill","stylers":[{"color":"#787878"}]},{"featureType":"road.arterial","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"transit","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"all","stylers":[{"visibility":"on"},{"hue":"#ff0000"},{"saturation":"-100"},{"lightness":"45"}]},{"featureType":"water","elementType":"geometry.fill","stylers":[{"color":"#cddbe2"}]}]',
        'pop' => '[{"featureType":"administrative","elementType":"labels.text.fill","stylers":[{"color":"#444444"}]},{"featureType":"administrative.locality","elementType":"labels.text","stylers":[{"visibility":"simplified"},{"lightness":"-22"},{"gamma":"4.97"},{"saturation":"-57"}]},{"featureType":"administrative.land_parcel","elementType":"geometry.stroke","stylers":[{"visibility":"off"}]},{"featureType":"landscape","elementType":"all","stylers":[{"color":"#f2f2f2"}]},{"featureType":"poi","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"poi.attraction","elementType":"all","stylers":[{"visibility":"simplified"}]},{"featureType":"poi.attraction","elementType":"geometry.fill","stylers":[{"color":"#ffcece"}]},{"featureType":"poi.attraction","elementType":"labels.icon","stylers":[{"color":"#ff0000"}]},{"featureType":"poi.business","elementType":"all","stylers":[{"visibility":"simplified"}]},{"featureType":"poi.business","elementType":"labels.icon","stylers":[{"visibility":"on"},{"invert_lightness":true},{"gamma":"10.00"}]},{"featureType":"poi.park","elementType":"all","stylers":[{"color":"#9dd99b"},{"visibility":"simplified"},{"gamma":"2.79"},{"lightness":"27"},{"saturation":"4"}]},{"featureType":"poi.park","elementType":"labels.text","stylers":[{"color":"#54734e"}]},{"featureType":"road","elementType":"all","stylers":[{"saturation":-100},{"lightness":45},{"visibility":"simplified"}]},{"featureType":"road.highway","elementType":"all","stylers":[{"visibility":"simplified"},{"color":"#ff8800"},{"gamma":"1.50"}]},{"featureType":"road.highway","elementType":"labels.text","stylers":[{"visibility":"simplified"},{"saturation":"-92"},{"color":"#ffffff"}]},{"featureType":"road.arterial","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"transit","elementType":"all","stylers":[{"visibility":"simplified"},{"saturation":"-93"}]},{"featureType":"transit","elementType":"labels.icon","stylers":[{"visibility":"simplified"},{"gamma":"1"},{"hue":"#ff0000"},{"saturation":"100"},{"lightness":"0"}]},{"featureType":"transit.line","elementType":"all","stylers":[{"saturation":"-59"},{"gamma":"1"},{"lightness":"-29"},{"weight":"0.13"}]},{"featureType":"transit.line","elementType":"labels","stylers":[{"visibility":"simplified"},{"gamma":"4.71"}]},{"featureType":"transit.line","elementType":"labels.text","stylers":[{"visibility":"off"}]},{"featureType":"transit.line","elementType":"labels.text.fill","stylers":[{"visibility":"simplified"}]},{"featureType":"water","elementType":"all","stylers":[{"color":"#47b6bb"},{"visibility":"on"},{"lightness":"58"},{"saturation":"45"}]}]',
        'retro' => '[{"featureType":"all","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"administrative","elementType":"all","stylers":[{"visibility":"simplified"},{"color":"#5b6571"},{"lightness":"35"}]},{"featureType":"administrative.neighborhood","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"landscape","elementType":"all","stylers":[{"visibility":"on"},{"color":"#f3f4f4"}]},{"featureType":"landscape.man_made","elementType":"geometry","stylers":[{"weight":0.9},{"visibility":"off"}]},{"featureType":"poi.park","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#83cead"}]},{"featureType":"road","elementType":"all","stylers":[{"visibility":"on"},{"color":"#ffffff"}]},{"featureType":"road","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"road.highway","elementType":"all","stylers":[{"visibility":"on"},{"color":"#fee379"}]},{"featureType":"road.highway","elementType":"geometry","stylers":[{"visibility":"on"}]},{"featureType":"road.highway","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"road.highway","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"road.highway.controlled_access","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"road.arterial","elementType":"all","stylers":[{"visibility":"simplified"},{"color":"#ffffff"}]},{"featureType":"road.arterial","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"road.arterial","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"all","stylers":[{"visibility":"on"},{"color":"#7fc8ed"}]}]',
        'bee' => '[{"featureType":"administrative.locality","elementType":"all","stylers":[{"hue":"#2c2e33"},{"saturation":7},{"lightness":19},{"visibility":"on"}]},{"featureType":"administrative.locality","elementType":"labels.text","stylers":[{"visibility":"on"},{"saturation":"-3"}]},{"featureType":"administrative.locality","elementType":"labels.text.fill","stylers":[{"color":"#f39247"}]},{"featureType":"landscape","elementType":"all","stylers":[{"hue":"#ffffff"},{"saturation":-100},{"lightness":100},{"visibility":"simplified"}]},{"featureType":"poi","elementType":"all","stylers":[{"hue":"#ffffff"},{"saturation":-100},{"lightness":100},{"visibility":"off"}]},{"featureType":"poi.school","elementType":"geometry.fill","stylers":[{"color":"#f39247"},{"saturation":"0"},{"visibility":"on"}]},{"featureType":"road","elementType":"geometry","stylers":[{"hue":"#ff6f00"},{"saturation":"100"},{"lightness":31},{"visibility":"simplified"}]},{"featureType":"road","elementType":"geometry.stroke","stylers":[{"color":"#f39247"},{"saturation":"0"}]},{"featureType":"road","elementType":"labels","stylers":[{"hue":"#008eff"},{"saturation":-93},{"lightness":31},{"visibility":"on"}]},{"featureType":"road.arterial","elementType":"geometry.stroke","stylers":[{"visibility":"on"},{"color":"#f3dbc8"},{"saturation":"0"}]},{"featureType":"road.arterial","elementType":"labels","stylers":[{"hue":"#bbc0c4"},{"saturation":-93},{"lightness":-2},{"visibility":"simplified"}]},{"featureType":"road.arterial","elementType":"labels.text","stylers":[{"visibility":"off"}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"hue":"#e9ebed"},{"saturation":-90},{"lightness":-8},{"visibility":"simplified"}]},{"featureType":"transit","elementType":"all","stylers":[{"hue":"#e9ebed"},{"saturation":10},{"lightness":69},{"visibility":"on"}]},{"featureType":"water","elementType":"all","stylers":[{"hue":"#e9ebed"},{"saturation":-78},{"lightness":67},{"visibility":"simplified"}]}]',
        'dark' => '[{"featureType":"landscape","stylers":[{"saturation":-100},{"lightness":65},{"visibility":"on"}]},{"featureType":"poi","stylers":[{"saturation":-100},{"lightness":51},{"visibility":"simplified"}]},{"featureType":"road.highway","stylers":[{"saturation":-100},{"visibility":"simplified"}]},{"featureType":"road.arterial","stylers":[{"saturation":-100},{"lightness":30},{"visibility":"on"}]},{"featureType":"road.local","stylers":[{"saturation":-100},{"lightness":40},{"visibility":"on"}]},{"featureType":"transit","stylers":[{"saturation":-100},{"visibility":"simplified"}]},{"featureType":"administrative.province","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"labels","stylers":[{"visibility":"on"},{"lightness":-25},{"saturation":-100}]},{"featureType":"water","elementType":"geometry","stylers":[{"hue":"#ffff00"},{"lightness":-25},{"saturation":-97}]}]',
        'metro' => '[{"featureType":"landscape","stylers":[{"saturation":-100},{"lightness":65},{"visibility":"on"}]},{"featureType":"poi","stylers":[{"saturation":-100},{"lightness":51},{"visibility":"simplified"}]},{"featureType":"road.highway","stylers":[{"saturation":-100},{"visibility":"simplified"}]},{"featureType":"road.arterial","stylers":[{"saturation":-100},{"lightness":30},{"visibility":"on"}]},{"featureType":"road.local","stylers":[{"saturation":-100},{"lightness":40},{"visibility":"on"}]},{"featureType":"transit","stylers":[{"saturation":-100},{"visibility":"simplified"}]},{"featureType":"administrative.province","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"labels","stylers":[{"visibility":"on"},{"lightness":-25},{"saturation":-100}]},{"featureType":"water","elementType":"geometry","stylers":[{"hue":"#ffff00"},{"lightness":-25},{"saturation":-97}]}]',
        'modern' => '[{"featureType":"administrative","elementType":"labels.text.fill","stylers":[{"color":"#444444"}]},{"featureType":"landscape","elementType":"all","stylers":[{"color":"#f2f2f2"}]},{"featureType":"poi","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"road","elementType":"all","stylers":[{"saturation":-100},{"lightness":45}]},{"featureType":"road.highway","elementType":"all","stylers":[{"visibility":"simplified"}]},{"featureType":"road.arterial","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"transit","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"all","stylers":[{"color":"#46bcec"},{"visibility":"on"}]}]',
        'material' => '[{"featureType":"road","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"poi","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"transit","elementType":"labels.text","stylers":[{"visibility":"off"}]}]',
        'minimalistic' => '[{"featureType":"administrative","elementType":"all","stylers":[{"hue":"#0060ff"},{"lightness":-100},{"visibility":"off"},{"saturation":"-77"}]},{"featureType":"administrative","elementType":"labels.text.fill","stylers":[{"visibility":"on"},{"color":"#848ea4"}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"hue":"#0060ff"},{"saturation":"-70"},{"lightness":"0"},{"visibility":"on"}]},{"featureType":"landscape","elementType":"geometry.fill","stylers":[{"hue":"#0050ff"},{"saturation":"0"},{"lightness":"0"}]},{"featureType":"landscape","elementType":"labels","stylers":[{"hue":"#0060ff"},{"saturation":"-80"},{"lightness":"-90"},{"visibility":"off"}]},{"featureType":"poi","elementType":"all","stylers":[{"hue":"#0060ff"},{"saturation":"-80"},{"lightness":"-70"},{"visibility":"off"},{"gamma":"1"}]},{"featureType":"road","elementType":"geometry","stylers":[{"hue":"#0060ff"},{"saturation":"-85"},{"lightness":"60"},{"visibility":"on"}]},{"featureType":"road","elementType":"labels","stylers":[{"hue":"#0060ff"},{"saturation":"-70"},{"lightness":"50"},{"visibility":"off"}]},{"featureType":"road.local","elementType":"all","stylers":[{"hue":"#0060ff"},{"saturation":"0"},{"lightness":"-11"},{"visibility":"on"}]},{"featureType":"transit","elementType":"geometry","stylers":[{"visibility":"simplified"},{"hue":"#0060ff"},{"lightness":"0"},{"saturation":"0"}]},{"featureType":"transit","elementType":"labels","stylers":[{"hue":"#0060ff"},{"lightness":-100},{"visibility":"off"}]},{"featureType":"water","elementType":"geometry","stylers":[{"hue":"#0066ff"},{"saturation":"0"},{"lightness":100},{"visibility":"on"}]},{"featureType":"water","elementType":"labels","stylers":[{"hue":"#000000"},{"saturation":-100},{"lightness":-100},{"visibility":"off"}]}]',
        'purple' => '[{"featureType":"administrative","elementType":"labels.text.fill","stylers":[{"color":"#6195a0"}]},{"featureType":"landscape","elementType":"all","stylers":[{"color":"#f2f2f2"}]},{"featureType":"landscape","elementType":"geometry.fill","stylers":[{"color":"#ffffff"}]},{"featureType":"poi","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"poi.park","elementType":"geometry.fill","stylers":[{"color":"#e6f3d6"},{"visibility":"on"}]},{"featureType":"road","elementType":"all","stylers":[{"saturation":-100},{"lightness":45},{"visibility":"simplified"}]},{"featureType":"road.highway","elementType":"all","stylers":[{"visibility":"simplified"}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#f4d2c5"},{"visibility":"simplified"}]},{"featureType":"road.highway","elementType":"labels.text","stylers":[{"color":"#4e4e4e"}]},{"featureType":"road.arterial","elementType":"geometry.fill","stylers":[{"color":"#f4f4f4"}]},{"featureType":"road.arterial","elementType":"labels.text.fill","stylers":[{"color":"#787878"}]},{"featureType":"road.arterial","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"transit","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"all","stylers":[{"color":"#eaf6f8"},{"visibility":"on"}]},{"featureType":"water","elementType":"geometry.fill","stylers":[{"color":"#eaf6f8"}]}]',
        'diamond' => '[{"featureType":"landscape.man_made","elementType":"geometry","stylers":[{"color":"#f7f1df"}]},{"featureType":"landscape.natural","elementType":"geometry","stylers":[{"color":"#d0e3b4"}]},{"featureType":"landscape.natural.terrain","elementType":"geometry","stylers":[{"visibility":"off"}]},{"featureType":"poi","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"poi.business","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"poi.medical","elementType":"geometry","stylers":[{"color":"#fbd3da"}]},{"featureType":"poi.park","elementType":"geometry","stylers":[{"color":"#bde6ab"}]},{"featureType":"road","elementType":"geometry.stroke","stylers":[{"visibility":"off"}]},{"featureType":"road","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#ffe15f"}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#efd151"}]},{"featureType":"road.arterial","elementType":"geometry.fill","stylers":[{"color":"#ffffff"}]},{"featureType":"road.local","elementType":"geometry.fill","stylers":[{"color":"black"}]},{"featureType":"transit.station.airport","elementType":"geometry.fill","stylers":[{"color":"#cfb2db"}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#a2daf2"}]}]',
        'selective' => '[{"featureType":"landscape.man_made","elementType":"geometry","stylers":[{"color":"#f7f1df"}]},{"featureType":"landscape.natural","elementType":"geometry","stylers":[{"color":"#d0e3b4"}]},{"featureType":"landscape.natural.terrain","elementType":"geometry","stylers":[{"visibility":"off"}]},{"featureType":"poi","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"poi.business","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"poi.medical","elementType":"geometry","stylers":[{"color":"#fbd3da"}]},{"featureType":"poi.park","elementType":"geometry","stylers":[{"color":"#bde6ab"}]},{"featureType":"road","elementType":"geometry.stroke","stylers":[{"visibility":"off"}]},{"featureType":"road","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#ffe15f"}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#efd151"}]},{"featureType":"road.arterial","elementType":"geometry.fill","stylers":[{"color":"#ffffff"}]},{"featureType":"road.local","elementType":"geometry.fill","stylers":[{"color":"black"}]},{"featureType":"transit.station.airport","elementType":"geometry.fill","stylers":[{"color":"#cfb2db"}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#a2daf2"}]}]',
    );

    /**
     * Map constructor.
     */
    public function __construct()
    {
        parent::__construct();
        $this->init($this->_sCoreTable);
    }

    /**
     * @return mixed
     */
    public function getCluster()
    {
        if ($this->cluster === null) {
            $clusterId = $this->ct_shoplocator_map__cluster_id->value;
            $cluster = oxNew(Cluster::class);
            $cluster->load($clusterId);
            if ($cluster->isLoaded()) {
                $this->setCluster($cluster);
            }
        }
        return $this->cluster;
    }

    /**
     * @param mixed $cluster
     */
    public function setCluster(Cluster $cluster)
    {
        $this->cluster = $cluster;
    }

    /**
     * @return mixed
     */
    public function getInfoBubble()
    {
        if ($this->infoBubble === null) {
            $infoBubbleId = $this->ct_shoplocator_map__info_bubble_id->value;
            $infoBubble = oxNew(InfoBubble::class);
            $infoBubble->load($infoBubbleId);
            if ($infoBubble->isLoaded()) {
                $this->setInfoBubble($infoBubble);
            }
        }
        return $this->infoBubble;
    }

    /**
     * @param mixed $infoBubble
     */
    public function setInfoBubble(InfoBubble $infoBubble)
    {
        $this->infoBubble = $infoBubble;
    }

    /**
     * @return array
     * @throws \OxidEsales\Eshop\Core\Exception\DatabaseConnectionException
     * @throws \OxidEsales\Eshop\Core\Exception\DatabaseErrorException
     */
    public function getMarkerSets()
    {
        if (count($this->markerSets) === 0) {
            $db = DatabaseProvider::getDb(DatabaseProvider::FETCH_MODE_ASSOC);
            $markerSetIds = $db->getCol('SELECT marker_set_id FROM ct_shoplocator_map_has_marker_set WHERE map_id=?',
                array($this->getId()));
            if ($markerSetIds) {
                $markerSet = oxNew(MarkerSet::class);
                foreach ($markerSetIds as $entry) {
                    $clone = clone $markerSet;
                    $clone->load($entry);
                    if ($clone->isLoaded()) {
                        $this->markerSets[$clone->getId()] = $clone;
                    }
                }
            }
        }
        return $this->markerSets;
    }

    /**
     * @param array $markerSets
     */
    public function setMarkerSets(array $markerSets)
    {
        $this->markerSets = $markerSets;
    }

    /**
     * @return mixed
     */
    public function getSidebar()
    {
        if ($this->sidebar === null) {
            $sidebarId = $this->ct_shoplocator_map__sidebar_id->value;
            $sidebar = oxNew(Sidebar::class);
            $sidebar->load($sidebarId);
            if ($sidebar->isLoaded()) {
                $this->setSidebar($sidebar);
            }
        }
        return $this->sidebar;
    }

    /**
     * @param mixed $sidebar
     */
    public function setSidebar(Sidebar $sidebar)
    {
        $this->sidebar = $sidebar;
    }

    /**
     * @return string
     */
    public function getMarkersIcon()
    {
        if ($this->ct_shoplocator_map__markers_icon->value != '' && $this->ct_shoplocator_map__markers_icon->value !== null) {
            return Registry::getConfig()->getPictureUrl('master/ctshoplocator/' . $this->ct_shoplocator_map__markers_icon->value);
        }

        return $this->getDefaultImagePath() . 'marker.png';
    }

    /**
     * @return string
     */
    protected function getDefaultImagePath()
    {
        $style = $this->ct_shoplocator_map__plugin_style->value;
        return Registry::getConfig()->getShopUrl() . '/modules/ct/shoplocator/out/src/style/' . $style . '/images/';
    }

    /**
     * @param $type
     * @return string
     */
    public function getClusterIcon($type)
    {
        $clusterIcon = $this->getCluster()->getClusterIcon($type);
        if ($clusterIcon) {
            return $clusterIcon;
        }
        return $this->getDefaultImagePath() . 'cluster' . ucfirst($type) . '.png';
    }

    /**
     * @return array
     * @throws \OxidEsales\Eshop\Core\Exception\DatabaseConnectionException
     * @throws \OxidEsales\Eshop\Core\Exception\DatabaseErrorException
     */
    public function getAllMarkerSets()
    {
        $markerSets = $this->getMarkerSets();
        if (count($markerSets) === 0) {
            return array();
        }
        $markers = array();
        foreach ($markerSets as $set) {
            $markers = array_merge($markers, $set->getMarkers());
        }
        return $markers;
    }

    /**
     * @return string
     */
    public function getAllMarkerLink()
    {
        return Registry::getConfig()->getShopUrl() . 'index.php?cl=ct_shoplocator_marker_set&mapId=' . $this->getId();
    }

    /**
     * @return array|mixed
     */
    public function getFirstMarker()
    {
        $markerSets = $this->getMarkerSets();
        if (count($markerSets) === 0) {
            return array();
        }
        foreach ($markerSets as $set) {
            foreach ($set->getMarkers() as $marker) {
                return $marker;
            }
        }
    }

    /**
     * @param null $langID
     * @param bool $addID
     * @param bool $full
     * @return string
     */
    public function getBaseStdLink($langID = null, $addID = true, $full = true)
    {
        $url = '';
        if ($full === true) {
            $url = Registry::getConfig()->getShopUrl($langID, false);
        }

        $url .= $this->getStdLink($langID);
        return $url;
    }

    /**
     * @param null $iLang
     * @return string
     */
    public function getLink($iLang = null)
    {
        if (Registry::getUtils()->seoIsActive() === false) {
            return $this->getStdLink($iLang);
        }

        return $this->getBaseSeoLink();
    }

    /**
     * @param null $iLang
     * @param array $aParams
     * @return string
     */
    public function getStdLink($iLang = null, $aParams = [])
    {
        return Registry::getConfig()->getShopMainUrl() . 'index.php?cl=ct_shoplocator_map&amp;mapId=' . $this->getId();
    }

    /**
     * @param null $langID
     * @param int $page
     * @return mixed
     */
    public function getBaseSeoLink($langID = null, $page = 0)
    {
        $encoder = Registry::get(MapSeoEncoder::class);
        return $encoder->getURL($this, null, $langID, true);
    }

    /**
     * @return bool|mixed
     */
    public function getMapStyle()
    {
        if ($this->ct_shoplocator_map__map_style->value !== null && $this->ct_shoplocator_map__map_style->value !== '') {
            if (json_decode($this->ct_shoplocator_map__map_style->getRawValue())) {
                return $this->ct_shoplocator_map__map_style->getRawValue();
            }
        }

        if (isset($this->defaultStyles[$this->ct_shoplocator_map__plugin_style->value])) {
            return $this->defaultStyles[$this->ct_shoplocator_map__plugin_style->value];
        }

        return false;
    }
}