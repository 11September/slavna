<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Photo extends Model
{
    public static function thubnails_photos()
    {
        $photos = Photo::select('id','image', 'description')->latest()->take(5)->get();
        return $photos;
    }
}
