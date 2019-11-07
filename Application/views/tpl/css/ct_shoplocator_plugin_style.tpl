[{capture assign="PluginStyle"}]
/*FONTS*/
@import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700);
@import url(https://fonts.googleapis.com/css?family=Lato);

/*Preloader*/
.ct-preloader {
position: absolute;
width: 100%;
height: 100%;
background-color: #fff;
z-index: 9999;
top: 0;
left: 0;
}

.ct-preloaderCenter {
position: absolute;
top: 50%;
left: 50%;
margin-top: -15px;
margin-left: -25px;
}

.ct-preloader-content {
position: relative;
}

.ct-preloader-content span {
display: block;
bottom: 0px;
width: 9px;
height: 5px;
background: #9b59b6;
position: absolute;
animation: ct-preloader-content 1.5s infinite ease-in-out;
}

.ct-preloader-content span:nth-child(2) {
left: 11px;
animation-delay: .2s;

}

.ct-preloader-content span:nth-child(3) {
left: 22px;
animation-delay: .4s;
}

.ct-preloader-content span:nth-child(4) {
left: 33px;
animation-delay: .6s;
}

.ct-preloader-content span:nth-child(5) {
left: 44px;
animation-delay: .8s;
}

@keyframes ct-preloader-content {
0% {
height: 5px;
transform: translateY(0px);
background: #9b59b6;
}
25% {
height: 30px;
transform: translateY(15px);
background: #3498db;
}
50% {
height: 5px;
transform: translateY(0px);
background: #9b59b6;
}
100% {
height: 5px;
transform: translateY(0px);
background: #9b59b6;
}
}

/*MAIN*/

.make-hidden {
display: none;
visibility: hidden;
}

.row {
margin-left: -15px;
margin-right: -15px;
*zoom: 1;
}

.row:before,
.row:after {
content: " ";
display: table;
}

.row:after {
clear: both;
}

.ct-googleMap--MapCol {
width: 75%;
float: left;
padding-left: 15px;
padding-right: 15px;
position: relative;
min-height: 1px;
}

.ct-googleMap--SidebarCol {
width: 25%;
float: left;
padding-left: 15px;
padding-right: 15px;
position: relative;
min-height: 1px;
}

.ct-googleMap {
height: 525px;
background-color: black;
width: 100%;
}

* {
-webkit-box-sizing: border-box;
-moz-box-sizing: border-box;
box-sizing: border-box
}

.clearfix {
clear: both;
}

.ct-googleMap--sidebar {
text-align: left;
width: 100%;
}

.ct-googleMap--selectContainer {
margin-bottom: 18px;
}

.ct-googleMap--select {
width: 100%;
height: 40px;
background-color: transparent;
position: relative;
z-index: 1;
font-size: 14px;
padding: 9px 9px 9px 0;
-webkit-appearance: none;
/*Removes default chrome and safari style*/
-moz-appearance: none;
/*Removes default style Firefox*/
/*text-indent: 0.01px;*/
/* Removes default arrow from firefox*/
text-overflow: "";
/*Removes default arrow from firefox*/
color: #333;
}

.ct-googleMap--resultsCounter {
font-size: 1.2em;
line-height: 40px;
padding: 0 40px 0 17px;
}

.ct-googleMap--results {
min-height: 320px;
}

.ct-googleMap--itemCounter {
float: right;
}

.ct-googleMap--select:focus {
outline: none;
}

.ct-googleMap--selectContainer, .ct-googleMap--searchContainer {
position: relative;
}

.ct-googleMap--selectContainer:after, .ct-googleMap--searchContainer:after {
content: "";
clear: both;
}

.ct-googleMap--searchContainer:before, .ct-googleMap--selectContainer:before {
content: "";
display: block;
position: absolute;
top: 0px;
left: 0;
z-index: 10;
height: 40px;
width: 40px;
background-repeat: no-repeat;
background-position: center;
}

.ct-googleMap--searchContainer {
margin-bottom: 24px;
}

.ct-googleMap--sidebar .ct-googleMap--search {
height: 40px;
width: 100%;
display: block;
font-size: 14px;
line-height: 36px;
color: #333;
background-color: transparent;
border: 1px solid #d7d6d6;
padding-right: 15px;
padding-left: 15px;
}

.ct-googleMap--sidebar .ct-googleMap--search:focus {
outline: none;
}

.ct-googleMap--sidebar .ct-googleMap--sidebarItem {
font-size: 14px;
line-height: 24px;
color: #fff;
border: none;
padding: 8px 0 8px 17px;
cursor: pointer;
position: relative;
-webkit-transition: all 0.2s ease;
-moz-transition: all 0.2s ease;
-o-transition: all 0.2s ease;
transition: all 0.2s ease;
display: table;
width: 100%;
max-height: 41px;
}

.ct-googleMap--sidebarItem span {
display: table-cell;
vertical-align: middle;
}

.ct-googleMap--sidebarItem .ct-googleMap--sidebarItemDistance {
text-align: right;
padding-left: 5px;
width: 75px;
}

.ct-googleMap--InfoWindowBody {
padding: 15px;
position: relative;
background-color: #fff;
color: #333;
}

.ct-googleMap--closeButton {
position: absolute;
top: 0;
right: 0;
cursor: pointer;
}

.ct-googleMap--InfoWindowBody span {
font-size: 1.2em;
line-height: 1.5em;
display: block;
position: relative;
}

.ct-googleMap--InfoWindowBody a {
-webkit-transition: all 0.2s ease;
-moz-transition: all 0.2s ease;
-o-transition: all 0.2s ease;
transition: all 0.2s ease;
text-decoration: none;
}

.ct-googleMap--customInfoWindow a:hover {
opacity: 0.7;
}

.Navigation {
list-style: none;
padding: 0;
margin: 0;
text-align: center;
}

.Navigation:after {
clear: both;
}

.Navigation li {
display: inline-block;
}

.NavigationPrev a:before, .NavigationNext a:before {
content: "";
height: 32px;
width: 44px;
display: block;
background-position: center;
cursor: pointer;
}

.NavigationPrev {
float: left;
}

.NavigationNext {
float: right;
}

.NavigationPrev.NavigationDisable a:before, .NavigationNext.NavigationDisable a:before {
cursor: default;
}

.Navigation .paginationCounter, .Navigation .paginationCounter span {
display: inline-block;
text-align: center;
font-size: 24px;
line-height: 40px;
}

.NavPage {
padding: 0 10px;
color: #c2bdbd;
cursor: pointer;
}

.NavPage:hover {
color: #c2bdbd;
}

.ct-button--direction {
font-size: 18px;
}

/*
Styles:
- Default
- Lollipop
- Cosmic Blue
- Pop
- Retro
- Bee Pattern
- Dark
- Modern
- Material
- Minimalistic Blue
- Electric Purple
- Green Diamond
- Selective Yellow
*/

.default, .lollipop, .cosmic, .pop, .retro, .bee, .dark, .metro, .modern, .material, .minimalistic, .purple, .diamond, .selective {
width: 100%; /*1200px*/
margin: 0 auto;
padding: 0 15px;
font-family: 'Source Sans Pro', sans-serif;
position: relative;
}

.default.select, .lollipop select, .cosmic select, .pop select, .retro select, .bee select, .dark select, .metro select, .modern select, .material select, .minimalistic select, .purple select, .dimoand select, .selective select, .lollipop input, .cosmic input, .pop input, .retro input, .bee input, .dark input, .metro input, .modern input, .material input, .minimalistic input, .purple input, .diamond input, .selective input {
font-family: 'Source Sans Pro', sans-serif;
}

/*lollipop*/
.lollipop .ct-googleMap--results {
min-height: 400px;
}

.lollipop .ct-googleMap {
height: 576px;
}

.lollipop .ct-googleMap--select, .lollipop .ct-googleMap--sidebar .ct-googleMap--search {
background-color: transparent;
color: #f5f5f5;
font-weight: bold;
border: none;
-webkit-border-radius: 4px;
-moz-border-radius: 4px;
border-radius: 4px;
}

.lollipop .ct-googleMap--select {
padding-left: 15px;
background-color: rgba(237, 42, 100, 0.98);
background: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/lollipop/images/select-icon.png')}]') no-repeat 95% center;
}

.lollipop .ct-googleMap--select option {
color: #e03377;
}

.lollipop .ct-googleMap--selectContainer:before, .lollipop .ct-googleMap--searchContainer:before {
display: none;
}

.lollipop .ct-googleMap--searchContainer, .lollipop .ct-googleMap--selectContainer {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/lollipop/images/gradient-background.png')}]');
background-repeat: no-repeat;
background-position: center;
background-size: 100% 100%;
}

.lollipop ::-webkit-input-placeholder { /* WebKit browsers */
color: #f5f5f5;
font-weight: bold;
}

.lollipop :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
color: #f5f5f5;
opacity: 1;
font-weight: bold;
}

.lollipop ::-moz-placeholder { /* Mozilla Firefox 19+ */
color: #f5f5f5;
opacity: 1;
font-weight: bold;
}

.lollipop :-ms-input-placeholder { /* Internet Explorer 10+ */
color: #f5f5f5;
font-weight: bold;
}

.lollipop .ct-googleMap--resultsCounter {
background-color: #e6e6e6;
margin-bottom: 20px;
color: #666666;
font-weight: bold;
line-height: 48px;
-webkit-border-radius: 4px;
-moz-border-radius: 4px;
border-radius: 4px;
padding-left: 36px;
}

.lollipop .ct-googleMap--resultsCounter .ct-googleMap--itemCounter {
float: none;
padding-left: 5px;
}

.lollipop .ct-googleMap--sidebar .ct-googleMap--sidebarItem {
color: #79aacf;
font-weight: 400;
margin-top: 2px;
padding: 12px 0 12px 36px;
}

.lollipop .ct-googleMap--sidebar .ct-googleMap--sidebarItem:first-child {
border-top: none;
}

.lollipop .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover {
color: #e03377;
font-weight: bold;
}

.lollipop .ct-googleMap--sidebarItem .ct-googleMap--sidebarItemDistance {
width: 80px;
font-weight: bold;
}

.lollipop .ct-googleMap--sidebar .ct-googleMap--sidebarItem:after {
content: "";
display: block;
position: absolute;
height: 26px;
width: 26px;
top: 50%;
left: 0;
margin-top: -13px;
background-color: #e6e6e6;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/lollipop/images/item-arrow.png')}]');
background-repeat: no-repeat;
background-position: center;
-webkit-transition: all 0.2s ease;
-moz-transition: all 0.2s ease;
-o-transition: all 0.2s ease;
transition: all 0.2s ease;
-webkit-border-radius: 4px;
-moz-border-radius: 4px;
border-radius: 4px;
}

.lollipop .ct-googleMap--results:after {
content: "";
display: block;
position: absolute;
height: 3px;
width: 100%;
bottom: -3px;
left: 0;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/lollipop/images/items-decoration.png')}]');
background-repeat: repeat-x;
background-position: 100% center;
}

.lollipop .ct-googleMap--sidebar .ct-googleMap--sidebarItem:before {
content: "";
display: block;
position: absolute;
height: 3px;
width: 100%;
top: -3px;
left: 0;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/lollipop/images/items-decoration.png')}]');
background-repeat: repeat-x;
background-position: 100% center;
}

.lollipop .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover:after {
background-color: #e03377;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/lollipop/images/item-arrowWhite.png')}]');
background-repeat: no-repeat;
}

.lollipop .ct-googleMap--results {
position: relative;
margin-bottom: 20px;
}

.lollipop .paginationCounter {
border-left: none;
border-right: none;
margin: 0 auto;
display: inline-block;
position: relative;
top: -8px;

}

.lollipop .Navigation {
text-align: center;
}

.lollipop .Navigation li {
float: none;
}

.lollipop .Navigation .paginationCounter, .lollipop .Navigation .paginationCounter span {
color: #79aacf;
font-size: 14px;
line-height: 26px;
}

.lollipop .NavigationPrev a:before, .lollipop .NavigationNext a:before {
height: 26px;
width: 26px;
background-color: #e6e6e6;
}

.lollipop .NavPage {
line-height: 26px;
padding: 4px 9px;
color: #e03377;
background-color: #e6e6e6;
margin-left: 2px;
margin-right: 2px;
}

.lollipop .NavigationPrev {
margin-right: 2px;
}

.lollipop .NavigationNext {
margin-left: 2px;
}

.lollipop .NavigationPrev a:before, .lollipop .NavigationNext a:before, .lollipop .NavPage {
-webkit-border-radius: 4px;
-moz-border-radius: 4px;
border-radius: 4px;
}

.lollipop .NavigationPrev a:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/lollipop/images/paginationLeftArrow.png')}]');
background-repeat: no-repeat;
}

.lollipop .NavigationNext a:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/lollipop/images/paginationRightArrow.png')}]');
background-repeat: no-repeat;
}

.lollipop .NavigationPrev.NavigationDisable a:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/lollipop/images/paginationLeftArrow--disable.png')}]');
opacity: 0.7;
}

.lollipop .NavigationNext.NavigationDisable a:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/lollipop/images/paginationRightArrow--disable.png')}]');
opacity: 0.7;
}

.lollipop .ct-googleMap--InfoWindowBody span {
color: #666666;
}

.lollipop .ct-googleMap--InfoWindowBody span:first-child {
font-weight: bold;
}

.lollipop .ct-googleMap--customInfoWindow {
border-bottom: 3px solid #e03377;
}

.lollipop .ct-googleMap--customInfoWindow a {
color: #e03377;
}

.lollipop .ct-googleMap--customInfoWindow:after {
content: "";
position: absolute;
left: 50%;
margin-left: -17px;
width: 0;
height: 0;
border-style: solid;
border-width: 15px 17px 0 17px;
border-color: #e03377 transparent transparent transparent;
}

.lollipop .active {
color: #fff;
font-weight: bold;
background-color: #e03377;
}

.lollipop .active:hover {
color: #fff;
}

/*cosmic*/

.cosmic .ct-googleMap--results {
min-height: 328px;
}

.cosmic .ct-googleMap {
height: 510px;
}

.cosmic .ct-googleMap--selectContainer, .cosmic .ct-googleMap--searchContainer {
float: left;
width: 100%;
}

.cosmic .ct-googleMap--select {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/cosmic/images/select-icon.png')}]');
background-repeat: no-repeat;
background-position: 95% center;
padding-left: 35px;
}

.cosmic .ct-googleMap--select, .cosmic .ct-googleMap--sidebar .ct-googleMap--search {
color: #4757a3;
background-color: #e6e8eb;
width: 80%;
float: right;
border: none;
-webkit-border-radius: 6px;
-moz-border-radius: 6px;
border-radius: 6px;
font-weight: 600;
}

.cosmic .ct-googleMap--selectContainer:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/cosmic/images/select-image.png')}]');
}

.cosmic .ct-googleMap--searchContainer:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/cosmic/images/input-image.png')}]');
}

.cosmic .ct-googleMap--sidebar .ct-googleMap--search {
padding-left: 37px;
}

.cosmic ::-webkit-input-placeholder { /* WebKit browsers */
color: #4757a3;
}

.cosmic :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
color: #4757a3;
opacity: 1;
}

.cosmic ::-moz-placeholder { /* Mozilla Firefox 19+ */
color: #4757a3;
opacity: 1;
}

.cosmic :-ms-input-placeholder { /* Internet Explorer 10+ */
color: #4757a3;
}

.cosmic .ct-googleMap--sidebar .ct-googleMap--search:before {
content: "";
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/pop/images/input-image.png')}]');
height: 24px;
width: 18px;
display: block;
position: absolute;
top: 7px;
left: 10px;
z-index: 10;
}

.cosmic .ct-googleMap--resultsCounter {
color: #4757a3;
padding: 0 38px 0 17px;
text-transform: uppercase;
font-weight: bold;
clear: both;
background-color: #fff;
position: relative;
}

.cosmic .ct-googleMap--itemCounter {
color: #fff;
height: 25px;
width: 25px;
position: absolute;
margin-top: -12px;
top: 50%;
right: 34px;
background-color: #4757a3;
-webkit-border-radius: 50%;
-moz-border-radius: 50%;
border-radius: 50%;
line-height: 24px;
text-align: center;
}

.cosmic .ct-googleMap--sidebar .ct-googleMap--sidebarItem {
color: #839cb4;
background-color: #e6e8eb;
padding-right: 30px;
border-bottom: 1px solid #fff;
}

.cosmic .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover {
color: #4757a3;
font-weight: bold;
}

.cosmic .ct-googleMap--results {
margin-bottom: 20px;
}

.cosmic .paginationCounter a {
background-color: #e6e8eb;
-webkit-border-radius: 50%;
-moz-border-radius: 50%;
border-radius: 50%;
height: 32px;
width: 32px;
margin: 0 4px;
color: rgba(94, 103, 157, 0.40);
}

.cosmic .NavigationPrev a:before, .cosmic .NavigationNext a:before {
width: 34px;
}

.cosmic .NavigationPrev a:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/cosmic/images/paginationLeftArrow.png')}]');
background-repeat: no-repeat;
}

.cosmic .NavigationNext a:before {
float: right;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/cosmic/images/paginationRightArrow.png')}]');
background-repeat: no-repeat;
}

.cosmic .NavigationPrev.NavigationDisable a:before, .cosmic .NavigationNext.NavigationDisable a:before {
opacity: 0.5;
}

.cosmic .ct-googleMap--customInfoWindow a {
color: #4757a3;
}

.cosmic .ct-googleMap--InfoWindowBody span {
color: #4757a3;
}

.cosmic .ct-googleMap--InfoWindowBody span:first-child {
font-weight: bold;
}

.cosmic .paginationCounter .active {
color: #fff;
background-color: #8d93b8;
}

.cosmic .paginationCounter .active:hover {
color: #fff;
}

/*pop*/

.pop .ct-googleMap {
height: 544px;
}

.pop .ct-googleMap--select, .pop .ct-googleMap--sidebar .ct-googleMap--search {
border: 1px solid #d7d6d6;
border-left: none;
border-right: none;
color: #9f9999;
}

.pop .ct-googleMap--select {
padding-left: 80px;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/pop/images/select-icon.png')}]');
background-repeat: no-repeat;
background-position: 95% center;
}

.pop .ct-googleMap--selectContainer:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/pop/images/select-image.png')}]');
}

.pop .ct-googleMap--searchContainer:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/pop/images/input-image.png')}]');
}

.pop .ct-googleMap--sidebar .ct-googleMap--search {
padding-left: 84px;
}

.pop ::-webkit-input-placeholder { /* WebKit browsers */
color: #9f9999;
}

.pop :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
color: #9f9999;
opacity: 1;
}

.pop ::-moz-placeholder { /* Mozilla Firefox 19+ */
color: #9f9999;
opacity: 1;
}

.pop :-ms-input-placeholder { /* Internet Explorer 10+ */
color: #9f9999;
}

.pop .ct-googleMap--sidebar .ct-googleMap--search:before {
content: "";
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/pop/images/input-image.png')}]');
height: 24px;
width: 18px;
display: block;
position: absolute;
top: 7px;
left: 10px;
z-index: 10;
}

.pop .ct-googleMap--resultsCounter {
color: #ff2c61;
}

.pop .ct-googleMap--sidebar .ct-googleMap--sidebarItem {
color: #3fbdd6;
background-color: #fff;
padding-right: 40px;
}

.pop .ct-googleMap--sidebar .ct-googleMap--sidebarItem:nth-child(2n) {
background-color: transparent;
}

.pop .ct-googleMap--sidebar .ct-googleMap--sidebarItem:after {
content: "";
display: block;
position: absolute;
height: 15px;
width: 15px;
top: 50%;
right: 20px;
margin-top: -7px;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/pop/images/item-arrow.png')}]');
-webkit-transition: all 0.2s ease;
-moz-transition: all 0.2s ease;
-o-transition: all 0.2s ease;
transition: all 0.2s ease;
}

.pop .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover {
color: #fff;
background-color: #ff2c62;
}

.pop .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover:after {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/pop/images/item-arrowWhite.png')}]');
}

.pop .ct-googleMap--results {
margin-bottom: 60px;
}

.pop .Navigation {
background-color: #f5f5f5;
border: 1px solid #d7d6d6;
border-left: none;
border-right: none;
}

.pop .Navigation .paginationCounter, .pop .Navigation .paginationCounter span {
line-height: 30px;
}

.pop .NavigationPrev a:before, .pop .NavigationNext a:before {
height: 34px;
width: 44px;
position: relative;
top: -2px;
background-color: #d7d6d6;
-webkit-border-radius: 4px;
-moz-border-radius: 4px;
border-radius: 4px;
border: 1px solid #d7d6d6;
}

.pop .NavigationPrev a:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/pop/images/paginationLeftArrow.png')}]');
background-repeat: no-repeat;
}

.pop .NavigationNext a:before {
float: right;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/pop/images/paginationRightArrow.png')}]');
background-repeat: no-repeat;
}

.pop .NavigationPrev.NavigationDisable a:before {
background-color: #f5f5f5;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/pop/images/paginationLeftArrow--disable.png')}]');
border: 1px solid #d7d6d6;
}

.pop .NavigationNext.NavigationDisable a:before {
background-color: #f5f5f5;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/pop/images/paginationRightArrow--disable.png')}]');
border: 1px solid #d7d6d6;
}

.pop .ct-googleMap--InfoWindowBody span {
color: #8b8d94;
}

.pop .ct-googleMap--InfoWindowBody span:first-child {
color: #3fbdd6;
}

.pop .ct-googleMap--customInfoWindow a {
color: #ff2c61;
}

.pop .active {
color: #ff2c61;
}

.pop .active:hover {
color: #ff2c61;
}

/*retro*/
.retro .ct-googleMap--results {
min-height: 368px;
}

.retro .ct-googleMap--selectContainer {
position: relative;
}

.retro .ct-googleMap--select {
padding-left: 15px;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/retro/images/select-icon.png')}]');
background-repeat: no-repeat;
background-position: 95% center;
}

.retro .ct-googleMap--select option {
color: #494141;
background-color: #f1d081;
}

.retro .ct-googleMap--select, .retro .ct-googleMap--sidebar .ct-googleMap--search {
color: #fec427;
background-color: #494141;
border: none;
-webkit-border-radius: 6px;
-moz-border-radius: 6px;
border-radius: 6px;
}

.retro .ct-googleMap--sidebar .ct-googleMap--search {
padding-left: 17px;
}

.retro ::-webkit-input-placeholder { /* WebKit browsers */
color: #fec427;
}

.retro :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
color: #fec427;
opacity: 1;
}

.retro ::-moz-placeholder { /* Mozilla Firefox 19+ */
color: #fec427;
opacity: 1;
}

.retro :-ms-input-placeholder { /* Internet Explorer 10+ */
color: #fec427;
}

.retro .ct-googleMap--resultsCounter {
color: #fec427;
padding: 0 38px 0 17px;
text-transform: uppercase;
text-align: left;
clear: both;
background-color: #494141;
position: relative;
-webkit-border-radius: 6px;
-moz-border-radius: 6px;
border-radius: 6px;
bottom: -8px;
}

.retro .ct-googleMap--sidebar .ct-googleMap--sidebarItem {
color: #3fbdd6;
background-color: transparent;
padding-right: 30px;
border-bottom: 1px solid #746e6e;
}

.retro .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover {
color: #fff;
}

.retro .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover:after {
height: 0;
}

.retro .ct-googleMap--results {
background-color: #494141;
-webkit-border-radius: 6px;
-moz-border-radius: 6px;
border-radius: 6px;
padding-bottom: 40px;
}

.retro .NavigationPrev a:before, .retro .NavigationNext a:before {
width: 34px;
color: #494141;
line-height: 40px;
font-weight: bold;
}

.retro .NavigationPrev a:before {
content: "PREV";

}

.retro .NavigationNext a:before {
float: right;
content: "NEXT";
}

.retro .NavigationPrev.NavigationDisable a:before, .retro .NavigationNext.NavigationDisable a:before {
opacity: 0.5;
}

.retro .ct-googleMap--InfoWindowBody:before {
content: "";
height: 32px;
width: 29px;
position: absolute;
top: 0;
left: 0;
background-color: #fec427;
-webkit-border-radius: 4px 0 4px 0;
-moz-border-radius: 4px 0 4px 0;
border-radius: 4px 0 4px 0;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/retro/images/infowindow--smImage.png')}]');
}

.retro .ct-googleMap--InfoWindowBody span {
color: #1d191c;
}

.retro .ct-googleMap--InfoWindowBody span:first-child {
font-weight: bold;
}

.retro .Navigation {
background-color: #c1bebe;
padding: 0 15px;
margin-top: -5px;
-webkit-border-radius: 0 0 6px 6px;
-moz-border-radius: 0 0 6px 6px;
border-radius: 0 0 6px 6px;
}

.retro .paginationCounter {
font-size: 18px;
line-height: 40px;

}

.retro .ct-googleMap--customInfoWindow a {
color: #494141;
}

.retro .paginationCounter .NavPage {
color: #878282;
}

.retro .paginationCounter .active {
color: #494141;
font-weight: bold;
}

.retro .paginationCounter .active:hover {
color: #494141;
}

/*bee*/
.bee .ct-googleMap--results {
min-height: 320px;
}

.bee .ct-googleMap--selectContainer {
position: relative;
}

.bee select {
background-color: #d7d6d6;
}

.bee .ct-googleMap--select {
padding-left: 30%;
text-transform: uppercase;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/bee/images/select-icon.png')}]');
background-repeat: no-repeat;
background-position: 95% center;
}

.bee .ct-googleMap--select option {
color: #333;
}

.bee .ct-googleMap--select, .bee .ct-googleMap--sidebar .ct-googleMap--search {
color: #494141;
font-weight: bold;
text-transform: uppercase;
border: none;
-webkit-border-radius: 18px;
-moz-border-radius: 18px;
border-radius: 18px;
}

.bee .ct-googleMap--sidebar .ct-googleMap--search {
text-align: center;
background-color: #fec427;
}

.bee ::-webkit-input-placeholder { /* WebKit browsers */
color: #494141;
}

.bee :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
color: #494141;
opacity: 1;
}

.bee ::-moz-placeholder { /* Mozilla Firefox 19+ */
color: #494141;
opacity: 1;
}

.bee :-ms-input-placeholder { /* Internet Explorer 10+ */
color: #494141;
}

.bee .ct-googleMap--resultsCounter {
color: #736c6c;
padding: 0 38px 12px 17px;
text-transform: uppercase;
text-align: left;
font-weight: bold;
clear: both;
background-color: #fff;
position: relative;
-webkit-border-radius: 18px 18px 0 0;
-moz-border-radius: 18px 18px 0 0;
border-radius: 18px 18px 0 0;
bottom: -12px;
}

.bee .ct-googleMap--itemCounter {
margin-left: 5px;
font-weight: 400;
}

.bee .ct-googleMap--sidebar .ct-googleMap--sidebarItem {
color: #736c6c;
background-color: transparent;
padding-right: 30px;
}

.bee .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover {
color: #736c6c;
font-weight: bold;
background-color: #fec427;
}

.bee .ct-googleMap--results {
margin-bottom: 20px;
background-color: #fff;
-webkit-border-radius: 18px;
-moz-border-radius: 18px;
border-radius: 18px;
}

.bee .NavigationPrev a:before, .bee .NavigationNext a:before {
color: #494141;
height: 40px;
width: 54px;
background-color: #fec427;
font-weight: bold;
}

.bee .NavigationPrev a:before {
content: "PREV";
line-height: 40px;
-webkit-border-radius: 18px 0 0 18px;
-moz-border-radius: 18px 0 0 18px;
border-radius: 18px 0 0 18px;
}

.bee .NavigationNext a:before {
float: right;
content: "NEXT";
line-height: 40px;
-webkit-border-radius: 0 18px 18px 0;
-moz-border-radius: 0 18px 18px 0;
border-radius: 0 18px 18px 0;
}

.bee .NavigationPrev.NavigationDisable a:before, .bee .NavigationNext.NavigationDisable a:before {
color: rgba(245, 245, 245, 0.58);
background-color: #494141;
font-weight: 400;
}

.bee .ct-googleMap--InfoWindowBody span {
color: #736c6c;
text-transform: uppercase;
}

.bee .ct-googleMap--InfoWindowBody span:first-child {
font-weight: bold;
}

.bee .Navigation {
background-color: #d7d6d6;
text-align: center;
-webkit-border-radius: 18px;
-moz-border-radius: 18px;
border-radius: 18px;
}

.bee .paginationCounter {
font-size: 18px;
line-height: 40px;

}

.bee .ct-googleMap--customInfoWindow a {
color: #494141;
}

.bee .paginationCounter .NavPage {
color: #8d8585;
font-weight: bold;
}

.bee .paginationCounter .active {
color: #494141;
}

.bee .paginationCounter .active:hover {
color: #494141;
}

/*Dark*/
.dark .ct-googleMap {
height: 549px;
}

.dark .ct-googleMap--select, .dark .ct-googleMap--sidebar .ct-googleMap--search {
background-color: #2d333c;
color: #b9b9b9;
font-weight: bold;
}

.dark .ct-googleMap--searchContainer:before, .dark .ct-googleMap--selectContainer:before {
left: 10px;
}

.dark .ct-googleMap--select {
padding-left: 60px;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/dark/images/select-icon.png')}]');
background-repeat: no-repeat;
background-position: 95% center;
}

.dark .ct-googleMap--selectContainer:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/dark/images/select-image.png')}]');
}

.dark .ct-googleMap--searchContainer:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/dark/images/input-image.png')}]');
}

.dark .ct-googleMap--sidebar .ct-googleMap--search {
padding-left: 64px;
}

.dark ::-webkit-input-placeholder { /* WebKit browsers */
color: #b9b9b9;
font-weight: bold;
}

.dark :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
color: #b9b9b9;
opacity: 1;
font-weight: bold;
}

.dark ::-moz-placeholder { /* Mozilla Firefox 19+ */
color: #b9b9b9;
opacity: 1;
font-weight: bold;
}

.dark :-ms-input-placeholder { /* Internet Explorer 10+ */
color: #b9b9b9;
font-weight: bold;
}

.dark .ct-googleMap--sidebar .ct-googleMap--search:before {
content: "";
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/dark/images/input-image.png')}]');
background-repeat: no-repeat;
background-position: center;
height: 24px;
width: 18px;
display: block;
position: absolute;
top: 7px;
left: 10px;
z-index: 10;
}

.dark .ct-googleMap--resultsCounter {
background-color: #2d333c;
color: #b9b9b9;
border-bottom: 1px solid #3b4149;
padding-left: 40px;
padding-right: 20px;
}

.dark .ct-googleMap--sidebar .ct-googleMap--sidebarItem {
color: #b9b9b9;
background-color: #2d333c;
padding-right: 20px;
padding-left: 20px;
font-weight: bold;
border-top: 1px solid #3b4149;
}

.dark .ct-googleMap--sidebar .ct-googleMap--sidebarItem:first-child {
border-top: none;
}

.dark .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover {
color: #b7783d;
}

.dark .ct-googleMap--sidebarItem .ct-googleMap--sidebarItemDistance {
width: 80px;
}

.dark .ct-googleMap--results {
margin-bottom: 60px;
}

.dark .paginationCounter {
border-left: none;
border-right: none;
margin: 0 auto;
}

.dark .Navigation {
background-color: #2d333c;
}

.dark .Navigation .paginationCounter, .dark .Navigation .paginationCounter span {
color: #b7783d;
font-size: 14px;
line-height: 30px;
font-weight: bold;
}

.dark .NavigationPrev a:before, .dark .NavigationNext a:before {
height: 34px;
width: 44px;
}

.dark .NavPage {
line-height: 34px;
padding: 8px 14px;
}

.dark .NavigationPrev a:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/dark/images/paginationLeftArrow.png')}]');
background-repeat: no-repeat;
}

.dark .NavigationNext a:before {
float: right;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/dark/images/paginationRightArrow.png')}]');
background-repeat: no-repeat;
}

.dark .NavigationPrev.NavigationDisable a:before {
background-color: transparent;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/dark/images/paginationLeftArrow--disable.png')}]');
}

.dark .NavigationNext.NavigationDisable a:before {
background-color: transparent;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/dark/images/paginationRightArrow--disable.png')}]');
}

.dark .ct-googleMap--customInfoWindow:after {
content: "";
position: absolute;
left: 50%;
margin-left: -17px;
bottom: -13px;
width: 0;
height: 0;
border-style: solid;
border-width: 15px 17px 0 17px;
border-color: #2d333c transparent transparent transparent;
}

.dark .ct-googleMap--InfoWindowBody {
-webkit-border-radius: 50%;
-moz-border-radius: 50%;
border-radius: 50%;
width: 185px;
height: 185px;
margin: 0 auto;
background-color: #2d333c;
}

.dark .ct-googleMap--InfoWindowBody:before {
content: "";
height: 36px;
width: 30px;
display: block;
margin: 0 auto 15px auto;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/dark/images/infowindow--smImage.png')}]');
}

.dark .ct-googleMap--InfoWindowBody span {
color: #b9b9b9;
font-weight: 600;
font-size: 1em;
width: 75%;
margin: 0 auto;
}

.dark .ct-googleMap--InfoWindowBody span:first-child {
color: #b7783d;
}

.dark .ct-googleMap--customInfoWindow a {
color: #b7783d;
}

.dark .active {
color: #b7783d;
}

.dark .active:hover {
color: #b7783d;
}

/*Metro*/

.metro .ct-googleMap--results {
min-height: 400px;
}

.metro .ct-googleMap {
height: 590px;
}

.metro .ct-googleMap--select, .metro .ct-googleMap--sidebar .ct-googleMap--search {
background-color: #304a6d;
color: #f5f5f5;
font-weight: bold;
border: none;
}

.metro .ct-googleMap--select {
padding-left: 60px;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/metro/images/select-icon.png')}]');
background-repeat: no-repeat;
background-position: 95% center;
}

.metro .ct-googleMap--selectContainer:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/metro/images/select-image.png')}]');
background-color: #0077d5;
}

.metro .ct-googleMap--searchContainer:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/metro/images/input-image.png')}]');
background-color: #0077d5;
}

.metro .ct-googleMap--sidebar .ct-googleMap--search {
padding-left: 64px;
}

.metro ::-webkit-input-placeholder { /* WebKit browsers */
color: #f5f5f5;
font-weight: bold;
}

.metro :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
color: #f5f5f5;
opacity: 1;
font-weight: bold;
}

.metro ::-moz-placeholder { /* Mozilla Firefox 19+ */
color: #f5f5f5;
opacity: 1;
font-weight: bold;
}

.metro :-ms-input-placeholder { /* Internet Explorer 10+ */
color: #f5f5f5;
font-weight: bold;
}

.metro .ct-googleMap--resultsCounter {
background-color: #e6e6e6;
color: #666666;
font-weight: bold;
padding-left: 35px;
padding-right: 15px;
line-height: 48px;
}

.metro .ct-googleMap--sidebar .ct-googleMap--sidebarItem {
color: #79aacf;
background-color: #e6e6e6;
font-weight: 400;
margin-top: 2px;
padding: 12px 15px 12px 35px;
}

.metro .ct-googleMap--sidebar .ct-googleMap--sidebarItem:first-child {
border-top: none;
}

.metro .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover {
color: #f5f5f5;
background-color: #0077d5;
}

.metro .ct-googleMap--sidebarItem .ct-googleMap--sidebarItemDistance {
width: 80px;
font-weight: bold;
}

.metro .ct-googleMap--sidebar .ct-googleMap--sidebarItem:after {
content: "";
display: block;
position: absolute;
height: 15px;
width: 15px;
top: 50%;
left: 15px;
margin-top: -5px;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/metro/images/item-arrow.png')}]');
background-repeat: no-repeat;
-webkit-transition: all 0.2s ease;
-moz-transition: all 0.2s ease;
-o-transition: all 0.2s ease;
transition: all 0.2s ease;
}

.metro .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover:after {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/metro/images/item-arrowWhite.png')}]');
background-repeat: no-repeat;
}

.metro .ct-googleMap--results {
margin-bottom: 20px;
}

.metro .paginationCounter {
border-left: none;
border-right: none;
margin: 0 auto;
}

.metro .Navigation {
background-color: #e6e6e6;
}

.metro .Navigation .paginationCounter, .metro .Navigation .paginationCounter span {
color: #79aacf;
font-size: 14px;
line-height: 48px;
}

.metro .NavigationPrev a:before, .metro .NavigationNext a:before {
height: 48px;
width: 48px;
}

.metro .NavPage {
line-height: 34px;
padding: 8px 10px;
color: #79aacf;
}

.metro .NavigationPrev a:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/lollipop/images/paginationLeftArrow.png')}]');
background-repeat: no-repeat;
border-right: 2px solid #fff;
}

.metro .NavigationNext a:before {
float: right;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/lollipop/images/paginationRightArrow.png')}]');
background-repeat: no-repeat;
border-left: 2px solid #fff;
}

.metro .NavigationPrev.NavigationDisable a:before {
background-color: transparent;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/lollipop/images/paginationLeftArrow--disable.png')}]');
opacity: 0.7;
}

.metro .NavigationNext.NavigationDisable a:before {
background-color: transparent;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/lollipop/images/paginationRightArrow--disable.png')}]');
opacity: 0.7;
}

.metro .ct-googleMap--InfoWindowBody span {
color: #666666;
}

.metro .ct-googleMap--InfoWindowBody span:first-child {
font-weight: bold;
}

.metro .ct-googleMap--customInfoWindow {
border-bottom: 3px solid #0077d5;
}

.metro .ct-googleMap--customInfoWindow:after {
content: "";
position: absolute;
left: 50%;
margin-left: -17px;
width: 0;
height: 0;
border-style: solid;
border-width: 15px 17px 0 17px;
border-color: #0077d5 transparent transparent transparent;
}

.metro .ct-googleMap--customInfoWindow a {
color: #0077d5;
}

.metro .active {
color: #0077d5;
font-weight: bold;
}

.metro .active:hover {
color: #0077d5;
}

/*Modern*/

.modern .ct-googleMap--results {
min-height: 400px;
}

.modern .ct-googleMap {
height: 612px;
}

.modern .ct-googleMap--select, .modern .ct-googleMap--sidebar .ct-googleMap--search {
position: relative;
color: #f5f5f5;
font-weight: bold;
border-width: 0 0 2px 0;
height: 34px;
}

.modern .ct-googleMap--select {
background-color: #b3c833;
border-color: #cad971;
padding: 5px 9px 5px 0;
}

.modern .ct-googleMap--sidebar .ct-googleMap--search {
background-color: #ce5043;
border-color: #dd857c;
line-height: 34px;
}

.modern .ct-googleMap--selectContainer {
padding: 13px 20px;
background-color: #b3c833;
}

.modern .ct-googleMap--searchContainer {
padding: 13px 20px;
background-color: #ce5043;
}

.modern .ct-googleMap--selectContainer {
margin-bottom: 0;
}

.modern .ct-googleMap--selectContainer:before, .modern .ct-googleMap--sidebar .ct-googleMap--searchContainer:before, .modern .ct-googleMap--selectContainer:after, .modern .ct-googleMap--sidebar .ct-googleMap--searchContainer:after {
content: "";
position: absolute;
top: auto;
bottom: 14px;
height: 4px;
width: 0;
}

.modern .ct-googleMap--selectContainer:before, .modern .ct-googleMap--sidebar .ct-googleMap--searchContainer:before {
left: 20px;
}

.modern .ct-googleMap--selectContainer:before {
border-left: 2px solid #cad971;
}

.modern .ct-googleMap--sidebar .ct-googleMap--searchContainer:before {
border-left: 2px solid #dd857c;
}

.modern .ct-googleMap--selectContainer:after, .modern .ct-googleMap--sidebar .ct-googleMap--searchContainer:after {
right: 20px;
z-index: 1;
}

.modern .ct-googleMap--selectContainer:after {
border-left: 2px solid #cad971;
}

.modern .ct-googleMap--sidebar .ct-googleMap--searchContainer:after {
border-left: 2px solid #dd857c;
}

.modern .ct-googleMap--select {
padding-left: 18px;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/modern/images/select-icon.png')}]');
background-repeat: no-repeat;
background-position: 95% center;
}

.modern .ct-googleMap--sidebar .ct-googleMap--search {
padding-left: 22px;
}

.modern ::-webkit-input-placeholder { /* WebKit browsers */
color: #f5f5f5;
font-weight: bold;
}

.modern :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
color: #f5f5f5;
opacity: 1;
font-weight: bold;
}

.modern ::-moz-placeholder { /* Mozilla Firefox 19+ */
color: #f5f5f5;
opacity: 1;
font-weight: bold;
}

.modern :-ms-input-placeholder { /* Internet Explorer 10+ */
color: #f5f5f5;
font-weight: bold;
}

.modern .ct-googleMap--resultsCounter {
background-color: #e6e6e6;
color: #666666;
font-weight: bold;
padding-left: 35px;
padding-right: 15px;
line-height: 48px;
}

.modern .ct-googleMap--sidebar .ct-googleMap--sidebarItem {
color: #444444;
background-color: #e6e6e6;
font-weight: 400;
margin-top: 2px;
padding: 12px 15px 12px 35px;
border-left: 4px solid #fb8521;
}

.modern .ct-googleMap--sidebar .ct-googleMap--sidebarItem:first-child {
border-top: none;
}

.modern .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover {
color: #ffffff;
background-color: #fb8521;
}

.modern .ct-googleMap--sidebarItem .ct-googleMap--sidebarItemDistance {
width: 80px;
font-weight: bold;
}

.modern .ct-googleMap--sidebar .ct-googleMap--sidebarItem:after {
content: "";
display: block;
position: absolute;
height: 15px;
width: 15px;
top: 50%;
left: 15px;
margin-top: -5px;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/modern/images/item-arrow.png')}]');
background-repeat: no-repeat;
-webkit-transition: all 0.2s ease;
-moz-transition: all 0.2s ease;
-o-transition: all 0.2s ease;
transition: all 0.2s ease;
}

.modern .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover:after {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/modern/images/item-arrowWhite.png')}]');
background-repeat: no-repeat;
}

.modern .ct-googleMap--results {
margin-bottom: 20px;
}

.modern .paginationCounter {
border-left: none;
border-right: none;
margin: 0 auto;
}

.modern .Navigation {
background-color: #e6e6e6;
}

.modern .Navigation .paginationCounter, .modern .Navigation .paginationCounter span {
color: #79aacf;
font-size: 14px;
line-height: 48px;
}

.modern .NavigationPrev a:before, .modern .NavigationNext a:before {
height: 48px;
width: 48px;
}

.modern .NavPage {
line-height: 34px;
padding: 11px 10px;
color: #444444;
}

.modern .NavigationPrev a:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/modern/images/paginationLeftArrow.png')}]');
background-repeat: no-repeat;
border-right: 2px solid #fff;
}

.modern .NavigationNext a:before {
float: right;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/modern/images/paginationRightArrow.png')}]');
background-repeat: no-repeat;
border-left: 2px solid #fff;
}

.modern .NavigationPrev.NavigationDisable a:before {
background-color: transparent;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/modern/images/paginationLeftArrow--disable.png')}]');
opacity: 0.7;
}

.modern .NavigationNext.NavigationDisable a:before {
background-color: transparent;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/modern/images/paginationRightArrow--disable.png')}]');
opacity: 0.7;
}

.modern .ct-googleMap--InfoWindowBody span {
color: #444444;
}

.modern .ct-googleMap--InfoWindowBody span:first-child {
font-weight: bold;
}

.modern .ct-googleMap--customInfoWindow {
border-bottom: 3px solid #fb8521;
}

.modern .ct-googleMap--customInfoWindow:after {
content: "";
position: absolute;
left: 50%;
margin-left: -17px;
width: 0;
height: 0;
border-style: solid;
border-width: 15px 17px 0 17px;
border-color: #fb8521 transparent transparent transparent;
}

.modern .ct-googleMap--customInfoWindow a {
color: #fb8521;
}

.modern .active {
color: #fb8521;
font-weight: bold;
border-bottom: 4px solid #fb8521;
}

.modern .active:hover {
color: #fb8521;
}

/*Material*/
.material .ct-googleMap--results {
min-height: 329px;
}

.material .ct-googleMap {
height: 543px;
}

.material .ct-googleMap--select, .material .ct-googleMap--sidebar .ct-googleMap--search {
border: none;
color: #4d4746;
background-color: #fff;
-webkit-box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.09);
-moz-box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.09);
box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.09);
font-weight: bold;
}

.material .ct-googleMap--select {
padding-left: 79px;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/material/images/select-icon.png')}]');
background-repeat: no-repeat;
background-position: 95% center;
}

.material .ct-googleMap--selectContainer:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/material/images/select-image.png')}]');
width: 49px;
}

.material .ct-googleMap--searchContainer:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/material/images/input-image.png')}]');
width: 49px;
}

.material .ct-googleMap--sidebar .ct-googleMap--search {
padding-left: 83px;
}

.material ::-webkit-input-placeholder { /* WebKit browsers */
color: #4d4746;
font-weight: bold;
}

.material :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
color: #4d4746;
opacity: 1;
font-weight: bold;
}

.material ::-moz-placeholder { /* Mozilla Firefox 19+ */
color: #4d4746;
opacity: 1;
font-weight: bold;
}

.material :-ms-input-placeholder { /* Internet Explorer 10+ */
color: #4d4746;
font-weight: bold;
}

.material .ct-googleMap--sidebar .ct-googleMap--search:before {
content: "";
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/material/images/input-image.png')}]');
height: 24px;
width: 18px;
display: block;
position: absolute;
top: 7px;
left: 10px;
z-index: 10;
}

.material .ct-googleMap--resultsCounter {
color: #f2b600;
background-color: #fff;
padding-left: 45px;
font-weight: 600;
}

.material .ct-googleMap--sidebar .ct-googleMap--sidebarItem {
color: rgba(77, 71, 70, 0.8);
background-color: #fff;
padding-right: 40px;
border-top: 1px solid #f8f8f8;
padding-left: 45px;
font-weight: 600;
}

.material .ct-googleMap--sidebar .ct-googleMap--sidebarItem:before {
content: "";
position: absolute;
top: 0;
bottom: -1px;
left: 0;
width: 15px;
background-color: #ed472c;
}

.material .ct-googleMap--sidebar .ct-googleMap--sidebarItem:nth-child(2n):before {
background-color: #f2b600;
}

.material .ct-googleMap--sidebar .ct-googleMap--sidebarItem:nth-child(3n):before {
background-color: #39b47b;
}

.material .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover {
color: #fff;
background-color: #39b47b;
}

.material .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover:after {
content: "";
display: block;
position: absolute;
height: 15px;
width: 15px;
top: 50%;
right: 20px;
margin-top: -7px;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/material/images/item-arrowWhite.png')}]');
background-repeat: no-repeat;
-webkit-transition: all 0.2s ease;
-moz-transition: all 0.2s ease;
-o-transition: all 0.2s ease;
transition: all 0.2s ease;
}

.material .ct-googleMap--results {
margin-bottom: 60px;
-webkit-box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.09);
-moz-box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.09);
box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.09);
background-color: #fff;
}

.material .paginationCounter {
border-left: none;
border-right: none;
margin: 0 auto;
color: rgba(129, 129, 129, 0.8);
font-weight: bold;
font-size: 18px;
}

.material .Navigation .paginationCounter, .material .Navigation .paginationCounter span {
line-height: 30px;
}

.material .NavigationPrev a:before, .material .NavigationNext a:before {
height: 32px;
width: 44px;
background-color: #ed472c;
-webkit-box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.09);
-moz-box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.09);
box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.09);
}

.material .NavigationPrev a:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/material/images/paginationLeftArrow.png')}]');
background-repeat: no-repeat;
}

.material .NavigationNext a:before {
float: right;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/material/images/paginationRightArrow.png')}]');
background-repeat: no-repeat;
}

.material .NavigationPrev.NavigationDisable a:before {
background-color: #fff;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/material/images/paginationLeftArrow--disable.png')}]');

}

.material .NavigationNext.NavigationDisable a:before {
background-color: #fff;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/material/images/paginationRightArrow--disable.png')}]');
}

.material .ct-googleMap--InfoWindowBody {
-webkit-border-radius: 0;
-moz-border-radius: 0;
border-radius: 0;
border-top: 7px solid #f2b600;
}

.material .ct-googleMap--InfoWindowBody span {
color: #8b8d94;
}

.material .ct-googleMap--InfoWindowBody span:first-child {
color: #4d4746;
font-weight: bold;
}

.material .ct-googleMap--customInfoWindow a {
color: #39b47b;
}

.material .active {
color: #39b47b;
}

.material .active:hover {
color: #39b47b;
}

/*Minimalistic*/
.minimalistic .ct-googleMap {
height: 544px;
}

.minimalistic .cluster div {
color: #222 !important;
}

.minimalistic .cluster img {
margin-top: 14px;
margin-left: 1px;
clip: rect(0px, 70px, 80px, 0) !important;
}

.minimalistic .ct-googleMap--select, .minimalistic .ct-googleMap--sidebar .ct-googleMap--search {
padding-left: 60px;
border: 0;
border-left: none;
border-right: none;
color: #1a1a1a;
background-color: transparent;
height: 50px;
}

.minimalistic .ct-googleMap--searchContainer {
box-shadow: 0 4px 10px 0px rgba(0, 0, 0, 0.1);
}

.minimalistic .ct-googleMap--selectContainer {
box-shadow: 0 -1px 10px 0px rgba(0, 0, 0, 0.1);
margin: 0;
}

.minimalistic .ct-googleMap--selectContainer, .minimalistic .ct-googleMap--searchContainer {
background-color: #ffffff;
}

.minimalistic .ct-googleMap--select {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/minimalistic/images/select-icon.png')}]');
background-repeat: no-repeat;
background-position: 95% center;
border-bottom: 2px solid #e6e6e6;
}

.minimalistic .ct-googleMap--selectContainer:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/minimalistic/images/select-image.png')}]');
}

.minimalistic .ct-googleMap--searchContainer:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/minimalistic/images/input-image.png')}]');
}

.minimalistic ::-webkit-input-placeholder { /* WebKit browsers */
color: #1a1a1a;
}

.minimalistic :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
color: #1a1a1a;
opacity: 1;
}

.minimalistic ::-moz-placeholder { /* Mozilla Firefox 19+ */
color: #1a1a1a;
opacity: 1;
}

.minimalistic :-ms-input-placeholder { /* Internet Explorer 10+ */
color: #1a1a1a;
}

.minimalistic .ct-googleMap--sidebar .ct-googleMap--search:before {
content: "";
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/minimalistic/images/input-image.png')}]');
height: 24px;
width: 18px;
display: block;
position: absolute;
top: 7px;
left: 10px;
z-index: 10;
}

.minimalistic .ct-googleMap--resultsCounter {
color: #ff2c61;
}

.minimalistic .ct-googleMap--sidebar .ct-googleMap--sidebarItem {
color: #344955;
background-color: transparent;
border-bottom: 2px solid #e6e6e6;
padding: 12px 15px 12px 25px;
}

.minimalistic .ct-googleMap--sidebar .ct-googleMap--sidebarItem:after {
content: "";
display: block;
position: absolute;
height: 15px;
width: 15px;
top: 50%;
right: 20px;
margin-top: -7px;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/minimalistic/images/item-arrow.png')}]');
-webkit-transition: all 0.2s ease;
-moz-transition: all 0.2s ease;
-o-transition: all 0.2s ease;
transition: all 0.2s ease;
}

.minimalistic .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover {
color: #ffffff;
background-color: #125cd5;
}

.minimalistic .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover:after {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/minimalistic/images/item-arrowWhite.png')}]');
}

.minimalistic .ct-googleMap--results {
box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.3);
margin-bottom: 20px;
border-radius: 5px;
background: #fff;
}

.minimalistic .Navigation {
border: 0;
}

.minimalistic .Navigation .paginationCounter, .minimalistic .Navigation .paginationCounter span {
line-height: 30px;
font-size: 18px;
}

.minimalistic .NavigationPrev a:before, .minimalistic .NavigationNext a:before {
height: 34px;
width: 44px;
position: relative;
top: -2px;
border: 0;
}

.minimalistic .NavigationPrev a:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/minimalistic/images/paginationLeftArrow.png')}]');
background-repeat: no-repeat;
}

.minimalistic .NavigationNext a:before {
float: right;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/minimalistic/images/paginationRightArrow.png')}]');
background-repeat: no-repeat;
}

.minimalistic .NavigationPrev.NavigationDisable a:before {
background-color: #f5f5f5;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/minimalistic/images/paginationLeftArrow--disable.png')}]');
border: 0;
}

.minimalistic .NavigationNext.NavigationDisable a:before {
background-color: #f5f5f5;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/minimalistic/images/paginationRightArrow--disable.png')}]');
border: 1px solid #d7d6d6;
}

.minimalistic .ct-googleMap--InfoWindowBody span {
color: #8b8d94;
}

.minimalistic .ct-googleMap--InfoWindowBody span:first-child {
color: #3fbdd6;
}

.minimalistic .ct-googleMap--customInfoWindow a {
color: #125cd5;
}

.minimalistic .active {
color: #125cd5;
}

.minimalistic .active:hover {
color: #125cd5;
}

.minimalistic .gm-style-mtc [role="button"], .minimalistic .gm-style .gm-style-mtc div div {
width: 100px;
height: 40px !important;
padding: 10px !important;
line-height: 20px;
}

.minimalistic .gm-style .gm-style-mtc div div [role="checkbox"] img {
margin-top: -15px;
}

.minimalistic .ct-googleMap--searchContainer:before, .minimalistic .ct-googleMap--selectContainer:before {
top: 5px;
}

/*Purple*/
.purple .ct-googleMap {
height: 544px;
}

.purple .cluster div {
color: #a550e6 !important;
}

.purple .cluster img {
margin-left: 1px;
clip: rect(0px, 70px, 80px, 0) !important;
}

.purple .ct-googleMap--select, .purple .ct-googleMap--sidebar .ct-googleMap--search {
padding-left: 40px;
border: 0;
border-left: none;
border-right: none;
color: #1a1a1a;
background-color: transparent;
height: 50px;
}

.purple .ct-googleMap--searchContainer {
box-shadow: 0 4px 10px 0px rgba(0, 0, 0, 0.1);
border-radius: 0 0 15px 15px;
}

.purple .ct-googleMap--selectContainer {
box-shadow: 0 -1px 10px 0px rgba(0, 0, 0, 0.1);
margin: 0;
border-radius: 15px 15px 0 0;
}

.purple .ct-googleMap--selectContainer, .purple .ct-googleMap--searchContainer {
background-color: #ffffff;
font-weight: 700;
}

.purple .ct-googleMap--select {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/purple/images/select-icon.png')}]');
background-repeat: no-repeat;
background-position: 95% center;
border-bottom: 1px solid #e6e6e6;
}

.purple .ct-googleMap--selectContainer:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/purple/images/select-image.png')}]');
}

.purple .ct-googleMap--searchContainer:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/purple/images/input-image.png')}]');
}

.purple ::-webkit-input-placeholder { /* WebKit browsers */
color: #1a1a1a;
}

.purple :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
color: #1a1a1a;
opacity: 1;
}

.purple ::-moz-placeholder { /* Mozilla Firefox 19+ */
color: #1a1a1a;
opacity: 1;
}

.purple :-ms-input-placeholder { /* Internet Explorer 10+ */
color: #1a1a1a;
}

.purple .ct-googleMap--sidebar .ct-googleMap--search:before {
content: "";
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/purple/images/input-image.png')}]');
height: 24px;
width: 18px;
display: block;
position: absolute;
top: 7px;
left: 10px;
z-index: 10;
}

.purple .ct-googleMap--resultsCounter {
color: #ff2c61;
}

.purple .ct-googleMap--sidebar .ct-googleMap--sidebarItem {
color: #344955;
background-color: transparent;
border-bottom: 1px solid #e6e6e6;
padding: 12px 15px 12px 40px;
}

.purple .ct-googleMap--sidebar .ct-googleMap--sidebarItem:before {
content: "";
display: block;
position: absolute;
height: 13px;
width: 17px;
top: 50%;
left: 10px;
margin-top: -7px;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/purple/images/item-arrow.png')}]');
-webkit-transition: all 0.2s ease;
-moz-transition: all 0.2s ease;
-o-transition: all 0.2s ease;
transition: all 0.2s ease;
}

.purple .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover {
color: #8e3fd2;
background-color: #efe4f9;
}

.purple .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/purple/images/item-arrow-active.png')}]');
}

.purple .ct-googleMap--results {
box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
margin-bottom: 20px;
border-radius: 15px;
background: #fff;
}

.purple .Navigation {
border: 0;
background: #fff;
padding: 15px 20px;
border-radius: 15px;
box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
}

.purple .Navigation .paginationCounter, .purple .Navigation .paginationCounter span {
line-height: 30px;
font-size: 18px;
}

.purple .NavigationPrev a:before, .purple .NavigationNext a:before {
height: 34px;
width: 44px;
position: relative;
top: -2px;
border: 0;
}

.purple .NavigationPrev a:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/purple/images/paginationLeftArrow.png')}]');
background-repeat: no-repeat;
}

.purple .NavigationNext a:before {
float: right;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/purple/images/paginationRightArrow.png')}]');
background-repeat: no-repeat;
}

.purple .NavigationPrev.NavigationDisable a:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/purple/images/paginationLeftArrow--disable.png')}]');
border: 0;
}

.purple .NavigationNext.NavigationDisable a:before {
background-color: #f5f5f5;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/purple/images/paginationRightArrow--disable.png')}]');
border: 1px solid #d7d6d6;
}

.purple .ct-googleMap--InfoWindowBody span {
color: #8b8d94;
}

.purple .ct-googleMap--InfoWindowBody span:first-child {
color: #3fbdd6;
}

.purple .ct-googleMap--customInfoWindow a {
color: #a550e6;
}

.purple .active {
color: #a550e6;
}

.purple :hover {
color: #a550e6;
}

.purple .gm-style-mtc [role="button"], .purple .gm-style .gm-style-mtc div div {
width: 100px;
height: 40px !important;
padding: 10px !important;
line-height: 20px;
}

.purple .gm-style .gm-style-mtc div div [role="checkbox"] img {
margin-top: -15px;
}

.purple .ct-googleMap--searchContainer:before, .purple .ct-googleMap--selectContainer:before {
top: 5px;
}

/*Diamond*/
.diamond .ct-googleMap {
height: 544px;
}

.diamond .cluster div {
color: #000000 !important;
}

.diamond .cluster img {
margin-left: 1px;
clip: rect(0px, 70px, 80px, 0) !important;
}

.diamond .ct-googleMap--select, .diamond .ct-googleMap--sidebar .ct-googleMap--search {
padding-left: 65px;
border: 0;
border-left: none;
border-right: none;
color: #1a1a1a;
height: 50px;
}

.diamond .ct-googleMap--searchContainer {
box-shadow: none;
border-radius: 0 0 15px 15px;
}

.diamond .ct-googleMap--selectContainer {
box-shadow: none;
margin: 0;
border-radius: 15px 15px 0 0;
}

.diamond .ct-googleMap--selectContainer, .diamond .ct-googleMap--searchContainer {
background-color: #f0eff4;
font-weight: 700;
}

.diamond .ct-googleMap--select {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/diamond/images/select-icon.png')}]');
background-repeat: no-repeat;
background-position: 95% center;
border-bottom: 1px solid #dddddd;
}

.diamond .ct-googleMap--selectContainer:before {
background-color: #3bcd9d;
border-radius: 10px;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/diamond/images/select-image.png')}]');
}

.diamond .ct-googleMap--searchContainer:before {
background-color: #3bcd9d;
border-radius: 10px;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/diamond/images/input-image.png')}]');
}

.diamond ::-webkit-input-placeholder { /* WebKit browsers */
color: #1a1a1a;
}

.diamond :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
color: #1a1a1a;
opacity: 1;
}

.diamond ::-moz-placeholder { /* Mozilla Firefox 19+ */
color: #1a1a1a;
opacity: 1;
}

.diamond :-ms-input-placeholder { /* Internet Explorer 10+ */
color: #1a1a1a;
}

.diamond .ct-googleMap--sidebar .ct-googleMap--search:before {
content: "";
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/diamond/images/input-image.png')}]');
height: 24px;
width: 18px;
display: block;
position: absolute;
top: 7px;
left: 10px;
z-index: 10;
}

.diamond .ct-googleMap--resultsCounter {
color: #ff2c61;
}

.diamond .ct-googleMap--sidebar .ct-googleMap--sidebarItem {
color: #344955;
background-color: transparent;
border-bottom: 1px solid #dddddd;
padding: 12px 15px 12px 40px;
}

.diamond .ct-googleMap--sidebar .ct-googleMap--sidebarItem:before {
content: "";
display: block;
position: absolute;
height: 20px;
width: 24px;
top: 50%;
right: 10px;
margin-top: -9px;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/diamond/images/item-arrow.png')}]');
-webkit-transition: all 0.2s ease;
-moz-transition: all 0.2s ease;
-o-transition: all 0.2s ease;
transition: all 0.2s ease;
}

.diamond .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover {
color: #41ca9d;
background-color: #ffffff;
}

.diamond .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/diamond/images/item-arrow-active.png')}]');
}

.diamond .ct-googleMap--results {
box-shadow: none;
margin-bottom: 20px;
border-radius: 15px;
background: #f0eff4;
}

.diamond .ct-googleMap--sidebar .ct-googleMap--sidebarItem:nth-child(8n) {
border-bottom: 0;
}

.diamond .Navigation {
border: 0;
background: transparent;
padding: 15px 20px;
border-radius: 15px;
box-shadow: none;
}

.diamond .Navigation .paginationCounter, .diamond .Navigation .paginationCounter span {
line-height: 30px;
font-size: 18px;
}

.diamond .NavigationPrev a:before, .diamond .NavigationNext a:before {
height: 34px;
width: 44px;
position: relative;
top: -2px;
border: 0;
}

.diamond .NavigationPrev a:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/diamond/images/paginationLeftArrow.png')}]');
background-repeat: no-repeat;
}

.diamond .NavigationNext a:before {
float: right;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/diamond/images/paginationRightArrow.png')}]');
background-repeat: no-repeat;
}

.diamond .NavigationPrev.NavigationDisable a:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/diamond/images/paginationLeftArrow--disable.png')}]');
border: 0;
}

.diamond .NavigationNext.NavigationDisable a:before {
background-color: #f5f5f5;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/diamond/images/paginationRightArrow--disable.png')}]');
border: 0;
}

.diamond .ct-googleMap--InfoWindowBody span {
color: #8b8d94;
}

.diamond .ct-googleMap--InfoWindowBody span:first-child {
color: #3fbdd6;
}

.diamond .ct-googleMap--customInfoWindow a {
color: #41ca9d;
}

.diamond .active {
color: #41ca9d;
}

.diamond :hover {
color: #41ca9d;
}

.diamond .gm-style-mtc [role="button"], .diamond .gm-style .gm-style-mtc div div {
width: 100px;
height: 40px !important;
padding: 10px !important;
line-height: 20px;
}

.diamond .gm-style .gm-style-mtc div div [role="checkbox"] img {
margin-top: -15px;
}

.diamond .ct-googleMap--searchContainer:before, .diamond .ct-googleMap--selectContainer:before {
top: 10px;
left: 15px;
height: 32px;
width: 32px;
}

/*Selective*/
.selective .ct-googleMap {
height: 544px;
}

.selective .cluster div {
color: #000000 !important;
}

.selective .cluster img {
margin-left: 1px;
clip: rect(0px, 70px, 80px, 0) !important;
}

.selective .ct-googleMap--select, .selective .ct-googleMap--sidebar .ct-googleMap--search {
padding-left: 65px;
border: 0;
border-left: none;
border-right: none;
color: #1a1a1a;
height: 50px;
}

.selective .ct-googleMap--searchContainer {
box-shadow: 0 4px 10px 0px rgba(0, 0, 0, 0.1);
border-radius: 0;
}

.selective .ct-googleMap--selectContainer {
box-shadow: 0 0px 10px 0px rgba(0, 0, 0, 0.1);
margin: 0;
border-radius: 0;
}

.selective .ct-googleMap--selectContainer, .selective .ct-googleMap--searchContainer {
background-color: #ffffff;
font-weight: 700;
}

.selective .ct-googleMap--select {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/selective/images/select-icon.png')}]');
background-repeat: no-repeat;
background-position: 95% center;
border-bottom: 1px solid #dddddd;
}

.selective .ct-googleMap--selectContainer:before {
border-radius: 10px;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/selective/images/select-image.png')}]');
}

.selective .ct-googleMap--searchContainer:before {
border-radius: 10px;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/selective/images/input-image.png')}]');
}

.selective ::-webkit-input-placeholder { /* WebKit browsers */
color: #1a1a1a;
}

.selective :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
color: #1a1a1a;
opacity: 1;
}

.selective ::-moz-placeholder { /* Mozilla Firefox 19+ */
color: #1a1a1a;
opacity: 1;
}

.selective :-ms-input-placeholder { /* Internet Explorer 10+ */
color: #1a1a1a;
}

.selective .ct-googleMap--sidebar .ct-googleMap--search:before {
content: "";
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/selective/images/input-image.png')}]');
height: 24px;
width: 18px;
display: block;
position: absolute;
top: 7px;
left: 10px;
z-index: 10;
}

.selective .ct-googleMap--resultsCounter {
color: #ff2c61;
}

.selective .ct-googleMap--sidebar .ct-googleMap--sidebarItem {
color: #344955;
background-color: transparent;
border-bottom: 1px solid #dddddd;
padding: 12px 15px 12px 25px;
}

.selective .ct-googleMap--sidebar .ct-googleMap--sidebarItem:before {
content: "";
display: block;
position: absolute;
height: 20px;
width: 24px;
top: 50%;
right: 10px;
margin-top: -9px;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/selective/images/item-arrow.png')}]');
-webkit-transition: all 0.2s ease;
-moz-transition: all 0.2s ease;
-o-transition: all 0.2s ease;
transition: all 0.2s ease;
}

.selective .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover {
color: #ffb822;
background-color: #ffffff;
}

.selective .ct-googleMap--sidebar .ct-googleMap--sidebarItem:hover:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/selective/images/item-arrow-active.png')}]');
}

.selective .ct-googleMap--results {
box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
margin-bottom: 20px;
border-radius: 0px;
background: #ffffff;
}

.selective .ct-googleMap--sidebar .ct-googleMap--sidebarItem:nth-child(8n) {
border-bottom: 0;
}

.selective .Navigation {
border: 0;
background: transparent;
padding: 15px 20px;
border-radius: 15px;
box-shadow: none;
}

.selective .Navigation .paginationCounter, .selective .Navigation .paginationCounter span {
line-height: 30px;
font-size: 18px;
}

.selective .NavigationPrev a:before, .selective .NavigationNext a:before {
height: 34px;
width: 44px;
position: relative;
top: -2px;
border: 0;
}

.selective .NavigationPrev a:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/selective/images/paginationLeftArrow.png')}]');
background-repeat: no-repeat;
}

.selective .NavigationNext a:before {
float: right;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/selective/images/paginationRightArrow.png')}]');
background-repeat: no-repeat;
}

.selective .NavigationPrev.NavigationDisable a:before {
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/selective/images/paginationLeftArrow--disable.png')}]');
border: 0;
}

.selective .NavigationNext.NavigationDisable a:before {
background-color: #f5f5f5;
background-image: url('[{$oViewConf->getModuleUrl('ct/shoplocator','out/src/style/selective/images/paginationRightArrow--disable.png')}]');
border: 0;
}

.selective .ct-googleMap--InfoWindowBody span {
color: #8b8d94;
}

.selective .ct-googleMap--InfoWindowBody span:first-child {
color: #3fbdd6;
}

.selective .ct-googleMap--customInfoWindow a {
color: #ffb822;
}

.selective .active {
color: #ffb822;
}

.selective :hover {
color: #ffb822;
}

.selective .gm-style-mtc [role="button"], .selective .gm-style .gm-style-mtc div div {
width: 100px;
height: 40px !important;
padding: 10px !important;
line-height: 20px;
}

.selective .gm-style .gm-style-mtc div div [role="checkbox"] img {
margin-top: -15px;
}

.selective .ct-googleMap--searchContainer:before, .selective .ct-googleMap--selectContainer:before {
top: 10px;
left: 15px;
height: 32px;
width: 32px;
}

/*RESPONSIVE(MEDIA QUERIES)*/

@media (max-width: 1200px ) {
.lollipop, .cosmic, .pop, .retro, .bee, .dark, .metro, .modern, .material, .minimalistic, .purple {
width: 100%;
}

.ct-googleMap--SidebarCol {
width: 40%;
}

.ct-googleMap--MapCol {
width: 60%;
}
}

@media (max-width: 768px) {
.ct-googleMap--SidebarCol, .ct-googleMap--MapCol {
width: 100%;
}

.ct-googleMap--sidebar {
margin-bottom: 30px;
}
}
[{/capture}]
<style>
[{$PluginStyle}]
</style>