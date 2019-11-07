<?php

namespace ct\shoplocator\Application\Controller\Admin\Cluster;

use ct\shoplocator\Application\Model\Cluster;
use ct\shoplocator\Application\Model\ClusterList;
use OxidEsales\Eshop\Application\Controller\Admin\AdminListController;
use OxidEsales\Eshop\Core\UtilsObject;

$parentClass = UtilsObject::getInstance()->getClassName(AdminListController::class);
class_alias($parentClass,
    'ct\\shoplocator\\Application\\Controller\\Admin\\Cluster\\ListController_extend_AdminListController');

/**
 * Class ListController
 * @package ct\shoplocator\Application\Controller\Admin\Cluster
 */
class ListController extends ListController_extend_AdminListController
{

    /**
     * @var string
     */
    protected $_sListClass = Cluster::class;
    /**
     * @var string
     */
    protected $_sListType = ClusterList::class;
    /**
     * @var string
     */
    protected $_sThisTemplate = 'cluster/ct_list.tpl';


    /**
     * @return mixed
     */
    public function render()
    {
        $tpl = parent::render();
        return $tpl;
    }

}