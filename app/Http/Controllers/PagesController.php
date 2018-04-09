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

    public function sendEmail(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'name' => 'required|min:3',
            'cottage' => 'required',
            'date_start' => 'required|date',
            'date_end' => 'required|date',
            'phone' => 'required|email',
            'message' => 'required|min:5',
        ]);

        if ($validator->fails()) {
            return redirect('/contacts')
                ->withErrors($validator)
                ->withInput();
        } else {
            try{
                $message = $request->all();

//                $contact = new Contact;
//                $contact->name = $request->name;
//                $contact->email = $request->email;
//                $contact->phone = $request->phone;
//                $contact->message = $request->message;
//                $contact->save();
//
//                return response()->json('Ваше сообщение доставлено!');
            }
            catch (Exception $exception){
                $request->session()->flash('alert-success', 'Email not send!');
                return redirect()->back();
            }
            $request->session()->flash('alert-success', 'Email send successully!');
            return redirect()->back();
        }
    }
}
