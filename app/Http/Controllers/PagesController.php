<?php

namespace App\Http\Controllers;

use App\Reservation;
use App\Service;
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
        return view('albums');
    }

    public function photos()
    {
        return view('photos');
    }

    public function videos()
    {
        return view('videos');
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

    public function form_reservation(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'name' => 'required|min:3',
            'cottage_id' => 'required',
            'date_start' => 'required|date',
            'date_end' => 'required|date',
            'phone' => 'required|max:15',
            'message' => 'required|min:5',
        ]);

        if ($validator->fails()) {
            return redirect()
                ->back()
                ->withErrors($validator)
                ->withInput();
        } else {
            try{
                $contact = new Reservation();
                $contact->name = $request->name;
                $contact->cottage_id = $request->cottage_id;
                $contact->date_start = $request->date_start;
                $contact->date_end = $request->date_end;
                $contact->phone = $request->phone;
                $contact->message = $request->message;
                $contact->save();
            }
            catch (Exception $exception){
                $request->session()->flash('alert-success', 'Email not send!');
                return redirect()->back();
            }

            return redirect()->back();
        }
    }
}
