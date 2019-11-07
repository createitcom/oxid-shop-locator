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
    <input type="hidden" name="cl" value="ct_shoplocator_admin_map_edit">
    <input type="hidden" name="editlanguage" value="[{ $editlanguage }]">
</form>


[{if $oView->getError() }]
    <div class="errorbox">
        [{ $oView->getError() }]
    </div>
    [{/if}]

<form name="myedit" id="myedit" action="[{$oViewConf->getSelfLink()}]" method="post" enctype="multipart/form-data">
    [{$oViewConf->getHiddenSid()}]
    <input type="hidden" name="cl" value="ct_shoplocator_admin_map_edit">
    <input type="hidden" name="fnc" value="save">
    <input type="hidden" name="oxid" value="[{$oxid}]">
    <input type="hidden" name="editval[ct_shoplocator_map__oxid]" value="[{$oxid}]">

    <table border="0">
        [{if $oxid!= '-1'}]
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_ID"}]
            </td>
            <td class="edittext">
                <span><strong>[{$oxid}]</strong></span>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_BASE_LINK"}]
            </td>
            <td class="edittext">
                <span><strong><a href="[{$edit->getLink()}]" target="_blank">[{$edit->getLink()}]</a></strong></span>
            </td>
        </tr>
        <tr style="height:20px;"></tr>
        [{/if}]
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_TITLE"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map__title]"
                       maxlength="[{$edit->ct_shoplocator_map__title->fldmax_length}]" value="[{$edit->ct_shoplocator_map__title->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_PLUGIN_STYLE"}]
            </td>
            <td class="edittext">
                <select name="editval[ct_shoplocator_map__plugin_style]">
                    <option value="">None</option>
                    [{foreach from=$oView->geAvailableStyles() item="style"}]
                    <option value="[{$style}]"[{if $edit->ct_shoplocator_map__plugin_style->value === $style}] selected="selected"[{/if}]>[{$style}]</option>
                    [{/foreach}]
                </select>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_PAGINATION_STYLE"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map__pagination_style]"
                       maxlength="[{$edit->ct_shoplocator_map__pagination_style->fldmax_length}]" value="[{$edit->ct_shoplocator_map__pagination_style->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_PRELOADER"}]
            </td>
            <td class="edittext">
                <input type="checkbox" name="editval[ct_shoplocator_map__preloader]" value='1' [{if $edit->ct_shoplocator_map__preloader->value == 1}]checked[{/if}] [{$readonly}]>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_MARKERS_ICON"}]
            </td>
            <td class="edittext">
                <input id="ct_shoplocator_map__markers_icon" name="ct_shoplocator_map__markers_icon" type="file">
                <label for="ct_shoplocator_map__markers_icon">[{$edit->ct_shoplocator_map__markers_icon->value}]</label>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_MAP_TYPE"}]
            </td>
            <td class="edittext">
                <select name="editval[ct_shoplocator_map__map_type]">
                    [{foreach from=$oView->getMapType() item="type"}]
                    <option value="[{$type}]"[{if $edit->ct_shoplocator_map__map_type->value === $type}] selected="selected"[{/if}]>[{$type}]</option>
                    [{/foreach}]
                </select>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_DISABLE_DEFAULT_UI"}]
            </td>
            <td class="edittext">
                <input type="checkbox" name="editval[ct_shoplocator_map__disable_default_ui]" value='1' [{if $edit->ct_shoplocator_map__disable_default_ui->value == 1}]checked[{/if}] [{$readonly}]>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_DRAGGABLE"}]
            </td>
            <td class="edittext">
                <input type="checkbox" name="editval[ct_shoplocator_map__draggable]" value='1' [{if $edit->ct_shoplocator_map__draggable->value == 1}]checked[{/if}] [{$readonly}]>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_DISABLE_DOUBLE_CLICK_ZOOM"}]
            </td>
            <td class="edittext">
                <input type="checkbox" name="editval[ct_shoplocator_map__disable_double_click_zoom]" value='1' [{if $edit->ct_shoplocator_map__disable_double_click_zoom->value == 1}]checked[{/if}] [{$readonly}]>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_ZOOM"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map__zoom]"
                       maxlength="[{$edit->ct_shoplocator_map__zoom->fldmax_length}]" value="[{$edit->ct_shoplocator_map__zoom->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_MAX_ZOOM"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map__max_zoom]"
                       maxlength="[{$edit->ct_shoplocator_map__max_zoom->fldmax_length}]" value="[{$edit->ct_shoplocator_map__max_zoom->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_MIN_ZOOM"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map__min_zoom]"
                       maxlength="[{$edit->ct_shoplocator_map__min_zoom->fldmax_length}]" value="[{$edit->ct_shoplocator_map__min_zoom->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_SCROLL_WHEEL_ZOOM"}]
            </td>
            <td class="edittext">
                <input type="checkbox" name="editval[ct_shoplocator_map__scroll_wheel_zoom]" value='1' [{if $edit->ct_shoplocator_map__scroll_wheel_zoom->value == 1}]checked[{/if}] [{$readonly}]>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_ALL_MARKERS_IN_VIEW"}]
            </td>
            <td class="edittext">
                <input type="checkbox" name="editval[ct_shoplocator_map__all_markers_in_view]" value='1' [{if $edit->ct_shoplocator_map__all_markers_in_view->value == 1}]checked[{/if}] [{$readonly}]>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_MAP_STYLE"}]
            </td>
            <td class="edittext">
                <textarea class="editinput" cols="100" rows="15" wrap="VIRTUAL" name="editval[ct_shoplocator_map__map_style]">
                    [{$edit->ct_shoplocator_map__map_style->value}]
                </textarea>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_CENTER"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map__center]" value="[{$edit->ct_shoplocator_map__center->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_MAP_CLUSTER_ID"}]
            </td>
            <td class="edittext">
                <select name="editval[ct_shoplocator_map__cluster_id]">
                    <option value="-1">None</option>
                    [{foreach from=$oView->getOptions('ct_shoplocator_map_cluster') item="cluster"}]
                    <option value="[{$cluster.oxid}]"[{if $edit->ct_shoplocator_map__cluster_id->value === $cluster.oxid}] selected="selected"[{/if}]>[{$cluster.title}]</option>
                    [{/foreach}]
                </select>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_INFO_BUBBLE_ID"}]
            </td>
            <td class="edittext">
                <select name="editval[ct_shoplocator_map__info_bubble_id]">
                    <option value="-1">None</option>
                    [{foreach from=$oView->getOptions('ct_shoplocator_map_info_bubble') item="info_bubble"}]
                    <option value="[{$info_bubble.oxid}]"[{if $edit->ct_shoplocator_map__info_bubble_id->value === $info_bubble.oxid}] selected="selected"[{/if}]>[{$info_bubble.title}]</option>
                    [{/foreach}]
                </select>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_SIDEBAR_ID"}]
            </td>
            <td class="edittext">
                <select name="editval[ct_shoplocator_map__sidebar_id]">
                    <option value="-1">None</option>
                    [{foreach from=$oView->getOptions('ct_shoplocator_map_sidebar') item="sidebar"}]
                    <option value="[{$sidebar.oxid}]"[{if $edit->ct_shoplocator_map__sidebar_id->value === $sidebar.oxid}] selected="selected"[{/if}]>[{$sidebar.title}]</option>
                    [{/foreach}]
                </select>
            </td>
        </tr>
        <td valign="top" class="edittext" align="left" width="50%">
            [{if $oxid != "-1"}]
        <input [{$readonly}] type="button" name="assignArticle" value="[{oxmultilang ident="CT_SHOPLOCATOR_MAP_ASSIGN_MARKER_SETS"}]" class="edittext" onclick="JavaScript:showDialog('&cl=ct_shoplocator_admin_map_edit&aoc=1&oxid=[{$oxid}]');">
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
