<?php

namespace Modules\Import\Providers;


use Illuminate\Support\ServiceProvider;
use Modules\Base\Traits\AddsAsset;
use Illuminate\Support\Facades\View;
use Modules\Admin\Http\ViewComposers\AssetsComposer;

class ImportServiceProvider extends ServiceProvider
{
    use AddsAsset;

    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {


     $this->addAdminAssets('admin.importer.index', ['admin.import.css', 'admin.import.js']);
    }

    public function register()
    {
        
    }
}
