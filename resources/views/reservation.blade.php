@extends('layouts.master')

@section('css')
    <link rel="stylesheet" type="text/css" href="{{ asset('css/jquery.fancybox.min.css') }}" media="screen" />
@endsection

@section('content')
    @include('partials.reservation')

    @include('partials.latest_publications')

    @include('partials.thubnails')

    @include('partials.contactForm')
@endsection

@section('scripts')
    <script>
        jQuery(function($){
            $("#date_start").mask("99/99/9999",{placeholder:"mm/dd/yyyy"});
            $("#date_end").mask("99/99/9999",{placeholder:"mm/dd/yyyy"});
            $("#phone").mask("+380-999-99-9999");
        });
    </script>

    <script type="text/javascript" src="{{ asset('js/jquery.fancybox.min.js') }}"></script>
    <script src="{{ asset('js/jquery.mask.js') }}"></script>
@endsection