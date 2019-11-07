<?php

namespace ct\shoplocator\Application\Model\SeoEncoder;

use OxidEsales\Eshop\Core\DatabaseProvider;
use OxidEsales\Eshop\Core\Registry;
use OxidEsales\Eshop\Core\SeoEncoder;
use OxidEsales\Eshop\Core\UtilsObject;
use ct\shoplocator\Application\Model\Map as MapModel;

$parentClass = UtilsObject::getInstance()->getClassName(SeoEncoder::class);
class_alias($parentClass, 'ct\\shoplocator\\Application\\Model\\SeoEncoder\\Map_extend_SeoEncoder');

/**
 * Class Map
 * @package ct\shoplocator\Application\Model\SeoEncoder
 */
class Map extends Map_extend_SeoEncoder
{
    /**
     * @var string
     */
    protected $type = 'ct_shoplocator';

    /**
     * @param MapModel $item
     * @param null $shopID
     * @param null $langID
     * @param bool $fullURL
     * @param bool $regenerate
     * @return bool
     */
    public function getURL(MapModel $item, $shopID = null, $langID = null, $fullURL = false, $regenerate = false)
    {
        if ($langID === null) {
            $langID = Registry::getLang()->getBaseLanguage();
        }

        $seoURL = false;
        if ($regenerate === false) {
            $seoURL = $this->_loadFromDb($this->type, $item->getId(), $langID, $shopID);
        }
        if ($seoURL == false) {
            $seoURL = $item->ct_shoplocator_map__title->value;
            /* The _processSeoUrl() method uses the shop ID from the Config. */
            $config = Registry::getConfig();
            $currentShopID = $config->getShopId();
            $config->setShopId($shopID);
            $seoURL = $this->_processSeoUrl($seoURL, $item->getId(), $langID);
            $config->setShopId($currentShopID);
            $this->_saveToDb($this->type, $item->getId(), $item->getBaseStdLink($langID), $seoURL, $langID, $shopID);
        }

        if ($fullURL === true) {
            return $this->_getFullUrl($seoURL, $langID, Registry::getConfig()->isSsl());
        }
        return $seoURL;
    }
}