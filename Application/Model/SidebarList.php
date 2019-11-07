<?php

namespace ct\shoplocator\Application\Model;

use OxidEsales\Eshop\Core\Model\ListModel;
use OxidEsales\Eshop\Core\UtilsObject;

$parentClass = UtilsObject::getInstance()->getClassName(ListModel::class);
class_alias($parentClass, 'ct\\shoplocator\\Application\\Model\\SidebarList_extend_ListModel');

/**
 * Class SidebarList
 * @package ct\shoplocator\Application\Model
 * @mixin\ OxidEsales\Eshop\Core\Model\ListModel
 */
class SidebarList extends SidebarList_extend_ListModel
{

    /**
     * @var string
     */
    protected $_sCoreTable = 'ct_shoplocator_map_sidebar';
    /**
     * @var string
     */
    protected $_sObjectsInListName = Sidebar::class;

}
