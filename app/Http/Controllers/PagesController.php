<?php

namespace App\Http\Controllers;

use App\Album;
use App\Contact;
use App\Number;
use App\Photo;
use App\Reservation;
use App\Service;
use App\Video;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

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
        $services = Service::all();

        return view('services', compact('services'));
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
        $albums = Album::all();

        return view('albums', compact('albums'));
    }

    public function photos()
    {
        $photos = Photo::all();

        return view('photos', compact('photos'));
    }

    public function photosAlbum($albumId = null)
    {
        $photos = Photo::where('album_id', $albumId)->get();

        return view('photos', compact('photos'));
    }

    public function videos()
    {
        $videos = Video::all();

        return view('videos', compact('videos'));
    }

    public function cottages($type = null)
    {
        $numbers = Number::where('type', $type)->latest()->get();

        return view('cottages', compact('numbers'));
    }

    public function cottage($id = null)
    {
        $number = Number::whereId($id)->with('features', 'photos')->first();

//        dd($number);

        return view('one-cottage', compact('number'));
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

    public function form_question(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|min:3',
            'email' => 'required|email',
            'phone' => 'required|max:17',
            'message' => 'required|min:5',
        ]);

        if ($validator->fails()) {
//            return redirect()
//                ->back()
//                ->withErrors($validator)
//                ->withInput();
            return response()->json(['text' => 'Извините, заполните корректно форму!', 'type' => 'alert-warning']);
        }

        $contact = new Contact();
        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->phone = $request->phone;
        $contact->message = $request->message;
        $contact->save();

        return response()->json(['text' => 'Спасибо, мы скоро Вам ответим!', 'type' => 'alert-success']);

    }

    public function form_reservation(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|min:3',
            'cottage_id' => 'required|int',
            'date_start' => 'required',
            'date_end' => 'required',
            'phone' => 'required|max:17',
            'message' => 'required|min:5',
        ]);

        if ($validator->fails()) {
            return response()->json(['text' => 'Извините, заполните корректно форму!', 'type' => 'alert-warning']);
//            return redirect()
//                ->back()
//                ->withErrors($validator)
//                ->withInput();
        }

        $contact = new Reservation();
        $contact->name = $request->name;
        $contact->cottage_id = $request->cottage_id;
        $contact->date_start = $request->date_start;
        $contact->date_end = $request->date_end;
        $contact->phone = $request->phone;
        $contact->message = $request->message;
        $contact->save();

        return response()->json(['text' => 'Спасибо, за бронь, мы скоро Вам ответим!', 'type' => 'alert-success']);
    }
}
