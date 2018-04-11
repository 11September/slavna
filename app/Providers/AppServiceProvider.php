<?php

namespace App\Providers;

use App\Photo;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        view()->composer('partials.thubnails', function ($view){
            $view->with('thubnails', Photo::thubnails_photos());
        });
    }
}
