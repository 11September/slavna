<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Number extends Model
{
    public function features()
    {
        return $this->hasMany(Feature::class);
    }

    public function photos()
    {
        return $this->hasMany(PhotoNumber::class);
    }
}
