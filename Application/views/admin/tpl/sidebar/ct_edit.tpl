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
    <input type="hidden" name="cl" value="ct_shoplocator_admin_sidebar_edit">
    <input type="hidden" name="editlanguage" value="[{ $editlanguage }]">
</form>


[{if $oView->getError() }]
    <div class="errorbox">
        [{ $oView->getError() }]
    </div>
    [{/if}]

<form name="myedit" id="myedit" action="[{$oViewConf->getSelfLink()}]" method="post">
    [{$oViewConf->getHiddenSid()}]
    <input type="hidden" name="cl" value="ct_shoplocator_admin_sidebar_edit">
    <input type="hidden" name="fnc" value="save">
    <input type="hidden" name="oxid" value="[{$oxid}]">
    <input type="hidden" name="editval[ct_shoplocator_map_sidebar__oxid]" value="[{$oxid}]">

    <table border="0">
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_TITLE"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_sidebar__title]"
                       maxlength="[{$edit->ct_shoplocator_map_sidebar__title->fldmax_length}]" value="[{$edit->ct_shoplocator_map_sidebar__title->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_VISIBLE"}]
            </td>
            <td class="edittext">
                <input type="checkbox" name="editval[ct_shoplocator_map_sidebar__visible]" value='1' [{if $edit->ct_shoplocator_map_sidebar__visible->value == 1}]checked[{/if}] [{$readonly}]>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_UNITS"}]
            </td>
            <td class="edittext">
                <select name="editval[ct_shoplocator_map_sidebar__units]">
                    [{foreach from=$oView->getSupportedUnits() item="unit"}]
                    <option value="[{$unit}]"[{if $edit->ct_shoplocator_map_sidebar__units->value == $unit}] selected="selected"[{/if}]>[{$unit}]</option>
                    [{/foreach}]
                </select>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_SELECT_SECTION_VISIBLE"}]
            </td>
            <td class="edittext">
                <input type="checkbox" name="editval[ct_shoplocator_map_sidebar__select_section_visible]" value='1' [{if $edit->ct_shoplocator_map_sidebar__select_section_visible->value == 1}]checked[{/if}] [{$readonly}]>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_SEARCH_BOX_VISIBLE"}]
            </td>
            <td class="edittext">
                <input type="checkbox" name="editval[ct_shoplocator_map_sidebar__search_box_visible]" value='1' [{if $edit->ct_shoplocator_map_sidebar__search_box_visible->value == 1}]checked[{/if}] [{$readonly}]>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_SEARCH_BOX_FIND_PLACE_BY"}]
            </td>
            <td class="edittext">
                <select name="editval[ct_shoplocator_map_sidebar__search_box_find_place_by]">
                    [{foreach from=$oView->getSupportedPlaces() item="place"}]
                    <option value="[{$place}]"[{if $edit->ct_shoplocator_map_sidebar__search_box_find_place_by->value == $place}] selected="selected"[{/if}]>[{$place}]</option>
                    [{/foreach}]
                </select>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_SEARCH_BOX_FILTER_BY_COUNTRY"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_sidebar__search_box_filter_by_country]"
                       maxlength="[{$edit->ct_shoplocator_map_sidebar__search_box_filter_by_country->fldmax_length}]" value="[{$edit->ct_shoplocator_map_sidebar__search_box_filter_by_country->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_SEARCH_BOX_ENABLE"}]
            </td>
            <td class="edittext">
                <input type="checkbox" name="editval[ct_shoplocator_map_sidebar__search_box_enable]" value='1' [{if $edit->ct_shoplocator_map_sidebar__search_box_enable->value == 1}]checked[{/if}] [{$readonly}]>
             </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_SEARCH_BOX_SEARCH_RADIUS"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_sidebar__search_box_search_radius]"
                       maxlength="[{$edit->ct_shoplocator_map_sidebar__search_box_search_radius->fldmax_length}]" value="[{$edit->ct_shoplocator_map_sidebar__search_box_search_radius->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_RESULTS_VISIBLE_IN_FIRST_PAGE"}]
            </td>
            <td class="edittext">
                <input type="checkbox" name="editval[ct_shoplocator_map_sidebar__results_visible_in_first_page]" value='1' [{if $edit->ct_shoplocator_map_sidebar__results_visible_in_first_page->value == 1}]checked[{/if}] [{$readonly}]>
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_RESULTS_ITEMS_PER_PAGE"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_sidebar__results_items_per_page]"
                       maxlength="[{$edit->ct_shoplocator_map_sidebar__results_items_per_page->fldmax_length}]" value="[{$edit->ct_shoplocator_map_sidebar__results_items_per_page->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_RESULTS_CURRENT_PAGE"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_sidebar__results_current_page]"
                       maxlength="[{$edit->ct_shoplocator_map_sidebar__results_current_page->fldmax_length}]" value="[{$edit->ct_shoplocator_map_sidebar__results_current_page->value}]">
            </td>
        </tr>
        <tr>
            <td class="edittext">
                [{oxmultilang ident="CT_SHOPLOCATOR_MAP_RESULTS_PAGINATION_ITEMS"}]
            </td>
            <td class="edittext">
                <input type="text" name="editval[ct_shoplocator_map_sidebar__results_pagination_items]"
                       maxlength="[{$edit->ct_shoplocator_map_sidebar__results_pagination_items->fldmax_length}]" value="[{$edit->ct_shoplocator_map_sidebar__results_pagination_items->value}]">
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
