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
    <input type="hidden" name="cl" value="ct_shoplocator_admin_info_bubble_edit">
    <input type="hidden" name="editlanguage" value="[{ $editlanguage }]">
</form>


[{if $oView->getError() }]
    <div class="errorbox">
        [{ $oView->getError() }]
    </div>
    [{/if}]

<form name="myedit" id="myedit" action="[{$oViewConf->getSelfLink()}]" method="post" enctype="multipart/form-data">
    [{$oViewConf->getHiddenSid()}]
    <input type="hidden" name="cl" value="ct_shoplocator_admin_info_bubble_edit">
    <input type="hidden" name="fnc" value="save">
    <input type="hidden" name="oxid" value="[{$oxid}]">
    <input type="hidden" name="editval[ct_shoplocator_map_info_bubble__oxid]" value="[{$oxid}]">

    <table border="0">
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_TITLE"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_info_bubble__title]"
                       maxlength="[{$edit->ct_shoplocator_map_info_bubble__title->fldmax_length}]" value="[{$edit->ct_shoplocator_map_info_bubble__title->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_VISIBLE"}]
            </td>
            <td class="edittext">
                <input type="checkbox" name="editval[ct_shoplocator_map_info_bubble__visible]" value='1' [{if $edit->ct_shoplocator_map_info_bubble__visible->value == 1}]checked[{/if}] [{$readonly}]>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_PADDING"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_info_bubble__padding]"
                       maxlength="[{$edit->ct_shoplocator_map_info_bubble__padding->fldmax_length}]" value="[{$edit->ct_shoplocator_map_info_bubble__padding->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_BORDER_RADIUS"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_info_bubble__border_radius]"
                       maxlength="[{$edit->ct_shoplocator_map_info_bubble__border_radius->fldmax_length}]" value="[{$edit->ct_shoplocator_map_info_bubble__border_radius->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_BORDER_WIDTH"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_info_bubble__border_radius]"
                       maxlength="[{$edit->ct_shoplocator_map_info_bubble__border_width->fldmax_length}]" value="[{$edit->ct_shoplocator_map_info_bubble__border_width->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_BORDER_COLOR"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_info_bubble__border_color]"
                       maxlength="[{$edit->ct_shoplocator_map_info_bubble__border_color->fldmax_length}]" value="[{$edit->ct_shoplocator_map_info_bubble__border_color->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_BACKGROUND_COLOR"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_info_bubble__background_color]"
                       maxlength="[{$edit->ct_shoplocator_map_info_bubble__background_color->fldmax_length}]" value="[{$edit->ct_shoplocator_map_info_bubble__background_color->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_SHADOW_STYLE"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_info_bubble__shadow_style]"
                       maxlength="[{$edit->ct_shoplocator_map_info_bubble__shadow_style->fldmax_length}]" value="[{$edit->ct_shoplocator_map_info_bubble__shadow_style->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_MIN_HEIGHT"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_info_bubble__min_height]"
                       maxlength="[{$edit->ct_shoplocator_map_info_bubble__min_height->fldmax_length}]" value="[{$edit->ct_shoplocator_map_info_bubble__min_height->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_MAX_HEIGHT"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_info_bubble__max_height]"
                       maxlength="[{$edit->ct_shoplocator_map_info_bubble__max_height->fldmax_length}]" value="[{$edit->ct_shoplocator_map_info_bubble__max_height->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_MIN_WIDTH"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_info_bubble__min_width]"
                       maxlength="[{$edit->ct_shoplocator_map_info_bubble__min_width->fldmax_length}]" value="[{$edit->ct_shoplocator_map_info_bubble__min_width->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_MAX_WIDTH"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_info_bubble__max_width]"
                       maxlength="[{$edit->ct_shoplocator_map_info_bubble__max_width->fldmax_length}]" value="[{$edit->ct_shoplocator_map_info_bubble__max_width->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_ARROW_STYLE"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_info_bubble__arrow_style]"
                       maxlength="[{$edit->ct_shoplocator_map_info_bubble__arrow_style->fldmax_length}]" value="[{$edit->ct_shoplocator_map_info_bubble__arrow_style->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_ARROW_SIZE"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_info_bubble__arrow_size]"
                       maxlength="[{$edit->ct_shoplocator_map_info_bubble__arrow_size->fldmax_length}]" value="[{$edit->ct_shoplocator_map_info_bubble__arrow_size->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_ARROW_POSITION"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_info_bubble__arrow_position]"
                       maxlength="[{$edit->ct_shoplocator_map_info_bubble__arrow_positionarrow_size->fldmax_length}]" value="[{$edit->ct_shoplocator_map_info_bubble__arrow_position->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_CLOSE_BUTTON_HIDE"}]
            </td>
            <td class="edittext">
                <input type="checkbox" name="editval[ct_shoplocator_map_info_bubble__close_button_hide]" value='1' [{if $edit->ct_shoplocator_map_info_bubble__close_button_hide->value == 1}]checked[{/if}] [{$readonly}]>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_CLOSE_BUTTON_ICON"}]
            </td>
            <td class="edittext">
                <input id="ct_shoplocator_map_info_bubble__close_button_icon" name="ct_shoplocator_map_info_bubble__close_button_icon" type="file">
                <label for="ct_shoplocator_map_info_bubble__close_button_icon">[{$edit->ct_shoplocator_map_info_bubble__close_button_icon->value}]</label>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_OFFSET_TOP"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_info_bubble__offset_top]"
                       maxlength="[{$edit->ct_shoplocator_map_info_bubble__offset_top->fldmax_length}]" value="[{$edit->ct_shoplocator_map_info_bubble__offset_top->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_OFFSET_RIGHT"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_info_bubble__offset_right]"
                       maxlength="[{$edit->ct_shoplocator_map_info_bubble__offset_right->fldmax_length}]" value="[{$edit->ct_shoplocator_map_info_bubble__offset_right->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_DISABLE_AUTO_PAN"}]
            </td>
            <td class="edittext">
                <input type="checkbox" name="editval[ct_shoplocator_map_info_bubble__disable_auto_pan]" value='1' [{if $edit->ct_shoplocator_map_info_bubble__disable_auto_pan->value == 1}]checked[{/if}] [{$readonly}]>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_GET_DIRECTIONS_BUTTON_ENABLE"}]
            </td>
            <td class="edittext">
                <input type="checkbox" name="editval[ct_shoplocator_map_info_bubble__get_directions_button_enable]" value='1' [{if $edit->ct_shoplocator_map_info_bubble__get_directions_button_enable->value == 1}]checked[{/if}] [{$readonly}]>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_GET_DIRECTIONS_BUTTON_NAME"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_info_bubble__get_directions_button_name]"
                       maxlength="[{$edit->ct_shoplocator_map_info_bubble__get_directions_button_name->fldmax_length}]" value="[{$edit->ct_shoplocator_map_info_bubble__get_directions_button_name->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_GET_DIRECTIONS_BUTTON_USE_GEO"}]
            </td>
            <td class="edittext">
                <input type="checkbox" name="editval[ct_shoplocator_map_info_bubble__get_directions_button_use_geo]" value='1' [{if $edit->ct_shoplocator_map_info_bubble__get_directions_button_use_geo->value == 1}]checked[{/if}] [{$readonly}]>
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
