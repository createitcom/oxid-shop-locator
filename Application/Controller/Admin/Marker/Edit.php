<?php

namespace ct\shoplocator\Application\Controller\Admin\Marker;

use ct\shoplocator\Application\Controller\Admin\Edit as AdminDetailsController;
use OxidEsales\Eshop\Core\UtilsObject;
use ct\shoplocator\Application\Model\Marker;

$parentClass = UtilsObject::getInstance()->getClassName(AdminDetailsController::class);
class_alias($parentClass,
    'ct\\shoplocator\\Application\\Controller\\Admin\\Marker\\Edit_extend_AdminDetailsController');

/**
 * Class Edit
 * @package ct\shoplocator\Application\Controller\Admin\Marker
 */
class Edit extends Edit_extend_AdminDetailsController
{
    /**
     * @var string
     */
    protected $_sThisTemplate = 'marker/ct_edit.tpl';

    /**
     * @var string
     */
    protected $editObject = Marker::class;
}