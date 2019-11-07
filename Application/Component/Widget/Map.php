<?php

namespace ct\shoplocator\Application\Component\Widget;

use \OxidEsales\Eshop\Application\Component\Widget\WidgetController;


use OxidEsales\Eshop\Core\Registry;
use OxidEsales\Eshop\Core\Request;
use OxidEsales\Eshop\Core\ViewConfig;

$parentClass = \OxidEsales\Eshop\Core\UtilsObject::getInstance()->getClassName(
    WidgetController::class
);
class_alias($parentClass, 'ct\\shoplocator\\Application\\Component\\Widget\\Map_extend_WidgetController');

/**
 * Class Map
 * @package ct\shoplocator\Application\Component\Widget
 * @mixin \OxidEsales\Eshop\Application\Component\Widget\WidgetController
 */
class Map extends Map_extend_WidgetController
{
    /**
     * @var
     */
    protected $map;

    /**
     * @var string
     */
    protected $_sThisTemplate = 'widget/ct_shoplocator_map.tpl';

    /**
     * @return mixed
     */
    public function render()
    {
        parent::render();
        $this->addTplParam('map', $this->getMap());
        return $this->_sThisTemplate;
    }

    /**
     * @return mixed
     */
    public function getMap()
    {
        if ($this->map === null) {
            $mapId = Registry::get(Request::class)->getRequestParameter('mapId');
            if ($mapId === null) {
                $mapId = $this->getViewParameter('mapId');
            }
            $map = oxNew(\ct\shoplocator\Application\Model\Map::class);
            $map->load($mapId);
            if ($map->isLoaded()) {
                $this->setMap($map);
            }
        }
        return $this->map;
    }

    /**
     * @param mixed $map
     */
    public function setMap($map)
    {
        $this->map = $map;
    }
}