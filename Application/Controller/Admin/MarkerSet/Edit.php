<?php

namespace ct\shoplocator\Application\Controller\Admin\MarkerSet;

use ct\shoplocator\Application\Controller\Admin\Edit as AdminDetailsController;
use OxidEsales\Eshop\Core\UtilsObject;
use ct\shoplocator\Application\Model\MarkerSet;

$parentClass = UtilsObject::getInstance()->getClassName(AdminDetailsController::class);
class_alias($parentClass,
    'ct\\shoplocator\\Application\\Controller\\Admin\\MarkerSet\\Edit_extend_AdminDetailsController');

/**
 * Class Edit
 * @package ct\shoplocator\Application\Controller\Admin\MarkerSet
 */
class Edit extends Edit_extend_AdminDetailsController
{
    /**
     * @var string
     */
    protected $_sThisTemplate = 'marker_set/ct_edit.tpl';

    /**
     * @var string
     */
    protected $editObject = MarkerSet::class;
    /**
     * @var string
     */
    protected $ajaxClass = EditAjax::class;
    /**
     * @var string
     */
    protected $ajaxTemplate = 'marker_set/popups/ct_marker_ajax.tpl';
}