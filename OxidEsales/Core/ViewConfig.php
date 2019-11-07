<?php

namespace ct\shoplocator\OxidEsales\Core;

use OxidEsales\Eshop\Core\Registry;

/**
 * Class ViewConfig
 * @package ct\shoplocator\OxidEsales\Core
 * @mixin \OxidEsales\Eshop\Core\ViewConfig
 */
class ViewConfig extends ViewConfig_parent
{


    /**
     * @return mixed
     */
    public function ct_getGoogleApiKey()
    {
        return Registry::getConfig()->getConfigParam('ctShopLocatorGoogleMapsApiKey');
    }

}