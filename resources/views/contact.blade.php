@extends('layouts.master')

@section('css')
    <link rel="stylesheet" href="{{ asset('css/contact.css') }}">
    <link rel="stylesheet" href="{{ asset('css/jquery.fancybox.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.theme.default.css') }}">
@endsection

@section('content')

@endsection

@section('scripts')
    <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDPK3GeLI9hN0Pc1xqLeRFNc7nxX7OBFX0&callback=initMap">
    </script>

    <script>
        var lat = +"40.403022";
        var lng = +"49.848786";

        function initMap() {
            var element = document.getElementById('map');
            var options = {
                zoom: 14,
                center: {lat, lng}
            };
            var myMap = new google.maps.Map(element, options);
            addMarker({lat, lng});

            function addMarker(coordinates) {
                var marker = new google.maps.Marker({
                    position: coordinates,
                    map: myMap,
//                icon: 'img/map_icon.png'
                });
            }
        }
    </script>
@endsection