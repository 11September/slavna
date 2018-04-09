@extends('layouts.master')

@section('css')

@endsection

@section('content')
    @include('partials.album-items')

    @include('partials.latest_publications')

    @include('partials.thubnails')

    @include('partials.contactForm')
@endsection

@section('scripts')

@endsection