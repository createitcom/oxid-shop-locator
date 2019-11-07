<?php

namespace ct\shoplocator\Application\Controller\Admin\Cluster;

use ct\shoplocator\Core\ShopLocatorAdminFileHelper;
use ct\shoplocator\Application\Controller\Admin\Edit as AdminDetailsController;
use OxidEsales\Eshop\Core\UtilsObject;
use OxidEsales\Eshop\Core\Registry;
use ct\shoplocator\Application\Model\Cluster;

$parentClass = UtilsObject::getInstance()->getClassName(AdminDetailsController::class);
class_alias($parentClass,
    'ct\\shoplocator\\Application\\Controller\\Admin\\Cluster\\Edit_extend_AdminDetailsController');

/**
 * Class Edit
 * @package ct\shoplocator\Application\Controller\Admin\Cluster
 */
class Edit extends Edit_extend_AdminDetailsController
{

    /**
     * @var array
     */
    protected $checkBoxParams = array(
        'ct_shoplocator_map_cluster__enable',
    );

    /**
     * @var string
     */
    protected $_sThisTemplate = 'cluster/ct_edit.tpl';

    /**
     * @var string
     */
    protected $editObject = Cluster::class;

    /**
     * @return mixed
     */
    protected function preSave($params)
    {
        $params = parent::preSave($params);
        $editObject = oxNew($this->editObject);
        $editObject->load($params['ct_shoplocator_map_cluster__oxid']);
        foreach (array('small', 'medium', 'big') as $iconSize) {
            $iconSizeColumn = 'ct_shoplocator_map_cluster__style_' . $iconSize . '_icon';
            Registry::get(ShopLocatorAdminFileHelper::class)->handleImages($params, $iconSizeColumn, $editObject);
        }
        return $params;
    }
}