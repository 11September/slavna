<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function welcome()
    {
        return view('welcome');
    }

    public function about()
    {
        return view('about');
    }

    public function services()
    {
        return view('services');
    }

    public function contacts()
    {
        return view('contact');
    }

    public function reservation()
    {
        return view('reservation');
    }

    public function albums()
    {
        return view('albums');
    }

    public function photos()
    {
        return view('photos');
    }

    public function cottages()
    {
        return view('cottages');
    }

    public function cottage()
    {
        return view('one-cottage');
    }

    public function houses()
    {
        return view('houses');
    }

    public function house()
    {
        return view('house');
    }

    public function saunas()
    {
        return view('welcome');
    }

    public function sauna()
    {
        return view('sauna');
    }

    public function baths()
    {
        return view('baths');
    }

    public function bath()
    {
        return view('bath');
    }

    public function arbours()
    {
        return view('arbours');
    }

    public function arbour()
    {
        return view('arbour');
    }
}
