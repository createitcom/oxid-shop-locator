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
    <input type="hidden" name="cl" value="ct_shoplocator_admin_cluster_edit">
    <input type="hidden" name="editlanguage" value="[{ $editlanguage }]">
</form>


[{if $oView->getError() }]
    <div class="errorbox">
        [{ $oView->getError() }]
    </div>
    [{/if}]

<form name="myedit" id="myedit" action="[{$oViewConf->getSelfLink()}]" method="post" enctype="multipart/form-data">
    [{$oViewConf->getHiddenSid()}]
    <input type="hidden" name="cl" value="ct_shoplocator_admin_cluster_edit">
    <input type="hidden" name="fnc" value="save">
    <input type="hidden" name="oxid" value="[{$oxid}]">
    <input type="hidden" name="editval[ct_shoplocator_map_cluster__oxid]" value="[{$oxid}]">

    <table border="0">
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_TITLE"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_cluster__title]"
                       maxlength="[{$edit->ct_shoplocator_map_cluster__title->fldmax_length}]" value="[{$edit->ct_shoplocator_map_cluster__title->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_ENABLE"}]
            </td>
            <td class="edittext">
                <input type="checkbox" name="editval[ct_shoplocator_map_cluster__enable]" value='1' [{if $edit->ct_shoplocator_map_cluster__enable->value == 1}]checked[{/if}] [{$readonly}]>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_CLASS"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_cluster__class]"
                       maxlength="[{$edit->ct_shoplocator_map_cluster__class->fldmax_length}]" value="[{$edit->ct_shoplocator_map_cluster__class->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_GRID_SIZE"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_cluster__grid_size]"
                       maxlength="[{$edit->ct_shoplocator_map_cluster__grid_size->fldmax_length}]" value="[{$edit->ct_shoplocator_map_cluster__grid_size->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_MAX_ZOOM"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_cluster__max_zoom]"
                       maxlength="[{$edit->ct_shoplocator_map_cluster__max_zoom->fldmax_length}]" value="[{$edit->ct_shoplocator_map_cluster__max_zoom->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_STYLE_ANCHOR_ICON_X"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_cluster__style_anchor_icon_x]"
                       maxlength="[{$edit->ct_shoplocator_map_cluster__style_anchor_icon_x->fldmax_length}]" value="[{$edit->ct_shoplocator_map_cluster__style_anchor_icon_x->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_STYLE_ANCHOR_ICON_Y"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_cluster__style_anchor_icon_y]"
                       maxlength="[{$edit->ct_shoplocator_map_cluster__style_anchor_icon_y->fldmax_length}]" value="[{$edit->ct_shoplocator_map_cluster__style_anchor_icon_y->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_STYLE_ANCHOR_TEXT_X"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_cluster__style_anchor_text_x]"
                       maxlength="[{$edit->ct_shoplocator_map_cluster__style_anchor_text_x->fldmax_length}]" value="[{$edit->ct_shoplocator_map_cluster__style_anchor_text_x->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_STYLE_ANCHOR_TEXT_Y"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_cluster__style_anchor_text_y]"
                       maxlength="[{$edit->ct_shoplocator_map_cluster__style_anchor_text_y->fldmax_length}]" value="[{$edit->ct_shoplocator_map_cluster__style_anchor_text_y->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_STYLE_BACKGROUND_X"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_cluster__style_background_x]"
                       maxlength="[{$edit->ct_shoplocator_map_cluster__style_background_x->fldmax_length}]" value="[{$edit->ct_shoplocator_map_cluster__style_background_x->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_STYLE_BACKGROUND_Y"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_cluster__style_background_y]"
                       maxlength="[{$edit->ct_shoplocator_map_cluster__style_background_y->fldmax_length}]" value="[{$edit->ct_shoplocator_map_cluster__style_background_y->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_STYLE_FONT_FAMILY"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_cluster__style_font_family]"
                       maxlength="[{$edit->ct_shoplocator_map_cluster__style_font_family->fldmax_length}]" value="[{$edit->ct_shoplocator_map_cluster__style_font_family->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_STYLE_FONT_STYLE"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_cluster__style_font_style]"
                       maxlength="[{$edit->ct_shoplocator_map_cluster__style_font_style->fldmax_length}]" value="[{$edit->ct_shoplocator_map_cluster__style_font_style->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_STYLE_FONT_COLOR"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_cluster__style_font_color]"
                       maxlength="[{$edit->ct_shoplocator_map_cluster__style_font_color->fldmax_length}]" value="[{$edit->ct_shoplocator_map_cluster__style_font_color->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_STYLE_FONT_WEIGHT"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_cluster__style_font_weight]"
                       maxlength="[{$edit->ct_shoplocator_map_cluster__style_font_weight->fldmax_length}]" value="[{$edit->ct_shoplocator_map_cluster__style_font_weight->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_STYLE_FONT_SIZE"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_cluster__style_font_size]"
                       maxlength="[{$edit->ct_shoplocator_map_cluster__style_font_size->fldmax_length}]" value="[{$edit->ct_shoplocator_map_cluster__style_font_size->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_STYLE_SMALL_HEIGHT"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_cluster__style_small_height]"
                       maxlength="[{$edit->ct_shoplocator_map_cluster__style_small_height->fldmax_length}]" value="[{$edit->ct_shoplocator_map_cluster__style_small_height->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_STYLE_SMALL_WIDTH"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_cluster__style_small_width]"
                       maxlength="[{$edit->ct_shoplocator_map_cluster__style_small_width->fldmax_length}]" value="[{$edit->ct_shoplocator_map_cluster__style_small_width->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_STYLE_MEDIUM_HEIGHT"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_cluster__style_medium_height]"
                       maxlength="[{$edit->ct_shoplocator_map_cluster__style_medium_height->fldmax_length}]" value="[{$edit->ct_shoplocator_map_cluster__style_medium_height->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_STYLE_MEDIUM_WIDTH"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_cluster__style_medium_width]"
                       maxlength="[{$edit->ct_shoplocator_map_cluster__style_medium_width->fldmax_length}]" value="[{$edit->ct_shoplocator_map_cluster__style_medium_width->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_STYLE_BIG_HEIGHT"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_cluster__style_big_height]"
                       maxlength="[{$edit->ct_shoplocator_map_cluster__style_big_height->fldmax_length}]" value="[{$edit->ct_shoplocator_map_cluster__style_big_height->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_STYLE_BIG_WIDTH"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_cluster__style_big_width]"
                       maxlength="[{$edit->ct_shoplocator_map_cluster__style_big_width->fldmax_length}]" value="[{$edit->ct_shoplocator_map_cluster__style_big_width->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_STYLE_SMALL_ICON"}]
            </td>
            <td class="edittext">
                <input id="ct_shoplocator_map_cluster__style_small_icon" name="ct_shoplocator_map_cluster__style_small_icon" type="file">
                <label for="ct_shoplocator_map_cluster__style_small_icon">[{$edit->ct_shoplocator_map_cluster__style_small_icon->value}]</label>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_STYLE_MEDIUM_ICON"}]
            </td>
            <td class="edittext">
                <input id="ct_shoplocator_map_cluster__style_medium_icon" name="ct_shoplocator_map_cluster__style_medium_icon" type="file">
                <label for="ct_shoplocator_map_cluster__style_medium_icon">[{$edit->ct_shoplocator_map_cluster__style_medium_icon->value}]</label>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_STYLE_BIG_ICON"}]
            </td>
            <td class="edittext">
                <input id="ct_shoplocator_map_cluster__style_big_icon" name="ct_shoplocator_map_cluster__style_big_icon" type="file">
                <label for="ct_shoplocator_map_cluster__style_big_icon">[{$edit->ct_shoplocator_map_cluster__style_big_icon->value}]</label>
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
