[{$smarty.block.parent}]

<div class="groupExp">
    <div>
        <a href="#" onclick="_groupExp(this);return false;" class="rc"><b>[{oxmultilang ident="CT_SHOPLOCATOR_SHOP_OPTIONS"}]</b></a>
        <dl>
            <dt>
                <input type=text class="txt" name=confstrs[ctShopLocatorGoogleMapsApiKey] value="[{$confstrs.ctShopLocatorGoogleMapsApiKey}]" [{$readonly}]>
                [{oxinputhelp ident="CT_SHOPLOCATOR_GOOGLE_MAPS_API_KEY_HELP"}]
            </dt>
            <dd>
                [{oxmultilang ident="CT_SHOPLOCATOR_GOOGLE_MAPS_API_KEY"}]
            </dd>
            <div class="spacer"></div>
        </dl>
    </div>
</div>