<?php

namespace ct\shoplocator\Core;

use OxidEsales\Eshop\Core\Registry;

/**
 * Class ShopLocatorAdminFileHelper
 * @package ct\shoplocator\Core
 */
class ShopLocatorAdminFileHelper
{

    /**
     * @param $params
     * @param $pictureParam
     * @param null $existingObject
     */
    public function handleImages(&$params, $pictureParam, $existingObject = null)
    {
        if ($pictureParam === null) {
            return;
        }
        $filePath = $this->getPicturePath();
        if (is_dir($filePath) === false) {
            umask(0);
            mkdir($filePath);
        }
        $picture = Registry::getConfig()->getUploadedFile($pictureParam);

        if ($picture === null || $picture['error'] != 0) {
            return;
        }

        if ($picture['name'] != '') {
            $newPicture = $this->getNewFilename($picture['name'], $filePath);
        }
        if ($existingObject && $existingObject->isLoaded()) {
            $existingIcon = $existingObject->$pictureParam->value;
            if ($existingIcon !== null && $existingIcon !== $newPicture) {
                Registry::get(ShopLocatorAdminFileHelper::class)->deletePicture($existingIcon);
            }
        }
        try {
            move_uploaded_file($picture['tmp_name'], $filePath . $newPicture);
        } catch (\Exception $exception) {
            Registry::getLogger()->error($exception->getMessage(), [$exception]);
        }

        $params[$pictureParam] = $newPicture;
    }

    /**
     * @param $pictureName
     */
    public function deletePicture($pictureName)
    {
        $filePath = $this->getPicturePath();
        $fullPicturePath = $filePath . $pictureName;
        if (file_exists($fullPicturePath)) {
            try {
                unlink($fullPicturePath);
            } catch (\Exception $exception) {
                Registry::getLogger()->error($exception->getMessage(), [$exception]);
            }
        }

    }

    /**
     * @param $str
     * @return string
     */
    public function sanitizeFilename($str)
    {
        $filename = explode(".", $str);

        $filetype = trim($filename[count($filename) - 1]);

        if (isset($filetype)) {

            $oStr = getStr();

            if (count($filename) > 0) {
                unset($filename[count($filename) - 1]);
            }

            $sanitizedName = '';
            if (isset($filename[0])) {
                $sanitizedName = $oStr->preg_replace('/[^a-zA-Z0-9()_\.-]/', '', implode('.', $filename));
            }

            $str = $sanitizedName . '.' . $filetype;
        }
        return $str;
    }

    /**
     * @param $filename
     * @param $filepath
     * @param int $i
     * @param null $tmpname
     * @return string|null
     */
    public function getNewFilename($filename, $filepath, $i = 1, $tmpname = null)
    {
        $filename = $this->sanitizeFilename($filename);
        $extension = explode('.', $filename);
        $extension = $extension[count($extension) - 1];

        $baseName = str_replace('.' . $extension, '', $filename);
        if (
            (
                $tmpname === null &&
                file_exists($filepath . $filename) == true
            )
            ||
            (
                $tmpname !== null &&
                file_exists($filepath . $tmpname) == true
            )
        ) {
            $tmpname = $baseName . '(' . $i . ').' . $extension;
            return $this->getNewFilename($filename, $filepath, $i + 1, $tmpname);
        }

        if ($tmpname === null) {
            $tmpname = $filename;
        }

        return $tmpname;
    }

    /**
     * @return string
     */
    public function getPicturePath()
    {
        return Registry::getConfig()->getOutDir() . 'pictures/master/ctshoplocator/';
    }
}
