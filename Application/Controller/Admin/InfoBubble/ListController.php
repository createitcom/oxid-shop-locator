<?php

namespace ct\shoplocator\Application\Controller\Admin\InfoBubble;

use ct\shoplocator\Application\Model\InfoBubble;
use ct\shoplocator\Application\Model\InfoBubbleList;
use OxidEsales\Eshop\Application\Controller\Admin\AdminListController;
use OxidEsales\Eshop\Core\UtilsObject;

$parentClass = UtilsObject::getInstance()->getClassName(AdminListController::class);
class_alias($parentClass,
    'ct\\shoplocator\\Application\\Controller\\Admin\\InfoBubble\\ListController_extend_AdminListController');

/**
 * Class ListController
 * @package ct\shoplocator\Application\Controller\Admin\InfoBubble
 */
class ListController extends ListController_extend_AdminListController
{

    /**
     * @var string
     */
    protected $_sListClass = InfoBubble::class;
    /**
     * @var string
     */
    protected $_sListType = InfoBubbleList::class;
    /**
     * @var string
     */
    protected $_sThisTemplate = 'info_bubble/ct_list.tpl';


    /**
     * @return mixed
     */
    public function render()
    {
        $tpl = parent::render();
        return $tpl;
    }

}