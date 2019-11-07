<?php

namespace ct\shoplocator\Application\Model;

use OxidEsales\Eshop\Core\Model\ListModel;
use OxidEsales\Eshop\Core\UtilsObject;

$parentClass = UtilsObject::getInstance()->getClassName(ListModel::class);
class_alias($parentClass, 'ct\\shoplocator\\Application\\Model\\InfoBubbleList_extend_ListModel');

/**
 * Class InfoBubbleList
 * @package ct\shoplocator\Application\Model
 * @mixin \OxidEsales\Eshop\Core\Model\ListModel
 */
class InfoBubbleList extends InfoBubbleList_extend_ListModel
{

    /**
     * @var string
     */
    protected $_sCoreTable = 'ct_shoplocator_map_info_bubble';
    /**
     * @var string
     */
    protected $_sObjectsInListName = InfoBubble::class;

}
