<?php

namespace ct\shoplocator\Application\Controller\Admin\Marker;

use ct\shoplocator\Application\Model\Marker;
use ct\shoplocator\Application\Model\MarkerList;
use OxidEsales\Eshop\Application\Controller\Admin\AdminListController;
use OxidEsales\Eshop\Core\UtilsObject;

$parentClass = UtilsObject::getInstance()->getClassName(AdminListController::class);
class_alias($parentClass,
    'ct\\shoplocator\\Application\\Controller\\Admin\\Marker\\ListController_extend_AdminListController');

/**
 * Class ListController
 * @package ct\shoplocator\Application\Controller\Admin\Marker
 */
class ListController extends ListController_extend_AdminListController
{

    /**
     * @var string
     */
    protected $_sListClass = Marker::class;
    /**
     * @var string
     */
    protected $_sListType = MarkerList::class;
    /**
     * @var string
     */
    protected $_sThisTemplate = 'marker/ct_list.tpl';


    /**
     * @return mixed
     */
    public function render()
    {
        $tpl = parent::render();
        return $tpl;
    }

}