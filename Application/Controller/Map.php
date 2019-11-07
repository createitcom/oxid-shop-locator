<?php

namespace ct\shoplocator\Application\Controller;

use OxidEsales\Eshop\Application\Controller\FrontendController;
use OxidEsales\Eshop\Core\Registry;
use OxidEsales\Eshop\Core\Request;
use OxidEsales\Eshop\Core\UtilsObject;
use \ct\shoplocator\Application\Model\Map as MapModel;

$parentClass = UtilsObject::getInstance()->getClassName(FrontendController::class);
class_alias($parentClass, 'ct\\shoplocator\\Application\\Controller\\Map_extend_FrontendController');

/**
 * Class Map
 * @package ct\shoplocator\Application\Controller
 * @mixin \OxidEsales\Eshop\Application\Controller\FrontendController
 */
class Map extends Map_extend_FrontendController
{

    /**
     * @var
     */
    protected $map;

    /**
     * @var string
     */
    protected $_sThisTemplate = 'page/ct_shoplocator_map.tpl';

    /**
     * @return void|null
     */
    public function render()
    {
        $tpl = parent::render();

        if ($this->getMap() === null) {
            Registry::getUtils()->handlePageNotFoundError();
        }

        $this->addTplParam('map', $this->getMap());
        return $tpl;
    }

    /**
     * @return |null
     */
    public function getMap()
    {
        if ($this->map === null) {
            $this->setMap();
        }

        return $this->map;
    }

    /**
     * Map setter
     */
    protected function setMap()
    {
        $mapId = Registry::get(Request::class)->getRequestParameter('mapId');
        $map = oxNew(MapModel::class);
        $map->load($mapId);
        if ($map->isLoaded()) {
            $this->map = $map;
        }
    }
}