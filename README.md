# Oxid Shop Locator

## Description

This module allows you to show all your markers in one list,
with convenient map preview as well as search and filtering options
to easier find the closest store location.

Demo: https://www.createit.com/oxid/shoplocator/

## Installation

Please proceed with one of the following ways to install the module:

### Module installation via composer

In order to install the module via composer, run the following commands in commandline of your shop base directory 
(where the shop's composer.json file resides).

```
composer require ct/shoplocator
```

### Module installation via repository cloning

Clone the module to your OXID eShop **modules/ct/** directory:
```
git clone https://github.com/createitcom/oxid-shop-locator.git shoplocator
```

### Module installation from zip package (manual)
* Make a new folder "shoplocator" in the **modules/ct/ directory** of your shop installation. 
* Download the https://github.com/createitcom/oxid-shop-locator/archive/master.zip file and unpack it into the created folder.
* Add an entry in **{YOUR_SHOP_ROOT}/composer.json**:

      "autoload": {
         "psr-4": {
           "ct\\shoplocator\\": "./source/modules/ct/shoplocator"
         }
      },
        
* Run (from the root of project):
        
      composer dump-autoload 
        
* Remove all files in **/var/www/{YOUR_SHOP_ROOT}/source/tmp/** (rm-rf *)
* In oxid panel navigate to Extensions->Modules and activate CT Shoplocator.
At this moment you should see a new menu: CREATEIT MODULES
* Navigate to Master Settings->Core Settings->Settings(TAB) -> at the very bottom there is a config field "CreateIT ShopLocator Options" copy paste the relevant Google Maps JS api key

## Activate Module

- Activate the module in the administration panel.

## Uninstall

Disable the module in administration area and delete the module folder. The modules stores data inside the oxid database. 

If you wish to remove the database data after the module is deactivated:
    
    SET foreign_key_checks = 0;
    
        DROP TABLE IF EXISTS 
            `ct_shoplocator_map`,
            `ct_shoplocator_map_has_marker_set`,
            `ct_shoplocator_map_cluster`,
            `ct_shoplocator_map_info_bubble`,
            `ct_shoplocator_map_sidebar`,
            `ct_shoplocator_map_marker_set`,
            `ct_shoplocator_map_marker_set_has_marker`,
            `ct_shoplocator_map_marker`;
    
    SET foreign_key_checks = 1;

## License

Licensing of the software product depends on the shop edition used. The software for OXID eShop Community Edition
is published under the GNU General Public License v3. You may distribute and/or modify this software according to
the licensing terms published by the Free Software Foundation. Legal licensing terms regarding the distribution of
software being subject to GNU GPL can be found under http://www.gnu.org/licenses/gpl.html. The software for OXID eShop
Professional Edition and Enterprise Edition is released under commercial license. OXID eSales AG has the sole rights to
the software. Decompiling the source code, unauthorized copying as well as distribution to third parties is not
permitted. Infringement will be reported to the authorities and prosecuted without exception.