<?php

namespace ct\shoplocator\Application\Controller\Admin\Sidebar;

use ct\shoplocator\Application\Model\Sidebar;
use ct\shoplocator\Application\Model\SidebarList;
use OxidEsales\Eshop\Application\Controller\Admin\AdminListController;
use OxidEsales\Eshop\Core\UtilsObject;

$parentClass = UtilsObject::getInstance()->getClassName(AdminListController::class);
class_alias($parentClass,
    'ct\\shoplocator\\Application\\Controller\\Admin\\Sidebar\\ListController_extend_AdminListController');

/**
 * Class ListController
 * @package ct\shoplocator\Application\Controller\Admin\Sidebar
 * @mixin \OxidEsales\Eshop\Application\Controller\Admin\AdminListController;
 */
class ListController extends ListController_extend_AdminListController
{

    /**
     * @var string
     */
    protected $_sListClass = Sidebar::class;
    /**
     * @var string
     */
    protected $_sListType = SidebarList::class;
    /**
     * @var string
     */
    protected $_sThisTemplate = 'sidebar/ct_list.tpl';


    /**
     * @return mixed
     */
    public function render()
    {
        $tpl = parent::render();
        return $tpl;
    }

}