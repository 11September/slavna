<?php

namespace App\Providers;

use App\Album;
use App\Post;
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

        view()->composer('partials.latest_publications', function ($view){
            $view->with('posts', Post::thubnails_posts());
        });

        view()->composer('partials.photo_report', function ($view){
            $view->with('photos', Album::thubnails_albums());
        });
    }
}
