[{capture assign="shoplocatorData"}]
    (function ($) {
        "use strict";

        $(window).load(function(){
            // Animations Init // -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

            if ($().appear) {
                if (window.screen.width < 998) {
                    $("body").removeClass("cssAnimate");
                } else {
                    $('.cssAnimate .animated').appear(function () {
                        var $this = $(this);

                        $this.each(function () {
                            if ($this.data('time') != undefined) {
                                setTimeout(function () {
                                    $this.addClass('activate');
                                    $this.addClass($this.data('fx'));
                                }, $this.data('time'));
                            } else {
                                $this.addClass('activate');
                                $this.addClass($this.data('fx'));
                            }
                        });
                    }, {accX: 50, accY: -350});
                }
            }
        });

        $(document).ready(function () {

            $("[data-toggle='tooltip']").tooltip();

            /* ======================= */
            /* ==== TO TOP BUTTON ==== */


            $('#toTop').click(function () {
                $("body,html").animate({scrollTop: 0}, 600);
                return false;
            });

            /* ========================== */
            /* ==== SCROLL TO SECTION ==== */

            $('.ct-js-btnScroll[href^="#"]').click( function (e) {
                e.preventDefault();

                var target = this.hash, $target = $(target);

                $('html, body').stop().animate({
                    'scrollTop': $target.offset().top
                }, 900, 'swing', function () {
                    window.location.hash = target;
                });
            });

            $(window).scroll(function () {
                if ($(this).scrollTop() != 0) {
                    $("#toTop").fadeIn(300);
                } else {
                    $("#toTop").fadeOut(250);
                }
            });

            $(".[{$map->getId()}]").ShopLocator({
                pluginStyle: "[{$map->ct_shoplocator_map__plugin_style->value}]",
                paginationStyle: [{$map->ct_shoplocator_map__pagination_style->value}],
                preloader: [{if $map->ct_shoplocator_map__preloader->value =='1'}]true[{else}]false[{/if}],
                markersIcon: '[{$map->getMarkersIcon()}]',
                json: "[{$map->getAllMarkerLink()}]",
                map:{
                    [{if $map->ct_shoplocator_map__center->value != ''}]center: [{$map->ct_shoplocator_map__center->value}],[{/if}]
                    MapType: google.maps.MapTypeId.[{$map->ct_shoplocator_map__map_type->value}], //MapTypeId.ROADMAP, MapTypeId.SATELLITE, MapTypeId.HYBRID, MapTypeId.TERRAIN
                    disableDefaultUI: [{if $map->ct_shoplocator_map__disable_default_ui->value=='1'}]true[{else}]false[{/if}],
                    [{if $map->getMapStyle()}]mapStyle: [{$map->getMapStyle()}],[{/if}]
                    draggable: [{if $map->ct_shoplocator_map__draggable->value=='1'}]true[{else}]false[{/if}],
                    disableDoubleClickZoom: [{if $map->ct_shoplocator_map__disable_double_click_zoom->value=='1'}]true[{else}]false[{/if}],
                    maxZoom: "[{$map->ct_shoplocator_map__max_zoom->value}]",
                    minZoom: "[{$map->ct_shoplocator_map__min_zoom->value}]",
                    scrollwheel: [{if $map->ct_shoplocator_map__scroll_wheel_zoom->value=='1'}]true[{else}]false[{/if}],
                    zoom: [{$map->ct_shoplocator_map__zoom->value}],
                    allMarkersInViewport: [{if $map->ct_shoplocator_map__all_markers_in_view->value=='1'}]true[{else}]false[{/if}]
                },
                [{assign var="firstMarker" value=$map->getFirstMarker()}]
                marker: {
                    latlng: [[{$firstMarker->ct_shoplocator_map_marker__lat->value}], [{$firstMarker->ct_shoplocator_map_marker__lng->value}]],
                    animation: false, //google.maps.Animation.DROP, google.maps.Animation.BOUNCE
                    title: "[{$firstMarker->ct_shoplocator_map_marker__title->value}]",
                    street: "[{$firstMarker->ct_shoplocator_map_marker__street->value}]",
                    zip: "[{$firstMarker->ct_shoplocator_map_marker__zip->value}]",
                    city: "[{$firstMarker->ct_shoplocator_map_marker__city->value}]"
                }
                [{if $map->getInfoBubble()}]
                [{assign var="infoBubble" value=$map->getInfoBubble()}]
                ,
                infoBubble: {
                    visible: [{if $infoBubble->ct_shoplocator_map_info_bubble__visible->value=='1'}]true[{else}]false[{/if}],
                    padding: [{$infoBubble->ct_shoplocator_map_info_bubble__padding->value}],
                    borderRadius: [{$infoBubble->ct_shoplocator_map_info_bubble__border_radius->value}],
                    borderWidth: [{$infoBubble->ct_shoplocator_map_info_bubble__border_width->value}],
                    borderColor: "[{$infoBubble->ct_shoplocator_map_info_bubble__border_color->value}]",
                    backgroundColor: "[{$infoBubble->ct_shoplocator_map_info_bubble__background_color->value}]",
                    shadowStyle: [{$infoBubble->ct_shoplocator_map_info_bubble__shadow_style->value}],
                    minHeight: [{$infoBubble->ct_shoplocator_map_info_bubble__min_height->value}],
                    maxHeight: [{$infoBubble->ct_shoplocator_map_info_bubble__max_height->value}],
                    minWidth: [{$infoBubble->ct_shoplocator_map_info_bubble__min_width->value}],
                    maxWidth: [{$infoBubble->ct_shoplocator_map_info_bubble__max_width->value}],
                    arrowStyle: [{$infoBubble->ct_shoplocator_map_info_bubble__arrow_style->value}],
                    arrowSize: [{$infoBubble->ct_shoplocator_map_info_bubble__arrow_size->value}],
                    arrowPosition: [{$infoBubble->ct_shoplocator_map_info_bubble__arrow_position->value}],
                    hideCloseButton: [{if $infoBubble->ct_shoplocator_map_info_bubble__close_button_hide->value=='1'}]true[{else}]false[{/if}],
                    closeSrc: "[{$infoBubble->getCloseButton()}]",
                    offsetTop: [{$infoBubble->ct_shoplocator_map_info_bubble__offset_top->value}],
                    offsetRight: [{$infoBubble->ct_shoplocator_map_info_bubble__offset_right->value}],
                    disableAutoPan: [{if $infoBubble->ct_shoplocator_map_info_bubble__disable_auto_pan->value=='1'}]true[{else}]false[{/if}],
                    getDirectionsButton: [{$infoBubble->ct_shoplocator_map_info_bubble__get_directions_button_enable->value}],
                    [{if $infoBubble->ct_shoplocator_map_info_bubble__get_directions_button_name->value}]getDirectionsButtonName: "[{$infoBubble->ct_shoplocator_map_info_bubble__get_directions_button_name->value}]",[{/if}]
                    directionsUseGeolocation: [{if $infoBubble->ct_shoplocator_map_info_bubble__get_directions_button_use_geo->value=='1'}]true[{else}]false[{/if}]
                }
                [{else}]
                ,
                infoBubble: {
                    visible: false
                }
                [{/if}]

                [{if $map->getCluster()}]
                [{assign var="cluster" value=$map->getCluster()}]
                ,
                cluster:{
                    enable: [{if $cluster->ct_shoplocator_map_cluster__enable->value=='1'}]true[{else}]false[{/if}],
                    [{if $cluster->ct_shoplocator_map_cluster__class->value}]clusterClass: "[{$cluster->ct_shoplocator_map_cluster__class->value}]",[{/if}]
                    gridSize: [{$cluster->ct_shoplocator_map_cluster__grid_size->value}],
                    maxZoom: [{$cluster->ct_shoplocator_map_cluster__max_zoom->value}],
                    style:{
                        anchorIcon: [[{$cluster->ct_shoplocator_map_cluster__style_anchor_icon_x->value}],[{$cluster->ct_shoplocator_map_cluster__style_anchor_icon_y->value}]],
                        anchorText: [[{$cluster->ct_shoplocator_map_cluster__style_anchor_text_x->value}],[{$cluster->ct_shoplocator_map_cluster__style_anchor_text_y->value}]],
                        backgroundPosition: "[{$cluster->ct_shoplocator_map_cluster__style_background_x->value}] [{$cluster->ct_shoplocator_map_cluster__style_background_y->value}]",
                        [{if $cluster->ct_shoplocator_map_cluster__style_font_family->value}]fontFamily: '[{$cluster->ct_shoplocator_map_cluster__style_font_family->value}]',[{/if}]
                        [{if $cluster->ct_shoplocator_map_cluster__style_font_style->value}]fontStyle: '[{$cluster->ct_shoplocator_map_cluster__style_font_style->value}]',[{/if}]
                        [{if $cluster->ct_shoplocator_map_cluster__style_font_color->value}]textColor: '[{$cluster->ct_shoplocator_map_cluster__style_font_color->value}]',[{/if}]
                        [{if $cluster->ct_shoplocator_map_cluster__style_font_weight->value}]fontWeight: '[{$cluster->ct_shoplocator_map_cluster__style_font_weight->value}]',[{/if}]
                        textSize: [{$cluster->ct_shoplocator_map_cluster__style_font_size->value}],
                        heightSM: [{$cluster->ct_shoplocator_map_cluster__style_small_height->value}],
                        widthSM: [{$cluster->ct_shoplocator_map_cluster__style_small_width->value}],
                        heightMD: [{$cluster->ct_shoplocator_map_cluster__style_medium_height->value}],
                        widthMD: [{$cluster->ct_shoplocator_map_cluster__style_medium_width->value}],
                        heightBIG: [{$cluster->ct_shoplocator_map_cluster__style_big_height->value}],
                        widthBIG: [{$cluster->ct_shoplocator_map_cluster__style_big_width->value}],
                        iconSmall: "[{$map->getClusterIcon('small')}]",
                        iconMedium: "[{$map->getClusterIcon('medium')}]",
                        iconBig: "[{$map->getClusterIcon('big')}]"
                    }
                }
                [{else}]
                ,
                cluster: {
                enable: false
                }
                [{/if}]

                [{if $map->getSidebar()}]
                [{assign var="sidebar" value=$map->getSidebar()}]
                ,
                sidebar: {
                    visible: [{if $sidebar->ct_shoplocator_map_sidebar__visible->value=='1'}]true[{else}]false[{/if}],
                    units: "[{$sidebar->ct_shoplocator_map_sidebar__units->value}]",
                    selectSection:{
                        visible: [{if $sidebar->ct_shoplocator_map_sidebar__select_section_visible->value=='1'}]true[{else}]false[{/if}],
                        [{if $map->getMarkerSets()>0}]
                        difFiles:
                            [
                            [{foreach from=$map->getMarkerSets() item="markerSet" name="markerSetLoop"}]
                                ["[{$markerSet->ct_shoplocator_map_marker_set__title->value}]", "[{$markerSet->getLink()}]"],
                            [{/foreach}]
                            ]
                        [{/if}]
                    },
                    searchBox: {
                        visible: [{if $sidebar->ct_shoplocator_map_sidebar__search_box_visible->value=='1'}]true[{else}]false[{/if}],
                        findPlaceBy: ["([{$sidebar->ct_shoplocator_map_sidebar__search_box_find_place_by->value}])"],
                        [{if $sidebar->ct_shoplocator_map_sidebar__search_box_filter_by_country->value}]searchByCountry: [true, "[{$sidebar->ct_shoplocator_map_sidebar__search_box_filter_by_country->value}]"],[{/if}]
                        search: [{if $sidebar->ct_shoplocator_map_sidebar__search_box_enable->value=='1'}]true[{else}]false[{/if}],
                        searchRadius: [{$sidebar->ct_shoplocator_map_sidebar__search_box_search_radius->value}]
                    },
                    results:{
                        visibleInFirstPage: [{if $sidebar->ct_shoplocator_map_sidebar__results_visible_in_first_page->value=='1'}]true[{else}]false[{/if}],
                        pageSize: [{$sidebar->ct_shoplocator_map_sidebar__results_items_per_page->value}],
                        currentPage: [{$sidebar->ct_shoplocator_map_sidebar__results_current_page->value}],
                        paginationItems: [{$sidebar->ct_shoplocator_map_sidebar__results_pagination_items->value}],
                        sort: 'ascending',
                    }
                }
                [{else}]
                ,
                sidebar: {
                    visible: false,
                    selectSection:{
                        visible: false,
                        [{if $map->getMarkerSets()>0}]
                            difFiles:
                            [
                                [{foreach from=$map->getMarkerSets() item="markerSet" name="markerSetLoop"}]
                                ["[{$markerSet->ct_shoplocator_map_marker_set__title->value}]", "[{$markerSet->getLink()}]"],
                                [{/foreach}]
                            ]
                        [{/if}]
                    },
                }
                [{/if}]
            });
        });

    }(jQuery));




    (function(){
        "use strict";

        var featurewidth = 203;

        $('.ct-featureButton').on('click', function(e){
            e.preventDefault();

            var $dropdowncontainer = $('.ct-dropdown-container');

            $(window).on('load resize', function(){
                if ($(window).width() < 480){
                    featurewidth = 130;
                }
            })  ;

            if ($($dropdowncontainer).hasClass('active')){
                $($dropdowncontainer).removeClass('active').animate({width: '130' + 'px'}, 300).animate({height: '50' + 'px'}, 150);
            }
            else{
                $($dropdowncontainer).addClass('active').animate({width: featurewidth + 'px'}, 200).animate({height: '338' + 'px'}, 300);
            }

            return false;
        });
    }(jQuery));
    [{/capture}]

[{oxscript|strip add=$shoplocatorData}]