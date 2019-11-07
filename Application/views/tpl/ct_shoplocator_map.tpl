<div class="[{$map->getId()}]"></div>
[{oxstyle include=$oViewConf->getModuleUrl('ct/shoplocator','out/src/css/bootstrap.min.css')}]
[{oxstyle include=$oViewConf->getModuleUrl('ct/shoplocator','out/src/css/style.css')}]
[{include file="css/ct_shoplocator_plugin_style.tpl"}]
[{oxstyle}]

[{oxscript include="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"}]
[{oxscript include="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"}]
[{oxscript include=$oViewConf->getModuleUrl('ct/shoplocator','out/src/js/jquery.appear.js')}]
[{oxscript include=$oViewConf->getModuleUrl('ct/shoplocator','out/src/js/device.min.js')}]
[{oxscript include=$oViewConf->getModuleUrl('ct/shoplocator','out/src/js/jquery.browser.min.js')}]
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=[{$oViewConf->ct_getGoogleApiKey()}]&libraries=places,geometry"></script>
[{include file="js/ct_shoplocator_js.tpl"}]
[{include file="ct_shoplocator_js.tpl"}]
[{oxscript}]