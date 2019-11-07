<?php

namespace ct\shoplocator\Application\Controller\Admin\Sidebar;

use OxidEsales\Eshop\Application\Controller\Admin\AdminController;
use OxidEsales\Eshop\Core\UtilsObject;

$parentClass = UtilsObject::getInstance()->getClassName(AdminController::class);
class_alias($parentClass, 'ct\\shoplocator\\Application\\Controller\\Admin\\Sidebar\\Frame_extend_AdminController');

/**
 * Class Frame
 * @package ct\shoplocator\Application\Controller\Admin\Sidebar
 * @mixin \OxidEsales\Eshop\Application\Controller\Admin\AdminController
 */
class Frame extends Frame_extend_AdminController
{

    /**
     * @var string
     */
    protected $_sThisTemplate = 'ct_shoplocator_frame.tpl';

}
