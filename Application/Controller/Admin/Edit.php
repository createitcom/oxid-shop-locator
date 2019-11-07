<?php

namespace ct\shoplocator\Application\Controller\Admin;

use OxidEsales\Eshop\Application\Controller\Admin\AdminDetailsController;
use OxidEsales\Eshop\Core\UtilsObject;
use OxidEsales\Eshop\Core\Registry;
use OxidEsales\Eshop\Core\Request;

$parentClass = UtilsObject::getInstance()->getClassName(AdminDetailsController::class);
class_alias($parentClass, 'ct\\shoplocator\\Application\\Controller\\Admin\\Edit_extend_AdminDetailsController');

/**
 * Class Edit
 * @package ct\shoplocator\Application\Controller\Admin
 */
class Edit extends Edit_extend_AdminDetailsController
{

    /**
     * @var string
     */
    protected $_sThisTemplate;

    /**
     * @var
     */
    protected $error;

    /**
     * @var
     */
    protected $editObject;

    protected $ajaxClass;

    protected $ajaxTemplate;

    protected $checkBoxParams = array();

    /**
     * @return mixed
     */
    public function getError()
    {
        return $this->error;
    }

    /**
     * @return string
     */
    public function render()
    {
        $tpl = parent::render();
        $soxId = $this->_aViewData["oxid"] = $this->getEditObjectId();
        if (isset($soxId) && $soxId != "-1") {
            $object = oxNew($this->editObject);
            $object->load($soxId);
            $this->_aViewData["edit"] = $object;
        }

        if ($this->ajaxClass) {
            if (Registry::get(Request::class)->getRequestEscapedParameter("aoc")) {
                $ajaxObject = oxNew($this->ajaxClass);
                $this->_aViewData['oxajax'] = $ajaxObject->getColumns();

                return $this->ajaxTemplate;
            }
        }

        return $tpl;
    }

    /**
     * Basic Save method
     */
    public function save()
    {
        $oxid = $this->getEditObjectId();
        $params = $this->getEditParameters();

        $obj = oxNew($this->editObject);

        if ($oxid != '-1') {
            $obj->load($oxid);
        } else {
            $params[$obj->getCoreTableName() . '__oxid'] = null;
        }
        $params = $this->preSave($params);
        $obj->assign($params);
        $obj->save();
        $this->postSave($obj);
    }

    /**
     * @param $params
     * @return array
     */
    protected function preSave(array $params)
    {
        return $params;
    }

    public function getEditParameters()
    {
        $params = Registry::get(Request::class)->getRequestEscapedParameter('editval');
        foreach ($this->checkBoxParams as $item) {
            if (isset($params[$item]) === false) {
                $params[$item] = 0;
            }
        }
        return $params;
    }

    /**
     * @param $object
     */
    protected function postSave($object)
    {
        $this->setEditObjectId($object->getId());
    }
}