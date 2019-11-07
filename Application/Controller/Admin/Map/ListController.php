<?php

namespace ct\shoplocator\Application\Controller\Admin\Map;

use OxidEsales\Eshop\Application\Controller\Admin\AdminListController;
use OxidEsales\Eshop\Core\UtilsObject;
use ct\shoplocator\Application\Model\MapList;
use ct\shoplocator\Application\Model\Map;

$parentClass = UtilsObject::getInstance()->getClassName(AdminListController::class);
class_alias($parentClass,
    'ct\\shoplocator\\Application\\Controller\\Admin\\Map\\ListController_extend_AdminListController');

/**
 * Class ListController
 * @package ct\shoplocator\Application\Controller\Admin\Map
 */
class ListController extends ListController_extend_AdminListController
{

    /**
     * @var string
     */
    protected $_sListClass = Map::class;
    /**
     * @var string
     */
    protected $_sListType = MapList::class;
    /**
     * @var string
     */
    protected $_sThisTemplate = 'map/ct_list.tpl';


    /**
     * @return mixed
     */
    public function render()
    {
        $tpl = parent::render();
        return $tpl;
    }

}