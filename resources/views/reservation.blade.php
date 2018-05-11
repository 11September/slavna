@extends('layouts.master')

@section('css')
    <link rel="stylesheet" type="text/css" href="{{ asset('css/jquery.fancybox.min.css') }}" media="screen" />

    <link rel="stylesheet" type="text/css" href="{{ asset('css/jquery-ui.min.css') }}" media="screen" />
    <link rel="stylesheet" type="text/css" href="{{ asset('css/jquery-ui.theme.min.css') }}" media="screen" />
@endsection

@section('content')
    @include('partials.reservation')

    @include('partials.latest_publications')

    @include('partials.thubnails')

    @include('partials.contactForm')
@endsection

@section('scripts')
    <script src="{{ asset('js/jquery-ui.min.js') }}"></script>

    <script type="text/javascript" src="{{ asset('js/jquery.fancybox.min.js') }}"></script>
    <script src="{{ asset('js/jquery.mask.js') }}"></script>

    <script>
        jQuery(function($){
            $( "#date_start" ).datepicker({
                dateFormat: "yy-mm-dd"
            });
            $( "#date_end" ).datepicker({
                dateFormat: "yy-mm-dd"
            });

            $("#phone").mask("+380-999-99-9999");
        });
    </script>
@endsectionw