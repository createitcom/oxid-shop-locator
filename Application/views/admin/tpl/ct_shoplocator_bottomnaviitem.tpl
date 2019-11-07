[{if $bottom_buttons->shoplocator_new}]
    <li><a [{if !$firstitem}]class="firstitem" [{assign var="firstitem" value="1"}][{/if}] id="btn.new" href="#"
           onClick="Javascript:top.oxid.admin.editThis( -1 );return false"
           target="edit">[{oxmultilang ident="CT_SHOPLOCATOR_TOOLTIP_NEW"}]</a> |
    </li>
    [{/if}]

[{$smarty.block.parent}]