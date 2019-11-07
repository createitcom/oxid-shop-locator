<?php

namespace ct\shoplocator\Application\Controller\Admin\Cluster;

use OxidEsales\Eshop\Application\Controller\Admin\AdminController;
use OxidEsales\Eshop\Core\UtilsObject;

$parentClass = UtilsObject::getInstance()->getClassName(AdminController::class);
class_alias($parentClass, 'ct\\shoplocator\\Application\\Controller\\Admin\\Cluster\\Frame_extend_AdminController');

/**
 * Class Frame
 * @package ct\shoplocator\Application\Controller\Admin\Cluster
 */
class Frame extends Frame_extend_AdminController
{

    /**
     * @var string
     */
    protected $_sThisTemplate = 'ct_shoplocator_frame.tpl';

}
