<?php

namespace ct\shoplocator\Application\Model;

use OxidEsales\Eshop\Core\Model\ListModel;
use OxidEsales\Eshop\Core\UtilsObject;

$parentClass = UtilsObject::getInstance()->getClassName(ListModel::class);
class_alias($parentClass, 'ct\\shoplocator\\Application\\Model\\ClusterList_extend_ListModel');

/**
 * Class ClusterList
 * @package ct\shoplocator\Application\Model
 * @mixin \OxidEsales\Eshop\Core\Model\ListModel
 */
class ClusterList extends ClusterList_extend_ListModel
{

    /**
     * @var string
     */
    protected $_sCoreTable = 'ct_shoplocator_map_cluster';
    /**
     * @var string
     */
    protected $_sObjectsInListName = Cluster::class;

}
