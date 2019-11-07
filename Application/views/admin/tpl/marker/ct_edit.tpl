[{include file="headitem.tpl" title="GENERAL_ADMIN_TITLE"|oxmultilangassign}]

<script type="text/javascript">
    <!--
    window.onload = function ()
    {
        [{if $updatelist == 1}]
        top.oxid.admin.updateList('[{$oxid}]');
        [{/if}]
        var oField = top.oxid.admin.getLockTarget();
        oField.onchange = oField.onkeyup = oField.onmouseout = top.oxid.admin.unlockSave;
    }
    //-->
</script>

[{if $readonly}]
    [{assign var="readonly" value="readonly disabled"}]
    [{else}]
    [{assign var="readonly" value=""}]
    [{/if}]

<style type="text/css">
    .noticebox {color:black;font-weight: bold;padding: 3px 9px;background: white;border: solid gray 1px;margin:1px 0 15px 0;}
</style>

<form name="transfer" id="transfer" action="[{ $oViewConf->getSelfLink() }]" method="post">
    [{ $oViewConf->getHiddenSid() }]
    <input type="hidden" name="oxid" value="[{ $oxid }]">
    <input type="hidden" name="oxidCopy" value="[{$oxid}]">
    <input type="hidden" name="cl" value="ct_shoplocator_admin_marker_edit">
    <input type="hidden" name="editlanguage" value="[{ $editlanguage }]">
</form>


[{if $oView->getError() }]
    <div class="errorbox">
        [{ $oView->getError() }]
    </div>
    [{/if}]

<form name="myedit" id="myedit" action="[{$oViewConf->getSelfLink()}]" method="post">
    [{$oViewConf->getHiddenSid()}]
    <input type="hidden" name="cl" value="ct_shoplocator_admin_marker_edit">
    <input type="hidden" name="fnc" value="save">
    <input type="hidden" name="oxid" value="[{$oxid}]">
    <input type="hidden" name="editval[ct_shoplocator_map_marker__oxid]" value="[{$oxid}]">

    <table border="0">
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_TITLE"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_marker__title]"
                       maxlength="[{$edit->ct_shoplocator_map_marker__title->fldmax_length}]" value="[{$edit->ct_shoplocator_map_marker__title->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_LAT"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_marker__lat]" value="[{$edit->ct_shoplocator_map_marker__lat->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_LNG"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_marker__lng]" value="[{$edit->ct_shoplocator_map_marker__lng->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_STREET"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_marker__street]"
                       maxlength="[{$edit->ct_shoplocator_map_marker__street->fldmax_length}]" value="[{$edit->ct_shoplocator_map_marker__street->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_ZIP"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_marker__zip]"
                       maxlength="[{$edit->ct_shoplocator_map_marker__zip->fldmax_length}]" value="[{$edit->ct_shoplocator_map_marker__zip->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_CITY"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_marker__city]"
                       maxlength="[{$edit->ct_shoplocator_map_marker__city->fldmax_length}]" value="[{$edit->ct_shoplocator_map_marker__city->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
            </td>
            <td class="edittext">
                <input type="submit" name="save" value="[{ oxmultilang ident="GENERAL_SAVE" }]">
            </td>
        </tr>
    </table>
</form>
<br />
<br />

[{include file="bottomnaviitem.tpl"}]
[{include file="bottomitem.tpl"}]
