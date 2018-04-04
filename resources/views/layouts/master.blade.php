<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!--[if IE]>
    <meta http-equiv="x-ua-compatible" content="IE=9"/>
    <![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Slavna</title>
    {{--<title>{{ Voyager::setting('title') }}</title>--}}
    {{--<meta name="description" content="{{ Voyager::setting('description') }}">--}}
    {{--<meta name="keywords" content="{{ Voyager::setting('keywords') }}">--}}

    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">

    <link rel="icon" type="image/png" sizes="32x32" href="{{ asset('images/favicon-32x32.png') }}">

    @include('partials.css')

    @yield('css')
</head>

<body>
@include('partials.navbar')

@yield('content')

@include('partials.map')
@include('partials.footer')
@include('partials.scripts')
@yield('scripts')
</body>
</html>
