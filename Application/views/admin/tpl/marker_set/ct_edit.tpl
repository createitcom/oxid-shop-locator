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
    <input type="hidden" name="cl" value="ct_shoplocator_admin_marker_set_edit">
    <input type="hidden" name="editlanguage" value="[{ $editlanguage }]">
</form>


[{if $oView->getError() }]
    <div class="errorbox">
        [{ $oView->getError() }]
    </div>
    [{/if}]

<form name="myedit" id="myedit" action="[{$oViewConf->getSelfLink()}]" method="post">
    [{$oViewConf->getHiddenSid()}]
    <input type="hidden" name="cl" value="ct_shoplocator_admin_marker_set_edit">
    <input type="hidden" name="fnc" value="save">
    <input type="hidden" name="oxid" value="[{$oxid}]">
    <input type="hidden" name="editval[ct_shoplocator_map_marker_set__oxid]" value="[{$oxid}]">

    <table border="0">
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_TITLE"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_marker_set__title]"
                       maxlength="[{$edit->ct_shoplocator_map_marker_set__title->fldmax_length}]" value="[{$edit->ct_shoplocator_map_marker_set__title->value}]">
            </td>
        </tr>
        <td valign="top" class="edittext" align="left" width="50%">
            [{if $oxid != "-1"}]
        <input [{$readonly}] type="button" name="assignArticle" value="[{oxmultilang ident="CT_SHOPLOCATOR_MAP_MARKER_SET_ASSIGN_MARKER"}]" class="edittext" onclick="JavaScript:showDialog('&cl=ct_shoplocator_admin_marker_set_edit&aoc=1&oxid=[{$oxid}]');">
            [{/if}]
        </td>
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
