@extends('layouts.master')

@section('css')

@endsection

@section('content')
    @include('partials.thubnails-about')

    @include('partials.latest_publications')

    @include('partials.thubnails')

    @include('partials.contactForm')
@endsection

@section('scripts')

@endsection