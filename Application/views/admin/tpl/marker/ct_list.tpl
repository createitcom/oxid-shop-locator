[{include file="headitem.tpl" title="GENERAL_ADMIN_TITLE"|oxmultilangassign box="list"}]
[{assign var="where" value=$oView->getListFilter()}]

[{if $readonly}]
    [{assign var="readonly" value="readonly disabled"}]
    [{else}]
    [{assign var="readonly" value=""}]
[{/if}]

<script type="text/javascript">
    <!--
    window.onload = function ()
    {
        top.reloadEditFrame();
        [{if $updatelist == 1}]
        top.oxid.admin.updateList('[{$oxid}]');
        [{/if}]
    }
    //-->
</script>

<div id="liste">

<form name="search" id="search" action="[{$oViewConf->getSelfLink()}]" method="post">
    [{include file="_formparams.tpl" cl="ct_shoplocator_admin_marker_list_controller" lstrt=$lstrt actedit=$actedit oxid=$oxid fnc="" language=$actlang editlanguage=$actlang}]
    <table cellspacing="0" cellpadding="0" border="0" width="100%">
        <colgroup>
            <col width="3%">
            <col width="40%">
            <col width="56%">
            <col width="1%">
        </colgroup>
        <tr class="listitem">
            <td valign="top" class="listfilter first" align="right">
                <div class="r1"><div class="b1">&nbsp;</div></div>
            </td>
            <td valign="top" class="listfilter">
                <div class="r1"><div class="b1">
                        <input class="listedit" type="text" size="50" maxlength="128" name="where[ct_shoplocator_map_marker][title]" value="[{$where.ct_shoplocator_map_marker.title}]">
                    </div></div>
            </td>
            <td valign="top" class="listfilter">
                <div class="r1"><div class="b1">
                        <input class="listedit" type="text" size="50" maxlength="128" name="where[ct_shoplocator_map_marker][city]" value="[{$where.ct_shoplocator_map_marker.city}]">
                    </div></div>
            </td>
            <td valign="top" class="listfilter">
                <div class="r1"><div class="b1">
                        <input class="listedit" type="text" size="50" maxlength="128" name="where[ct_shoplocator_map_marker][street]" value="[{$where.ct_shoplocator_map_marker.street}]">
                    </div></div>
            </td>
            <td valign="top" class="listfilter">
                <div class="r1"><div class="b1">
                        <input class="listedit" type="text" size="50" maxlength="128" name="where[ct_shoplocator_map_marker][zip]" value="[{$where.ct_shoplocator_map_marker.zip}]">
                    </div></div>
            </td>
            <td valign="top" class="listfilter" height="20" colspan="2">
                <div class="r1"><div class="b1">
                        <div class="find">
                            <select name="changelang" class="editinput" onChange="Javascript:top.oxid.admin.changeLanguage();">
                                [{foreach from=$languages item=lang}]
                                <option value="[{$lang->id}]" [{if $lang->selected}]SELECTED[{/if}]>[{$lang->name}]</option>
                                [{/foreach}]
                            </select>
                            <input class="listedit" type="submit" name="submitit" value="[{oxmultilang ident="GENERAL_SEARCH"}]">
                        </div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td class="listheader first" height="15"></td>
            <td class="listheader" height="15">&nbsp;<a href="Javascript:top.oxid.admin.setSorting( document.search, 'ct_shoplocator_map_marker', 'title', 'asc');document.search.submit();" class="listheader">[{oxmultilang ident="GENERAL_TITLE"}]</a></td>
            <td class="listheader" height="15" colspan="1"><a href="Javascript:top.oxid.admin.setSorting( document.search, 'ct_shoplocator_map_marker', 'city', 'asc');document.search.submit();" class="listheader">[{oxmultilang ident="CT_SHOPLOCATOR_MAP_CITY"}]</a></td>
            <td class="listheader" height="15" colspan="1"><a href="Javascript:top.oxid.admin.setSorting( document.search, 'ct_shoplocator_map_marker', 'street', 'asc');document.search.submit();" class="listheader">[{oxmultilang ident="CT_SHOPLOCATOR_MAP_STREET"}]</a></td>
            <td class="listheader" height="15" colspan="1"><a href="Javascript:top.oxid.admin.setSorting( document.search, 'ct_shoplocator_map_marker', 'zip', 'asc');document.search.submit();" class="listheader">[{oxmultilang ident="CT_SHOPLOCATOR_MAP_ZIP"}]</a></td>
        </tr>
        [{assign var="blWhite" value=""}]
        [{assign var="_cnt" value=0}]
        [{foreach from=$mylist item=listitem}]
        [{assign var="_cnt" value=$_cnt+1}]
        <tr id="row.[{$_cnt}]">
            [{if $listitem->blacklist == 1}]
            [{assign var="listclass" value=listitem3}]
            [{else}]
            [{assign var="listclass" value=listitem$blWhite}]
            [{/if}]
            [{if $listitem->getId() == $oxid}]
            [{assign var="listclass" value=listitem4}]
            [{/if}]
            <td valign="top" class="[{$listclass}]" height="15"></td>
            <td valign="top" class="[{$listclass}]" height="15"><div class="listitemfloating"><a href="Javascript:top.oxid.admin.editThis('[{$listitem->ct_shoplocator_map_marker__oxid->value}]');" class="[{$listclass}]">[{$listitem->ct_shoplocator_map_marker__title->value}]</a></div></td>
            <td valign="top" class="[{$listclass}]" height="15"><div class="listitemfloating"><a href="Javascript:top.oxid.admin.editThis('[{$listitem->ct_shoplocator_map_marker__oxid->value}]');" class="[{$listclass}]">[{$listitem->ct_shoplocator_map_marker__city->value}]</a></div></td>
            <td valign="top" class="[{$listclass}]" height="15"><div class="listitemfloating"><a href="Javascript:top.oxid.admin.editThis('[{$listitem->ct_shoplocator_map_marker__oxid->value}]');" class="[{$listclass}]">[{$listitem->ct_shoplocator_map_marker__street->value}]</a></div></td>
            <td valign="top" class="[{$listclass}]" height="15"><div class="listitemfloating"><a href="Javascript:top.oxid.admin.editThis('[{$listitem->ct_shoplocator_map_marker__oxid->value}]');" class="[{$listclass}]">[{$listitem->ct_shoplocator_map_marker__zip->value}]</a></div></td>
            <td class="[{$listclass}]" align="right">
                <a href="Javascript:top.oxid.admin.deleteThis('[{$listitem->ct_shoplocator_map_marker__oxid->value}]');" class="delete" id="del.[{$_cnt}]" title="" [{include file="help.tpl" helpid=item_delete}]></a>
            </td>
        </tr>
        [{if $blWhite == "2"}]
        [{assign var="blWhite" value=""}]
        [{else}]
        [{assign var="blWhite" value="2"}]
        [{/if}]
        [{/foreach}]
        [{include file="pagenavisnippet.tpl" colspan="6"}]
    </table>
    [{include file="pagetabsnippet.tpl"}]
</form>
</div>

<script type="text/javascript">
    if (parent.parent != null && parent.parent.setTitle )
    {   parent.parent.sShopTitle   = "[{$actshopobj->oxshops__oxname->getRawValue()|oxaddslashes}]";
        parent.parent.sMenuItem    = "[{oxmultilang ident="SHOP_LIST_MENUITEM"}]";
        parent.parent.sMenuSubItem = "[{oxmultilang ident="SHOP_LIST_MENUSUBITEM"}]";
        parent.parent.sWorkArea    = "[{$_act}]";
        parent.parent.setTitle();
    }
</script>
</body>
</html>
