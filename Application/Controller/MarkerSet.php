<?php

namespace ct\shoplocator\Application\Controller;

use OxidEsales\Eshop\Application\Controller\FrontendController;
use OxidEsales\Eshop\Core\Registry;
use OxidEsales\Eshop\Core\Request;
use OxidEsales\Eshop\Core\UtilsObject;

$parentClass = UtilsObject::getInstance()->getClassName(FrontendController::class);
class_alias($parentClass, 'ct\\shoplocator\\Application\\Controller\\MarkerSet_extend_FrontendController');

/**
 * Class MarkerSet
 * @package ct\shoplocator\Application\Controller
 * @mixin \OxidEsales\Eshop\Application\Controller\FrontendController
 */
class MarkerSet extends MarkerSet_extend_FrontendController
{

    /**
     * @var
     */
    protected $markerSet;

    /**
     * @return void|null
     */
    public function render()
    {
        $mapId = Registry::get(Request::class)->getRequestParameter('mapId');
        $markerSet = $this->getMarkerSet();
        if ($markerSet && $mapId === null) {
            $rawMarkers = $markerSet->getMarkers();
        } else {
            $rawMarkers = $this->getMapMarkers($mapId);
        }

        if (count($rawMarkers) === 0) {
            Registry::getUtils()->handlePageNotFoundError();
        }

        $markers = array();
        foreach ($rawMarkers as $marker) {
            $markers[] = array(
                'lat' => $marker->ct_shoplocator_map_marker__lat->value,
                'lng' => $marker->ct_shoplocator_map_marker__lng->value,
                'title' => $marker->ct_shoplocator_map_marker__title->value,
                'street' => $marker->ct_shoplocator_map_marker__street->value,
                'city' => $marker->ct_shoplocator_map_marker__city->value,
                'zip' => $marker->ct_shoplocator_map_marker__zip->value,
            );
        }
        echo json_encode($markers);
        Registry::getConfig()->pageClose();
        exit;
    }

    /**
     * @return array
     */
    public function getMarkerSet()
    {
        if ($this->markerSet === null) {
            $this->loadMarkerSet();
        }

        return $this->markerSet;
    }

    /**
     * @param $mapId
     * @return array
     */
    public function getMapMarkers($mapId)
    {
        if ($mapId === null) {
            return array();
        }
        $mapObj = oxNew(\ct\shoplocator\Application\Model\Map::class);
        $mapObj->load($mapId);
        if ($mapObj->isLoaded()) {
            return $mapObj->getAllMarkerSets();
        }
        return array();
    }

    /**
     * @param null $markerSetId
     */
    protected function loadMarkerSet($markerSetId = null)
    {
        if ($markerSetId === null) {
            $markerSetId = Registry::get(Request::class)->getRequestParameter('markerSetId');
        }
        $markerSet = oxNew(\ct\shoplocator\Application\Model\MarkerSet::class);
        $markerSet->load($markerSetId);
        if ($markerSet->isLoaded()) {
            $this->setMarkerSet($markerSet);
        }
    }

    /**
     * @param array $markerSet
     */
    protected function setMarkerSet($markerSet)
    {
        $this->markerSet = $markerSet;
    }
}