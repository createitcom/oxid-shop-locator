(function ($) {
    "use strict";

    $(window).load(function () {
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

        $('.ct-js-btnScroll[href^="#"]').click(function (e) {
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


        $(".firstExample").ShopLocator({
            pluginStyle: "cosmic",
            paginationStyle: 2,
            infoBubble: {
                visible: true,
                arrowPosition: 50,
                minHeight: 112,
                maxHeight: null,
                minWidth: 170,
                maxWidth: 250
            },
            markersIcon: "src/style/cosmic/images/marker.png",
            map: {
                mapStyle: [{
                    "featureType": "administrative",
                    "elementType": "labels.text.fill",
                    "stylers": [{"color": "#7d8d97"}]
                }, {
                    "featureType": "landscape",
                    "elementType": "all",
                    "stylers": [{"color": "#f2f2f2"}]
                }, {
                    "featureType": "landscape",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#f2f5f6"}]
                }, {
                    "featureType": "poi",
                    "elementType": "all",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "poi.attraction",
                    "elementType": "all",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "poi.park",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#e6f3d6"}, {"visibility": "off"}]
                }, {
                    "featureType": "road",
                    "elementType": "all",
                    "stylers": [{"saturation": -100}, {"lightness": 45}, {"visibility": "off"}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "all",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#f4d2c5"}, {"visibility": "simplified"}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "labels.text",
                    "stylers": [{"color": "#4e4e4e"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#f4f4f4"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "labels.text.fill",
                    "stylers": [{"color": "#787878"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "labels.icon",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "transit",
                    "elementType": "all",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "water",
                    "elementType": "all",
                    "stylers": [{"visibility": "on"}, {"hue": "#ff0000"}, {"saturation": "-100"}, {"lightness": "45"}]
                }, {"featureType": "water", "elementType": "geometry.fill", "stylers": [{"color": "#cddbe2"}]}]
            },
            marker: {
                animation: google.maps.Animation.DROP
            },
            cluster: {
                enable: true,
                gridSize: 50,
                style: {
                    textColor: '#4757a3',
                    textSize: 18,
                    heightSM: 42,
                    widthSM: 42,
                    heightMD: 56,
                    widthMD: 56,
                    heightBIG: 75,
                    widthBIG: 75,
                    iconSmall: "src/style/cosmic/images/clusterSmall.png",
                    iconMedium: "src/style/cosmic/images/clusterMedium.png",
                    iconBig: "src/style/cosmic/images/clusterBig.png"
                }
            },
            sidebar: {
                visible: true,
                selectSection: {
                    visible: true
                },
                searchBox: {
                    visible: true,
                    search: true
                },
                results: {
                    pageSize: 8
                }
            }
        });

        $(".secondExample").ShopLocator({
            infoBubble: {
                visible: true
            },
            map: {
                allMarkersInViewport: false,
                scrollwheel: false
            },
            marker: {
                latlng: [52.2296760, 21.0122290],
                title: "CreateIT",
                street: "ul. Narbutta 22/15",
                zip: "+48 22 378 3 379",
                city: "Warszawa"
            }
        });

        $(".thirdExample").ShopLocator({
            pluginStyle: "cosmic",
            json: "src/json/markers.json",
            infoBubble: {
                visible: true,
                arrowPosition: 50,
                minHeight: 112,
                maxHeight: null,
                minWidth: 170,
                maxWidth: 250
            },
            markersIcon: "src/style/cosmic/images/marker.png",
            cluster: {
                enable: true,
                gridSize: 50,
                style: {
                    textColor: '#4757a3',
                    textSize: 18,
                    heightSM: 42,
                    widthSM: 42,
                    heightMD: 56,
                    widthMD: 56,
                    heightBIG: 75,
                    widthBIG: 75,
                    iconSmall: "src/style/cosmic/images/clusterSmall.png",
                    iconMedium: "src/style/cosmic/images/clusterMedium.png",
                    iconBig: "src/style/cosmic/images/clusterBig.png"
                }
            }
        });

        $(".fourthExample").ShopLocator({
            pluginStyle: "cosmic",
            paginationStyle: 2,
            infoBubble: {
                visible: true,
                arrowPosition: 50,
                minHeight: 112,
                maxHeight: null,
                minWidth: 170,
                maxWidth: 250
            },
            markersIcon: "src/style/cosmic/images/marker.png",
            map: {
                scrollwheel: false,
                mapStyle: [{
                    "featureType": "administrative",
                    "elementType": "labels.text.fill",
                    "stylers": [{"color": "#7d8d97"}]
                }, {
                    "featureType": "landscape",
                    "elementType": "all",
                    "stylers": [{"color": "#f2f2f2"}]
                }, {
                    "featureType": "landscape",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#f2f5f6"}]
                }, {
                    "featureType": "poi",
                    "elementType": "all",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "poi.attraction",
                    "elementType": "all",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "poi.park",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#e6f3d6"}, {"visibility": "off"}]
                }, {
                    "featureType": "road",
                    "elementType": "all",
                    "stylers": [{"saturation": -100}, {"lightness": 45}, {"visibility": "off"}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "all",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#f4d2c5"}, {"visibility": "simplified"}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "labels.text",
                    "stylers": [{"color": "#4e4e4e"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#f4f4f4"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "labels.text.fill",
                    "stylers": [{"color": "#787878"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "labels.icon",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "transit",
                    "elementType": "all",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "water",
                    "elementType": "all",
                    "stylers": [{"visibility": "on"}, {"hue": "#ff0000"}, {"saturation": "-100"}, {"lightness": "45"}]
                }, {"featureType": "water", "elementType": "geometry.fill", "stylers": [{"color": "#cddbe2"}]}]
            },
            cluster: {
                enable: true,
                gridSize: 50,
                style: {
                    textColor: '#4757a3',
                    textSize: 18,
                    heightSM: 42,
                    widthSM: 42,
                    heightMD: 56,
                    widthMD: 56,
                    heightBIG: 75,
                    widthBIG: 75,
                    iconSmall: "src/style/cosmic/images/clusterSmall.png",
                    iconMedium: "src/style/cosmic/images/clusterMedium.png",
                    iconBig: "src/style/cosmic/images/clusterBig.png"
                }
            },
            sidebar: {
                visible: true,
                selectSection: {
                    visible: true
                },
                searchBox: {
                    visible: true,
                    search: true
                },
                results: {
                    pageSize: 8
                }
            }
        });

        $(".firstStyle").ShopLocator({
            pluginStyle: "lollipop",
            paginationStyle: 1,
            //json: "src/json/markers.json",
            infoBubble: {
                visible: true,
                backgroundColor: 'transparent',
                arrowSize: 0,
                arrowPosition: 50,
                minHeight: 127,
                maxHeight: null,
                minWidth: 170,
                maxWidth: 250,
                hideCloseButton: false
            },
            markersIcon: "src/style/lollipop/images/marker.png",
            map: {
                mapStyle: [{
                    "featureType": "all",
                    "elementType": "geometry.stroke",
                    "stylers": [{"visibility": "simplified"}]
                }, {
                    "featureType": "administrative",
                    "elementType": "all",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "administrative",
                    "elementType": "labels",
                    "stylers": [{"visibility": "simplified"}, {"color": "#a31645"}]
                }, {
                    "featureType": "landscape",
                    "elementType": "all",
                    "stylers": [{"weight": "3.79"}, {"visibility": "on"}, {"color": "#ffecf0"}]
                }, {
                    "featureType": "landscape",
                    "elementType": "geometry",
                    "stylers": [{"visibility": "on"}]
                }, {
                    "featureType": "landscape",
                    "elementType": "geometry.stroke",
                    "stylers": [{"visibility": "on"}]
                }, {
                    "featureType": "poi",
                    "elementType": "all",
                    "stylers": [{"visibility": "simplified"}, {"color": "#a31645"}]
                }, {
                    "featureType": "poi",
                    "elementType": "geometry",
                    "stylers": [{"saturation": "0"}, {"lightness": "0"}, {"visibility": "off"}]
                }, {
                    "featureType": "poi",
                    "elementType": "geometry.stroke",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "poi.business",
                    "elementType": "all",
                    "stylers": [{"visibility": "simplified"}, {"color": "#d89ca8"}]
                }, {
                    "featureType": "poi.business",
                    "elementType": "geometry",
                    "stylers": [{"visibility": "on"}]
                }, {
                    "featureType": "poi.business",
                    "elementType": "geometry.fill",
                    "stylers": [{"visibility": "on"}, {"saturation": "0"}]
                }, {
                    "featureType": "poi.business",
                    "elementType": "labels",
                    "stylers": [{"color": "#a31645"}]
                }, {
                    "featureType": "poi.business",
                    "elementType": "labels.icon",
                    "stylers": [{"visibility": "simplified"}, {"lightness": "84"}]
                }, {
                    "featureType": "road",
                    "elementType": "all",
                    "stylers": [{"saturation": -100}, {"lightness": 45}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "all",
                    "stylers": [{"visibility": "simplified"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "labels.icon",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "transit",
                    "elementType": "all",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "water",
                    "elementType": "all",
                    "stylers": [{"color": "#d89ca8"}, {"visibility": "on"}]
                }, {
                    "featureType": "water",
                    "elementType": "geometry.fill",
                    "stylers": [{"visibility": "on"}, {"color": "#fedce3"}]
                }, {"featureType": "water", "elementType": "labels", "stylers": [{"visibility": "off"}]}],
                allMarkersInViewport: true
            },
            cluster: {
                enable: true,
                gridSize: 60,
                style: {
                    textColor: '#b461ce',
                    textSize: 18,
                    heightSM: 56,
                    widthSM: 56,
                    heightMD: 70,
                    widthMD: 70,
                    heightBIG: 80,
                    widthBIG: 80,
                    iconSmall: "src/style/lollipop/images/clusterSmall.png",
                    iconMedium: "src/style/lollipop/images/clusterMedium.png",
                    iconBig: "src/style/lollipop/images/clusterBig.png"
                }
            },
            sidebar: {
                visible: true,
                selectSection: {
                    visible: true
                },
                searchBox: {
                    visible: true,
                    search: true
                },
                results: {
                    pageSize: 8
                }
            }
        });

        $(".secondStyle").ShopLocator({
            pluginStyle: "cosmic",
            paginationStyle: 1,
            infoBubble: {
                visible: true,
                arrowPosition: 50,
                minHeight: 112,
                maxHeight: null,
                minWidth: 170,
                maxWidth: 250
            },
            markersIcon: "src/style/cosmic/images/marker.png",
            map: {
                mapStyle: [{
                    "featureType": "administrative",
                    "elementType": "labels.text.fill",
                    "stylers": [{"color": "#7d8d97"}]
                }, {
                    "featureType": "landscape",
                    "elementType": "all",
                    "stylers": [{"color": "#f2f2f2"}]
                }, {
                    "featureType": "landscape",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#f2f5f6"}]
                }, {
                    "featureType": "poi",
                    "elementType": "all",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "poi.attraction",
                    "elementType": "all",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "poi.park",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#e6f3d6"}, {"visibility": "off"}]
                }, {
                    "featureType": "road",
                    "elementType": "all",
                    "stylers": [{"saturation": -100}, {"lightness": 45}, {"visibility": "off"}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "all",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#f4d2c5"}, {"visibility": "simplified"}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "labels.text",
                    "stylers": [{"color": "#4e4e4e"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#f4f4f4"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "labels.text.fill",
                    "stylers": [{"color": "#787878"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "labels.icon",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "transit",
                    "elementType": "all",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "water",
                    "elementType": "all",
                    "stylers": [{"visibility": "on"}, {"hue": "#ff0000"}, {"saturation": "-100"}, {"lightness": "45"}]
                }, {"featureType": "water", "elementType": "geometry.fill", "stylers": [{"color": "#cddbe2"}]}]
            },
            cluster: {
                enable: true,
                gridSize: 50,
                style: {
                    textColor: '#4757a3',
                    textSize: 18,
                    heightSM: 42,
                    widthSM: 42,
                    heightMD: 56,
                    widthMD: 56,
                    heightBIG: 75,
                    widthBIG: 75,
                    iconSmall: "src/style/cosmic/images/clusterSmall.png",
                    iconMedium: "src/style/cosmic/images/clusterMedium.png",
                    iconBig: "src/style/cosmic/images/clusterBig.png"
                }
            },
            sidebar: {
                visible: true,
                selectSection: {
                    visible: true
                },
                searchBox: {
                    visible: true,
                    search: true
                },
                results: {
                    pageSize: 8
                }
            }
        });

        $(".thirdStyle").ShopLocator({
            pluginStyle: "pop",
            infoBubble: {
                visible: true,
                arrowPosition: 50,
                minHeight: 112,
                maxHeight: null,
                minWidth: 170,
                maxWidth: 250
            },
            markersIcon: "src/style/pop/images/marker.png",
            map: {
                mapStyle: [{
                    "featureType": "administrative",
                    "elementType": "labels.text.fill",
                    "stylers": [{"color": "#444444"}]
                }, {
                    "featureType": "administrative.locality",
                    "elementType": "labels.text",
                    "stylers": [{"visibility": "simplified"}, {"lightness": "-22"}, {"gamma": "4.97"}, {"saturation": "-57"}]
                }, {
                    "featureType": "administrative.land_parcel",
                    "elementType": "geometry.stroke",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "landscape",
                    "elementType": "all",
                    "stylers": [{"color": "#f2f2f2"}]
                }, {
                    "featureType": "poi",
                    "elementType": "all",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "poi.attraction",
                    "elementType": "all",
                    "stylers": [{"visibility": "simplified"}]
                }, {
                    "featureType": "poi.attraction",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#ffcece"}]
                }, {
                    "featureType": "poi.attraction",
                    "elementType": "labels.icon",
                    "stylers": [{"color": "#ff0000"}]
                }, {
                    "featureType": "poi.business",
                    "elementType": "all",
                    "stylers": [{"visibility": "simplified"}]
                }, {
                    "featureType": "poi.business",
                    "elementType": "labels.icon",
                    "stylers": [{"visibility": "on"}, {"invert_lightness": true}, {"gamma": "10.00"}]
                }, {
                    "featureType": "poi.park",
                    "elementType": "all",
                    "stylers": [{"color": "#9dd99b"}, {"visibility": "simplified"}, {"gamma": "2.79"}, {"lightness": "27"}, {"saturation": "4"}]
                }, {
                    "featureType": "poi.park",
                    "elementType": "labels.text",
                    "stylers": [{"color": "#54734e"}]
                }, {
                    "featureType": "road",
                    "elementType": "all",
                    "stylers": [{"saturation": -100}, {"lightness": 45}, {"visibility": "simplified"}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "all",
                    "stylers": [{"visibility": "simplified"}, {"color": "#ff8800"}, {"gamma": "1.50"}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "labels.text",
                    "stylers": [{"visibility": "simplified"}, {"saturation": "-92"}, {"color": "#ffffff"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "labels.icon",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "transit",
                    "elementType": "all",
                    "stylers": [{"visibility": "simplified"}, {"saturation": "-93"}]
                }, {
                    "featureType": "transit",
                    "elementType": "labels.icon",
                    "stylers": [{"visibility": "simplified"}, {"gamma": "1"}, {"hue": "#ff0000"}, {"saturation": "100"}, {"lightness": "0"}]
                }, {
                    "featureType": "transit.line",
                    "elementType": "all",
                    "stylers": [{"saturation": "-59"}, {"gamma": "1"}, {"lightness": "-29"}, {"weight": "0.13"}]
                }, {
                    "featureType": "transit.line",
                    "elementType": "labels",
                    "stylers": [{"visibility": "simplified"}, {"gamma": "4.71"}]
                }, {
                    "featureType": "transit.line",
                    "elementType": "labels.text",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "transit.line",
                    "elementType": "labels.text.fill",
                    "stylers": [{"visibility": "simplified"}]
                }, {
                    "featureType": "water",
                    "elementType": "all",
                    "stylers": [{"color": "#47b6bb"}, {"visibility": "on"}, {"lightness": "58"}, {"saturation": "45"}]
                }]
            },
            cluster: {
                enable: true,
                style: {
                    anchorText: [-2, 0],
                    textColor: 'white',
                    textSize: 18,
                    heightSM: 60,
                    widthSM: 54,
                    heightMD: 60,
                    widthMD: 54,
                    heightBIG: 60,
                    widthBIG: 54,
                    iconSmall: "src/style/pop/images/clusterSmall.png",
                    iconMedium: "src/style/pop/images/clusterMedium.png",
                    iconBig: "src/style/pop/images/clusterBig.png"
                }
            },
            sidebar: {
                visible: true,
                selectSection: {
                    visible: true
                },
                searchBox: {
                    visible: true,
                    search: true
                },
                results: {
                    pageSize: 8
                }
            }
        });

        $(".fourthStyle").ShopLocator({
            pluginStyle: "retro",
            paginationStyle: 1,
            infoBubble: {
                visible: true,
                arrowPosition: 50,
                minHeight: 112,
                maxHeight: null,
                minWidth: 170,
                maxWidth: 250
            },
            markersIcon: "src/style/retro/images/marker.png",
            map: {
                mapStyle: [{
                    "featureType": "all",
                    "elementType": "labels",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "administrative",
                    "elementType": "all",
                    "stylers": [{"visibility": "simplified"}, {"color": "#5b6571"}, {"lightness": "35"}]
                }, {
                    "featureType": "administrative.neighborhood",
                    "elementType": "all",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "landscape",
                    "elementType": "all",
                    "stylers": [{"visibility": "on"}, {"color": "#f3f4f4"}]
                }, {
                    "featureType": "landscape.man_made",
                    "elementType": "geometry",
                    "stylers": [{"weight": 0.9}, {"visibility": "off"}]
                }, {
                    "featureType": "poi.park",
                    "elementType": "geometry.fill",
                    "stylers": [{"visibility": "on"}, {"color": "#83cead"}]
                }, {
                    "featureType": "road",
                    "elementType": "all",
                    "stylers": [{"visibility": "on"}, {"color": "#ffffff"}]
                }, {
                    "featureType": "road",
                    "elementType": "labels",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "all",
                    "stylers": [{"visibility": "on"}, {"color": "#fee379"}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "geometry",
                    "stylers": [{"visibility": "on"}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "labels",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "labels.icon",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "road.highway.controlled_access",
                    "elementType": "labels.icon",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "all",
                    "stylers": [{"visibility": "simplified"}, {"color": "#ffffff"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "labels",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "labels.icon",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "water",
                    "elementType": "all",
                    "stylers": [{"visibility": "on"}, {"color": "#7fc8ed"}]
                }]
            },
            cluster: {
                enable: true,
                gridSize: 50,
                style: {
                    anchorText: [-2, 0],
                    textColor: '#fff',
                    textSize: 18,
                    heightSM: 55,
                    widthSM: 55,
                    heightMD: 68,
                    widthMD: 68,
                    heightBIG: 78,
                    widthBIG: 78,
                    iconSmall: "src/style/retro/images/clusterSmall.png",
                    iconMedium: "src/style/retro/images/clusterMedium.png",
                    iconBig: "src/style/retro/images/clusterBig.png"
                }
            },
            sidebar: {
                visible: true,
                selectSection: {
                    visible: true
                },
                searchBox: {
                    visible: true,
                    search: true
                },
                results: {
                    pageSize: 8
                }
            }
        });

        $(".fifthStyle").ShopLocator({
            pluginStyle: "bee",
            paginationStyle: 1,
            infoBubble: {
                visible: true,
                borderWidth: 4,
                borderColor: '#ecd05e',
                arrowPosition: 50,
                minHeight: 120,
                maxHeight: null,
                minWidth: 170,
                maxWidth: 250
            },
            map: {
                mapStyle: [{
                    "featureType": "administrative.locality",
                    "elementType": "all",
                    "stylers": [{"hue": "#2c2e33"}, {"saturation": 7}, {"lightness": 19}, {"visibility": "on"}]
                }, {
                    "featureType": "administrative.locality",
                    "elementType": "labels.text",
                    "stylers": [{"visibility": "on"}, {"saturation": "-3"}]
                }, {
                    "featureType": "administrative.locality",
                    "elementType": "labels.text.fill",
                    "stylers": [{"color": "#f39247"}]
                }, {
                    "featureType": "landscape",
                    "elementType": "all",
                    "stylers": [{"hue": "#ffffff"}, {"saturation": -100}, {"lightness": 100}, {"visibility": "simplified"}]
                }, {
                    "featureType": "poi",
                    "elementType": "all",
                    "stylers": [{"hue": "#ffffff"}, {"saturation": -100}, {"lightness": 100}, {"visibility": "off"}]
                }, {
                    "featureType": "poi.school",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#f39247"}, {"saturation": "0"}, {"visibility": "on"}]
                }, {
                    "featureType": "road",
                    "elementType": "geometry",
                    "stylers": [{"hue": "#ff6f00"}, {"saturation": "100"}, {"lightness": 31}, {"visibility": "simplified"}]
                }, {
                    "featureType": "road",
                    "elementType": "geometry.stroke",
                    "stylers": [{"color": "#f39247"}, {"saturation": "0"}]
                }, {
                    "featureType": "road",
                    "elementType": "labels",
                    "stylers": [{"hue": "#008eff"}, {"saturation": -93}, {"lightness": 31}, {"visibility": "on"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "geometry.stroke",
                    "stylers": [{"visibility": "on"}, {"color": "#f3dbc8"}, {"saturation": "0"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "labels",
                    "stylers": [{"hue": "#bbc0c4"}, {"saturation": -93}, {"lightness": -2}, {"visibility": "simplified"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "labels.text",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "road.local",
                    "elementType": "geometry",
                    "stylers": [{"hue": "#e9ebed"}, {"saturation": -90}, {"lightness": -8}, {"visibility": "simplified"}]
                }, {
                    "featureType": "transit",
                    "elementType": "all",
                    "stylers": [{"hue": "#e9ebed"}, {"saturation": 10}, {"lightness": 69}, {"visibility": "on"}]
                }, {
                    "featureType": "water",
                    "elementType": "all",
                    "stylers": [{"hue": "#e9ebed"}, {"saturation": -78}, {"lightness": 67}, {"visibility": "simplified"}]
                }]
            },
            markersIcon: "src/style/bee/images/marker.png",
            cluster: {
                enable: true,
                gridSize: 50,
                style: {
                    textColor: '#fff',
                    textSize: 18,
                    heightSM: 41,
                    widthSM: 41,
                    heightMD: 55,
                    widthMD: 55,
                    heightBIG: 71,
                    widthBIG: 71,
                    iconSmall: "src/style/bee/images/clusterSmall.png",
                    iconMedium: "src/style/bee/images/clusterMedium.png",
                    iconBig: "src/style/bee/images/clusterBig.png"
                }
            },
            sidebar: {
                visible: true,
                selectSection: {
                    visible: true
                },
                searchBox: {
                    visible: true,
                    search: true
                },
                results: {
                    pageSize: 8,
                    paginationItems: 5
                }
            }
        });
        $(".sixthStyle").ShopLocator({
            pluginStyle: "dark",
            paginationStyle: 1,
            infoBubble: {
                visible: true,
                backgroundColor: 'transparent',
                arrowPosition: 50,
                minHeight: 185,
                maxHeight: 250,
                minWidth: 185,
                maxWidth: 185,
                hideCloseButton: false,
                closeSrc: "src/style/dark/images/closeButton.png",
                offsetTop: 7,
                offsetRight: 20
            },
            map: {
                mapStyle: [{
                    "featureType": "landscape",
                    "stylers": [{"saturation": -100}, {"lightness": 65}, {"visibility": "on"}]
                }, {
                    "featureType": "poi",
                    "stylers": [{"saturation": -100}, {"lightness": 51}, {"visibility": "simplified"}]
                }, {
                    "featureType": "road.highway",
                    "stylers": [{"saturation": -100}, {"visibility": "simplified"}]
                }, {
                    "featureType": "road.arterial",
                    "stylers": [{"saturation": -100}, {"lightness": 30}, {"visibility": "on"}]
                }, {
                    "featureType": "road.local",
                    "stylers": [{"saturation": -100}, {"lightness": 40}, {"visibility": "on"}]
                }, {
                    "featureType": "transit",
                    "stylers": [{"saturation": -100}, {"visibility": "simplified"}]
                }, {
                    "featureType": "administrative.province",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "water",
                    "elementType": "labels",
                    "stylers": [{"visibility": "on"}, {"lightness": -25}, {"saturation": -100}]
                }, {
                    "featureType": "water",
                    "elementType": "geometry",
                    "stylers": [{"hue": "#ffff00"}, {"lightness": -25}, {"saturation": -97}]
                }]
            },
            markersIcon: "src/style/dark/images/marker.png",
            cluster: {
                enable: true,
                gridSize: 60,
                style: {
                    textColor: '#b9b9b9',
                    textSize: 18,
                    heightSM: 57,
                    widthSM: 57,
                    heightMD: 66,
                    widthMD: 66,
                    heightBIG: 74,
                    widthBIG: 74,
                    iconSmall: "src/style/dark/images/clusterSmall.png",
                    iconMedium: "src/style/dark/images/clusterMedium.png",
                    iconBig: "src/style/dark/images/clusterBig.png"
                }
            },
            sidebar: {
                visible: true,
                selectSection: {
                    visible: true
                },
                searchBox: {
                    visible: true,
                    search: true
                },
                results: {
                    pageSize: 8,
                    paginationItems: 5
                }
            }
        });
        $(".seventhStyle").ShopLocator({
            pluginStyle: "metro",
            paginationStyle: 1,
            infoBubble: {
                visible: true,
                backgroundColor: 'transparent',
                arrowSize: 0,
                arrowPosition: 50,
                minHeight: 127,
                maxHeight: 135,
                minWidth: 170,
                maxWidth: 250,
                hideCloseButton: false
            },
            map: {
                mapStyle: [{
                    "featureType": "landscape",
                    "stylers": [{"saturation": -100}, {"lightness": 65}, {"visibility": "on"}]
                }, {
                    "featureType": "poi",
                    "stylers": [{"saturation": -100}, {"lightness": 51}, {"visibility": "simplified"}]
                }, {
                    "featureType": "road.highway",
                    "stylers": [{"saturation": -100}, {"visibility": "simplified"}]
                }, {
                    "featureType": "road.arterial",
                    "stylers": [{"saturation": -100}, {"lightness": 30}, {"visibility": "on"}]
                }, {
                    "featureType": "road.local",
                    "stylers": [{"saturation": -100}, {"lightness": 40}, {"visibility": "on"}]
                }, {
                    "featureType": "transit",
                    "stylers": [{"saturation": -100}, {"visibility": "simplified"}]
                }, {
                    "featureType": "administrative.province",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "water",
                    "elementType": "labels",
                    "stylers": [{"visibility": "on"}, {"lightness": -25}, {"saturation": -100}]
                }, {
                    "featureType": "water",
                    "elementType": "geometry",
                    "stylers": [{"hue": "#ffff00"}, {"lightness": -25}, {"saturation": -97}]
                }]
            },
            markersIcon: "src/style/metro/images/marker.png",
            cluster: {
                enable: true,
                gridSize: 60,
                style: {
                    textColor: '#79aacf',
                    textSize: 18,
                    heightSM: 54,
                    widthSM: 54,
                    heightMD: 64,
                    widthMD: 64,
                    heightBIG: 74,
                    widthBIG: 74,
                    iconSmall: "src/style/metro/images/clusterSmall.png",
                    iconMedium: "src/style/metro/images/clusterMedium.png",
                    iconBig: "src/style/metro/images/clusterBig.png"
                }
            },
            sidebar: {
                visible: true,
                selectSection: {
                    visible: true
                },
                searchBox: {
                    visible: true,
                    search: true
                },
                results: {
                    pageSize: 8,
                    paginationItems: 5
                }
            }
        });
        $(".eighthStyle").ShopLocator({
            pluginStyle: "modern",
            paginationStyle: 1,
            infoBubble: {
                visible: true,
                backgroundColor: '#transparent',
                arrowSize: 0,
                arrowPosition: 50,
                minHeight: 127,
                maxHeight: 127,
                minWidth: 170,
                maxWidth: 250,
                hideCloseButton: false
            },
            map: {
                mapStyle: [{
                    "featureType": "administrative",
                    "elementType": "labels.text.fill",
                    "stylers": [{"color": "#444444"}]
                }, {
                    "featureType": "landscape",
                    "elementType": "all",
                    "stylers": [{"color": "#f2f2f2"}]
                }, {
                    "featureType": "poi",
                    "elementType": "all",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "road",
                    "elementType": "all",
                    "stylers": [{"saturation": -100}, {"lightness": 45}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "all",
                    "stylers": [{"visibility": "simplified"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "labels.icon",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "transit",
                    "elementType": "all",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "water",
                    "elementType": "all",
                    "stylers": [{"color": "#46bcec"}, {"visibility": "on"}]
                }]
            },
            markersIcon: "src/style/modern/images/marker.png",
            cluster: {
                enable: true,
                gridSize: 60,
                style: {
                    textColor: '#ffffff',
                    textSize: 18,
                    heightSM: 60,
                    widthSM: 60,
                    heightMD: 70,
                    widthMD: 70,
                    heightBIG: 80,
                    widthBIG: 80,
                    iconSmall: "src/style/modern/images/clusterSmall.png",
                    iconMedium: "src/style/modern/images/clusterMedium.png",
                    iconBig: "src/style/modern/images/clusterBig.png"
                }
            },
            sidebar: {
                visible: true,
                selectSection: {
                    visible: true
                },
                searchBox: {
                    visible: true,
                    search: true
                },
                results: {
                    pageSize: 8,
                    paginationItems: 5
                }
            }
        });
        $(".ninthStyle").ShopLocator({
            pluginStyle: "material",
            paginationStyle: 1,
            infoBubble: {
                visible: true,
                borderRadius: 0,
                backgroundColor: '#fff',
                arrowPosition: 50,
                minHeight: 119,
                maxHeight: 135,
                minWidth: 170,
                maxWidth: 250,
                offsetTop: 8
            },
            map: {
                mapStyle: [{
                    "featureType": "road",
                    "elementType": "labels",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "poi",
                    "elementType": "labels",
                    "stylers": [{"visibility": "off"}]
                }, {"featureType": "transit", "elementType": "labels.text", "stylers": [{"visibility": "off"}]}]
            },
            markersIcon: "src/style/material/images/marker.png",
            cluster: {
                enable: true,
                gridSize: 60,
                style: {
                    textColor: '#ffffff',
                    textSize: 18,
                    heightSM: 55,
                    widthSM: 55,
                    heightMD: 64,
                    widthMD: 64,
                    heightBIG: 71,
                    widthBIG: 71,
                    iconSmall: "src/style/material/images/clusterSmall.png",
                    iconMedium: "src/style/material/images/clusterMedium.png",
                    iconBig: "src/style/material/images/clusterBig.png"
                }
            },
            sidebar: {
                visible: true,
                selectSection: {
                    visible: true
                },
                searchBox: {
                    visible: true,
                    search: true
                },
                results: {
                    pageSize: 8,
                    paginationItems: 5
                }
            }
        });
        $(".tenthStyle").ShopLocator({
            pluginStyle: "minimalistic",
            paginationStyle: 1,
            infoBubble: {
                visible: true,
                backgroundColor: '#transparent',
                arrowSize: 0,
                arrowPosition: 50,
                minHeight: 127,
                maxHeight: 127,
                minWidth: 170,
                maxWidth: 250,
                hideCloseButton: false
            },
            map: {
                mapStyle: [{
                    "featureType": "administrative",
                    "elementType": "all",
                    "stylers": [{"hue": "#0060ff"}, {"lightness": -100}, {"visibility": "off"}, {"saturation": "-77"}]
                }, {
                    "featureType": "administrative",
                    "elementType": "labels.text.fill",
                    "stylers": [{"visibility": "on"}, {"color": "#848ea4"}]
                }, {
                    "featureType": "landscape",
                    "elementType": "geometry",
                    "stylers": [{"hue": "#0060ff"}, {"saturation": "-70"}, {"lightness": "0"}, {"visibility": "on"}]
                }, {
                    "featureType": "landscape",
                    "elementType": "geometry.fill",
                    "stylers": [{"hue": "#0050ff"}, {"saturation": "0"}, {"lightness": "0"}]
                }, {
                    "featureType": "landscape",
                    "elementType": "labels",
                    "stylers": [{"hue": "#0060ff"}, {"saturation": "-80"}, {"lightness": "-90"}, {"visibility": "off"}]
                }, {
                    "featureType": "poi",
                    "elementType": "all",
                    "stylers": [{"hue": "#0060ff"}, {"saturation": "-80"}, {"lightness": "-70"}, {"visibility": "off"}, {"gamma": "1"}]
                }, {
                    "featureType": "road",
                    "elementType": "geometry",
                    "stylers": [{"hue": "#0060ff"}, {"saturation": "-85"}, {"lightness": "60"}, {"visibility": "on"}]
                }, {
                    "featureType": "road",
                    "elementType": "labels",
                    "stylers": [{"hue": "#0060ff"}, {"saturation": "-70"}, {"lightness": "50"}, {"visibility": "off"}]
                }, {
                    "featureType": "road.local",
                    "elementType": "all",
                    "stylers": [{"hue": "#0060ff"}, {"saturation": "0"}, {"lightness": "-11"}, {"visibility": "on"}]
                }, {
                    "featureType": "transit",
                    "elementType": "geometry",
                    "stylers": [{"visibility": "simplified"}, {"hue": "#0060ff"}, {"lightness": "0"}, {"saturation": "0"}]
                }, {
                    "featureType": "transit",
                    "elementType": "labels",
                    "stylers": [{"hue": "#0060ff"}, {"lightness": -100}, {"visibility": "off"}]
                }, {
                    "featureType": "water",
                    "elementType": "geometry",
                    "stylers": [{"hue": "#0066ff"}, {"saturation": "0"}, {"lightness": 100}, {"visibility": "on"}]
                }, {
                    "featureType": "water",
                    "elementType": "labels",
                    "stylers": [{"hue": "#000000"}, {"saturation": -100}, {"lightness": -100}, {"visibility": "off"}]
                }]
            },
            markersIcon: "src/style/minimalistic/images/marker.png",
            cluster: {
                enable: true,
                gridSize: 60,
                style: {
                    textColor: '#ffffff',
                    textSize: 18,
                    heightSM: 60,
                    widthSM: 60,
                    heightMD: 70,
                    widthMD: 70,
                    heightBIG: 80,
                    widthBIG: 80,
                    iconSmall: "src/style/minimalistic/images/clusterSmall.png",
                    iconMedium: "src/style/minimalistic/images/clusterMedium.png",
                    iconBig: "src/style/minimalistic/images/clusterBig.png"
                }
            },
            sidebar: {
                visible: true,
                selectSection: {
                    visible: true
                },
                searchBox: {
                    visible: true,
                    search: true
                },
                results: {
                    pageSize: 8,
                    paginationItems: 5
                }
            }
        });
        $(".eleventhStyle").ShopLocator({
            pluginStyle: "purple",
            paginationStyle: 1,
            infoBubble: {
                visible: true,
                backgroundColor: '#transparent',
                arrowSize: 0,
                arrowPosition: 50,
                minHeight: 127,
                maxHeight: 127,
                minWidth: 170,
                maxWidth: 250,
                hideCloseButton: false
            },
            map: {
                mapStyle: [{
                    "featureType": "administrative",
                    "elementType": "labels.text.fill",
                    "stylers": [{"color": "#6195a0"}]
                }, {
                    "featureType": "landscape",
                    "elementType": "all",
                    "stylers": [{"color": "#f2f2f2"}]
                }, {
                    "featureType": "landscape",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#ffffff"}]
                }, {
                    "featureType": "poi",
                    "elementType": "all",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "poi.park",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#e6f3d6"}, {"visibility": "on"}]
                }, {
                    "featureType": "road",
                    "elementType": "all",
                    "stylers": [{"saturation": -100}, {"lightness": 45}, {"visibility": "simplified"}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "all",
                    "stylers": [{"visibility": "simplified"}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#f4d2c5"}, {"visibility": "simplified"}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "labels.text",
                    "stylers": [{"color": "#4e4e4e"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#f4f4f4"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "labels.text.fill",
                    "stylers": [{"color": "#787878"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "labels.icon",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "transit",
                    "elementType": "all",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "water",
                    "elementType": "all",
                    "stylers": [{"color": "#eaf6f8"}, {"visibility": "on"}]
                }, {"featureType": "water", "elementType": "geometry.fill", "stylers": [{"color": "#eaf6f8"}]}]
            },
            markersIcon: "src/style/purple/images/marker.png",
            cluster: {
                enable: true,
                gridSize: 60,
                style: {
                    textColor: '#ffffff',
                    textSize: 18,
                    heightSM: 60,
                    widthSM: 60,
                    heightMD: 70,
                    widthMD: 70,
                    heightBIG: 80,
                    widthBIG: 80,
                    iconSmall: "src/style/purple/images/clusterSmall.png",
                    iconMedium: "src/style/purple/images/clusterMedium.png",
                    iconBig: "src/style/purple/images/clusterBig.png"
                }
            },
            sidebar: {
                visible: true,
                selectSection: {
                    visible: true
                },
                searchBox: {
                    visible: true,
                    search: true
                },
                results: {
                    pageSize: 8,
                    paginationItems: 5
                }
            }
        });
        $(".twelveStyle").ShopLocator({
            pluginStyle: "diamond",
            paginationStyle: 1,
            infoBubble: {
                visible: true,
                backgroundColor: '#transparent',
                arrowSize: 0,
                arrowPosition: 50,
                minHeight: 127,
                maxHeight: 127,
                minWidth: 170,
                maxWidth: 250,
                hideCloseButton: false
            },
            map: {
                mapStyle: [{
                    "featureType": "landscape.man_made",
                    "elementType": "geometry",
                    "stylers": [{"color": "#f7f1df"}]
                }, {
                    "featureType": "landscape.natural",
                    "elementType": "geometry",
                    "stylers": [{"color": "#d0e3b4"}]
                }, {
                    "featureType": "landscape.natural.terrain",
                    "elementType": "geometry",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "poi",
                    "elementType": "labels",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "poi.business",
                    "elementType": "all",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "poi.medical",
                    "elementType": "geometry",
                    "stylers": [{"color": "#fbd3da"}]
                }, {
                    "featureType": "poi.park",
                    "elementType": "geometry",
                    "stylers": [{"color": "#bde6ab"}]
                }, {
                    "featureType": "road",
                    "elementType": "geometry.stroke",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "road",
                    "elementType": "labels",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#ffe15f"}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "geometry.stroke",
                    "stylers": [{"color": "#efd151"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#ffffff"}]
                }, {
                    "featureType": "road.local",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "black"}]
                }, {
                    "featureType": "transit.station.airport",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#cfb2db"}]
                }, {"featureType": "water", "elementType": "geometry", "stylers": [{"color": "#a2daf2"}]}]
            },
            markersIcon: "src/style/diamond/images/marker.png",
            cluster: {
                enable: true,
                gridSize: 60,
                style: {
                    textColor: '#ffffff',
                    textSize: 18,
                    heightSM: 60,
                    widthSM: 60,
                    heightMD: 70,
                    widthMD: 70,
                    heightBIG: 80,
                    widthBIG: 80,
                    iconSmall: "src/style/diamond/images/clusterSmall.png",
                    iconMedium: "src/style/diamond/images/clusterMedium.png",
                    iconBig: "src/style/diamond/images/clusterBig.png"
                }
            },
            sidebar: {
                visible: true,
                selectSection: {
                    visible: true
                },
                searchBox: {
                    visible: true,
                    search: true
                },
                results: {
                    pageSize: 8,
                    paginationItems: 5
                }
            }
        });
        $(".thirteenStyle").ShopLocator({
            pluginStyle: "selective",
            paginationStyle: 1,
            infoBubble: {
                visible: true,
                backgroundColor: '#transparent',
                arrowSize: 0,
                arrowPosition: 50,
                minHeight: 127,
                maxHeight: 127,
                minWidth: 170,
                maxWidth: 250,
                hideCloseButton: false
            },
            map: {
                mapStyle: [{
                    "featureType": "landscape.man_made",
                    "elementType": "geometry",
                    "stylers": [{"color": "#f7f1df"}]
                }, {
                    "featureType": "landscape.natural",
                    "elementType": "geometry",
                    "stylers": [{"color": "#d0e3b4"}]
                }, {
                    "featureType": "landscape.natural.terrain",
                    "elementType": "geometry",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "poi",
                    "elementType": "labels",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "poi.business",
                    "elementType": "all",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "poi.medical",
                    "elementType": "geometry",
                    "stylers": [{"color": "#fbd3da"}]
                }, {
                    "featureType": "poi.park",
                    "elementType": "geometry",
                    "stylers": [{"color": "#bde6ab"}]
                }, {
                    "featureType": "road",
                    "elementType": "geometry.stroke",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "road",
                    "elementType": "labels",
                    "stylers": [{"visibility": "off"}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#ffe15f"}]
                }, {
                    "featureType": "road.highway",
                    "elementType": "geometry.stroke",
                    "stylers": [{"color": "#efd151"}]
                }, {
                    "featureType": "road.arterial",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#ffffff"}]
                }, {
                    "featureType": "road.local",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "black"}]
                }, {
                    "featureType": "transit.station.airport",
                    "elementType": "geometry.fill",
                    "stylers": [{"color": "#cfb2db"}]
                }, {"featureType": "water", "elementType": "geometry", "stylers": [{"color": "#a2daf2"}]}]
            },
            markersIcon: "src/style/selective/images/marker.png",
            cluster: {
                enable: true,
                gridSize: 60,
                style: {
                    textColor: '#ffffff',
                    textSize: 18,
                    heightSM: 60,
                    widthSM: 60,
                    heightMD: 70,
                    widthMD: 70,
                    heightBIG: 80,
                    widthBIG: 80,
                    iconSmall: "src/style/selective/images/clusterSmall.png",
                    iconMedium: "src/style/selective/images/clusterMedium.png",
                    iconBig: "src/style/selective/images/clusterBig.png"
                }
            },
            sidebar: {
                visible: true,
                selectSection: {
                    visible: true
                },
                searchBox: {
                    visible: true,
                    search: true
                },
                results: {
                    pageSize: 8,
                    paginationItems: 5
                }
            }
        });
        $(".default").ShopLocator({
            pluginStyle: "default",
            paginationStyle: 1,
            infoBubble: {
                visible: true,
                borderRadius: 0,
                backgroundColor: '#fff',
                arrowPosition: 50,
                minHeight: 119,
                maxHeight: 135,
                minWidth: 170,
                maxWidth: 250,
                offsetTop: 8
            },
            cluster: {
                enable: true,
                gridSize: 60
            },
            sidebar: {
                visible: true,
                selectSection: {
                    visible: true
                },
                searchBox: {
                    visible: true,
                    search: true
                },
                results: {
                    pageSize: 8,
                    paginationItems: 5
                }
            }
        });
    });

}(jQuery));


(function () {
    "use strict";

    var featurewidth = 203;

    $('.ct-featureButton').on('click', function (e) {
        e.preventDefault();

        var $dropdowncontainer = $('.ct-dropdown-container');

        $(window).on('load resize', function () {
            if ($(window).width() < 480) {
                featurewidth = 130;
            }
        });

        if ($($dropdowncontainer).hasClass('active')) {
            $($dropdowncontainer).removeClass('active').animate({width: '130' + 'px'}, 300).animate({height: '50' + 'px'}, 150);
        } else {
            $($dropdowncontainer).addClass('active').animate({width: featurewidth + 'px'}, 200).animate({height: '338' + 'px'}, 300);
        }

        return false;
    });
}(jQuery));