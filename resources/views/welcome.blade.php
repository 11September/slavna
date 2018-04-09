@extends('layouts.master')

@section('css')

@endsection

@section('content')

@include('partials.intro')

<h2>КОТТЕДЖ-ПАРК «СЛАВНА» <br>
    В С. ЧЕРНЕТЧИНА.</h2>
<h4>СПЕЦИАЛЬНОЕ ПРЕДЛОЖЕНИЕ</h4>
<h5>Акции, специальные предложения и системы скидок от коттедж-парк Славна</h5>

@include('partials.photo_report')

@include('partials.shortAbout')

@include('partials.reviews')

@include('partials.latest_publications')

@include('partials.thubnails')

@include('partials.contactForm')



@endsection

@section('scripts')

@endsection