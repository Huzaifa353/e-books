<?php

// autoload_real.php @generated by Composer

class ComposerAutoloaderInit29850dea4f8d6ec9a91a12b2fc7f1bae
{
    private static $loader;

    public static function loadClassLoader($class)
    {
        if ('Composer\Autoload\ClassLoader' === $class) {
            require __DIR__ . '/ClassLoader.php';
        }
    }

    /**
     * @return \Composer\Autoload\ClassLoader
     */
    public static function getLoader()
    {
        if (null !== self::$loader) {
            return self::$loader;
        }

        require __DIR__ . '/platform_check.php';

        spl_autoload_register(array('ComposerAutoloaderInit29850dea4f8d6ec9a91a12b2fc7f1bae', 'loadClassLoader'), true, true);
        self::$loader = $loader = new \Composer\Autoload\ClassLoader(\dirname(__DIR__));
        spl_autoload_unregister(array('ComposerAutoloaderInit29850dea4f8d6ec9a91a12b2fc7f1bae', 'loadClassLoader'));

        require __DIR__ . '/autoload_static.php';
        call_user_func(\Composer\Autoload\ComposerStaticInit29850dea4f8d6ec9a91a12b2fc7f1bae::getInitializer($loader));

        $loader->register(true);

        $includeFiles = \Composer\Autoload\ComposerStaticInit29850dea4f8d6ec9a91a12b2fc7f1bae::$files;
        foreach ($includeFiles as $fileIdentifier => $file) {
            composerRequire29850dea4f8d6ec9a91a12b2fc7f1bae($fileIdentifier, $file);
        }

        return $loader;
    }
}

/**
 * @param string $fileIdentifier
 * @param string $file
 * @return void
 */
function composerRequire29850dea4f8d6ec9a91a12b2fc7f1bae($fileIdentifier, $file)
{
    if (empty($GLOBALS['__composer_autoload_files'][$fileIdentifier])) {
        $GLOBALS['__composer_autoload_files'][$fileIdentifier] = true;

        require $file;
    }
}