<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function index()
    {
        return view('blog');
    }

    public function post($post = null)
    {
        return view('post');
    }
}
