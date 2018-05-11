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

    public function album()
    {
        return $this->belongsTo(Album::class);
    }

    public static function render($photos)
    {
        $photos_array = array();

        foreach ($photos as $photo) {
            if (json_decode($photo->image)) {
                foreach (json_decode($photo->image) as $file){
                    filter_var($file, FILTER_VALIDATE_INT);
                    array_push($photos_array, $file);
                }
            }else{
                array_push($photos_array, $photo->image);
            }
        }

        return $photos_array;
    }
}
