<?php

namespace ct\shoplocator\Application\Controller\Admin\MarkerSet;

use ct\shoplocator\Application\Model\MarkerSet;
use ct\shoplocator\Application\Model\MarkerSetList;
use OxidEsales\Eshop\Application\Controller\Admin\AdminListController;
use OxidEsales\Eshop\Core\UtilsObject;

$parentClass = UtilsObject::getInstance()->getClassName(AdminListController::class);
class_alias($parentClass,
    'ct\\shoplocator\\Application\\Controller\\Admin\\MarkerSet\\ListController_extend_AdminListController');

/**
 * Class ListController
 * @package ct\shoplocator\Application\Controller\Admin\MarkerSet
 */
class ListController extends ListController_extend_AdminListController
{

    /**
     * @var string
     */
    protected $_sListClass = MarkerSet::class;
    /**
     * @var string
     */
    protected $_sListType = MarkerSetList::class;
    /**
     * @var string
     */
    protected $_sThisTemplate = 'marker_set/ct_list.tpl';


    /**
     * @return mixed
     */
    public function render()
    {
        $tpl = parent::render();
        return $tpl;
    }

}