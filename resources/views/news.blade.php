@extends('layouts.master')

@section('css')
    <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.theme.default.min.css') }}">
@endsection

@section('content')
    <section class="big-slider">
        <div class="big-slider-body owl-carousel owl-theme big_slider_2">
            <div><img src="{{ asset('images/news/news_header.png') }}"></div>
            <div><img src="{{ asset('images/news/news_header.png') }}"></div>
            <div><img src="{{ asset('images/news/news_header.png') }}"></div>
            <div><img src="{{ asset('images/news/news_header.png') }}"></div>
            <div><img src="{{ asset('images/news/news_header.png') }}"></div>
            <div><img src="{{ asset('images/news/news_header.png') }}"></div>
        </div>
    </section>

    <section class="news-page" id="basic-waypoint">

        <div class="wrapper-news-heading">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h2>Новини</h2>
                    </div>

                    <div class="col-md-6 news-page-panel">
                        <a href="#">останні новини</a>
                        <a class="news-page-panel-active" href="#">несортовані</a>
                        <a href="#">влада</a>
                        <a href="#">закон</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-xl-12 news_left_block">

                    <div class="row">
                        <div class="col-md-6">
                            <div class="post-item">
                                <div class="row">
                                    <div class="col-xl-6 news_item_img">
                                        <a href="{{ url('/news/1') }}">
                                            <img src="{{ asset('images/news_item_1.png') }}" alt="news_item_img">
                                        </a>
                                    </div>
                                    <div class="col-xl-6 post-item-description">
                                        <div class="row">
                                            <div class="col-md-12">

                                                <div class="post-item-calender">
                                                    <i class="fas fa-calendar-alt"></i>
                                                    <p class="post-item-calender-date">14.03.2018</p>
                                                </div>
                                            </div>
                                        </div>

                                        <a href="{{ url('/news/1') }}">
                                            <h3> Подія дня, чи цієї години. Заголовок набраний висотою 20пт.</h3>
                                        </a>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="wrapper-post-content">
                                            <p class="post-content">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                                veniam,
                                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                                consequat...
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="clearfix"></div>

                                <div class="post-item-bottom">
                                    <div class="row">
                                        <div class="col-md-7">
                                            <div class="wrapper-post-item-category">
                                                <i class="fas fa-folder-open"></i>
                                                <p class="post-item-category">ОСТАННІ НОВИНИ</p>

                                                <i class="fas fa-user"></i>
                                                <p class="post-item-user">Админ.</p>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <a class="post-item-more" href="#">
                                                <span>Докладніше...</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="post-item">
                                <div class="row">
                                    <div class="col-xl-6 news_item_img">
                                        <a href="{{ url('/news/1') }}">
                                            <img src="{{ asset('images/news_item_2.png') }}" alt="news_item_img">
                                        </a>
                                    </div>
                                    <div class="col-xl-6 post-item-description">
                                        <div class="row">
                                            <div class="col-md-12">

                                                <div class="post-item-calender">
                                                    <i class="fas fa-calendar-alt"></i>
                                                    <p class="post-item-calender-date">14.03.2018</p>
                                                </div>
                                            </div>
                                        </div>

                                        <a href="{{ url('/news/1') }}">
                                            <h3> Подія дня, чи цієї години. Заголовок набраний висотою 20пт.</h3>
                                        </a>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="wrapper-post-content">
                                            <p class="post-content">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                                veniam,
                                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                                consequat...
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="clearfix"></div>

                                <div class="post-item-bottom">
                                    <div class="row">
                                        <div class="col-md-7">
                                            <div class="wrapper-post-item-category">
                                                <i class="fas fa-folder-open"></i>
                                                <p class="post-item-category">ОСТАННІ НОВИНИ</p>

                                                <i class="fas fa-user"></i>
                                                <p class="post-item-user">Админ.</p>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <a class="post-item-more" href="#">
                                                <span>Докладніше...</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="news_bg_fff">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12 news_left_block">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="post-item">
                                    <div class="row">
                                        <div class="col-xl-6 news_item_img">
                                            <a href="{{ url('/news/1') }}">
                                                <img src="{{ asset('images/news_item_3.png') }}" alt="news_item_img">
                                            </a>
                                        </div>
                                        <div class="col-xl-6 post-item-description">
                                            <div class="row">
                                                <div class="col-md-12">

                                                    <div class="post-item-calender">
                                                        <i class="fas fa-calendar-alt"></i>
                                                        <p class="post-item-calender-date">14.03.2018</p>
                                                    </div>
                                                </div>
                                            </div>

                                            <a href="{{ url('/news/1') }}">
                                                <h3> Подія дня, чи цієї години. Заголовок набраний висотою 20пт.</h3>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="wrapper-post-content">
                                                <p class="post-content">
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                                    veniam,
                                                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                                    consequat...
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="clearfix"></div>

                                    <div class="post-item-bottom">
                                        <div class="row">
                                            <div class="col-md-7">
                                                <div class="wrapper-post-item-category">
                                                    <i class="fas fa-folder-open"></i>
                                                    <p class="post-item-category">ОСТАННІ НОВИНИ</p>

                                                    <i class="fas fa-user"></i>
                                                    <p class="post-item-user">Админ.</p>
                                                </div>
                                            </div>
                                            <div class="col-md-5">
                                                <a class="post-item-more" href="#">
                                                    <span>Докладніше...</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="post-item">
                                    <div class="row">
                                        <div class="col-xl-6 news_item_img">
                                            <a href="{{ url('/news/1') }}">
                                                <img src="{{ asset('images/news/news_item_4.png') }}" alt="news_item_img">
                                            </a>
                                        </div>
                                        <div class="col-xl-6 post-item-description">
                                            <div class="row">
                                                <div class="col-md-12">

                                                    <div class="post-item-calender">
                                                        <i class="fas fa-calendar-alt"></i>
                                                        <p class="post-item-calender-date">14.03.2018</p>
                                                    </div>
                                                </div>
                                            </div>

                                            <a href="{{ url('/news/1') }}">
                                                <h3> Подія дня, чи цієї години. Заголовок набраний висотою 20пт.</h3>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="wrapper-post-content">
                                                <p class="post-content">
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                                    veniam,
                                                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                                    consequat...
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="clearfix"></div>

                                    <div class="post-item-bottom">
                                        <div class="row">
                                            <div class="col-md-7">
                                                <div class="wrapper-post-item-category">
                                                    <i class="fas fa-folder-open"></i>
                                                    <p class="post-item-category">ОСТАННІ НОВИНИ</p>

                                                    <i class="fas fa-user"></i>
                                                    <p class="post-item-user">Админ.</p>
                                                </div>
                                            </div>
                                            <div class="col-md-5">
                                                <a class="post-item-more" href="#">
                                                    <span>Докладніше...</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="container">
            <div class="row">
                <div class="col-xl-12 news_left_block">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="post-item">
                                <div class="row">
                                    <div class="col-xl-6 news_item_img">
                                        <a href="{{ url('/news/1') }}">
                                            <img src="{{ asset('images/news/news_item_5.png') }}" alt="news_item_img">
                                        </a>
                                    </div>
                                    <div class="col-xl-6 post-item-description">
                                        <div class="row">
                                            <div class="col-md-12">

                                                <div class="post-item-calender">
                                                    <i class="fas fa-calendar-alt"></i>
                                                    <p class="post-item-calender-date">14.03.2018</p>
                                                </div>
                                            </div>
                                        </div>

                                        <a href="{{ url('/news/1') }}">
                                            <h3> Подія дня, чи цієї години. Заголовок набраний висотою 20пт.</h3>
                                        </a>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="wrapper-post-content">
                                            <p class="post-content">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                                veniam,
                                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                                consequat...
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="clearfix"></div>

                                <div class="post-item-bottom">
                                    <div class="row">
                                        <div class="col-md-7">
                                            <div class="wrapper-post-item-category">
                                                <i class="fas fa-folder-open"></i>
                                                <p class="post-item-category">ОСТАННІ НОВИНИ</p>

                                                <i class="fas fa-user"></i>
                                                <p class="post-item-user">Админ.</p>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <a class="post-item-more" href="#">
                                                <span>Докладніше...</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="post-item">
                                <div class="row">
                                    <div class="col-xl-6 news_item_img">
                                        <a href="{{ url('/news/1') }}">
                                            <img src="{{ asset('images/news/news_item_6.png') }}" alt="news_item_img">
                                        </a>
                                    </div>
                                    <div class="col-xl-6 post-item-description">
                                        <div class="row">
                                            <div class="col-md-12">

                                                <div class="post-item-calender">
                                                    <i class="fas fa-calendar-alt"></i>
                                                    <p class="post-item-calender-date">14.03.2018</p>
                                                </div>
                                            </div>
                                        </div>

                                        <a href="{{ url('/news/1') }}">
                                            <h3> Подія дня, чи цієї години. Заголовок набраний висотою 20пт.</h3>
                                        </a>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="wrapper-post-content">
                                            <p class="post-content">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                                veniam,
                                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                                consequat...
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="clearfix"></div>

                                <div class="post-item-bottom">
                                    <div class="row">
                                        <div class="col-md-7">
                                            <div class="wrapper-post-item-category">
                                                <i class="fas fa-folder-open"></i>
                                                <p class="post-item-category">ОСТАННІ НОВИНИ</p>

                                                <i class="fas fa-user"></i>
                                                <p class="post-item-user">Админ.</p>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <a class="post-item-more" href="#">
                                                <span>Докладніше...</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="news_bg_fff">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12 news_left_block">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="post-item">
                                    <div class="row">
                                        <div class="col-xl-6 news_item_img">
                                            <a href="{{ url('/news/1') }}">
                                                <img src="{{ asset('images/news/news_item_7.png') }}" alt="news_item_img">
                                            </a>
                                        </div>
                                        <div class="col-xl-6 post-item-description">
                                            <div class="row">
                                                <div class="col-md-12">

                                                    <div class="post-item-calender">
                                                        <i class="fas fa-calendar-alt"></i>
                                                        <p class="post-item-calender-date">14.03.2018</p>
                                                    </div>
                                                </div>
                                            </div>

                                            <a href="{{ url('/news/1') }}">
                                                <h3> Подія дня, чи цієї години. Заголовок набраний висотою 20пт.</h3>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="wrapper-post-content">
                                                <p class="post-content">
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                                    veniam,
                                                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                                    consequat...
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="clearfix"></div>

                                    <div class="post-item-bottom">
                                        <div class="row">
                                            <div class="col-md-7">
                                                <div class="wrapper-post-item-category">
                                                    <i class="fas fa-folder-open"></i>
                                                    <p class="post-item-category">ОСТАННІ НОВИНИ</p>

                                                    <i class="fas fa-user"></i>
                                                    <p class="post-item-user">Админ.</p>
                                                </div>
                                            </div>
                                            <div class="col-md-5">
                                                <a class="post-item-more" href="#">
                                                    <span>Докладніше...</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="post-item">
                                    <div class="row">
                                        <div class="col-xl-6 news_item_img">
                                            <a href="{{ url('/news/1') }}">
                                                <img src="{{ asset('images/news/news_item_8.png') }}" alt="news_item_img">
                                            </a>
                                        </div>
                                        <div class="col-xl-6 post-item-description">
                                            <div class="row">
                                                <div class="col-md-12">

                                                    <div class="post-item-calender">
                                                        <i class="fas fa-calendar-alt"></i>
                                                        <p class="post-item-calender-date">14.03.2018</p>
                                                    </div>
                                                </div>
                                            </div>

                                            <a href="{{ url('/news/1') }}">
                                                <h3> Подія дня, чи цієї години. Заголовок набраний висотою 20пт.</h3>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="wrapper-post-content">
                                                <p class="post-content">
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                                    veniam,
                                                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                                    consequat...
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="clearfix"></div>

                                    <div class="post-item-bottom">
                                        <div class="row">
                                            <div class="col-md-7">
                                                <div class="wrapper-post-item-category">
                                                    <i class="fas fa-folder-open"></i>
                                                    <p class="post-item-category">ОСТАННІ НОВИНИ</p>

                                                    <i class="fas fa-user"></i>
                                                    <p class="post-item-user">Админ.</p>
                                                </div>
                                            </div>
                                            <div class="col-md-5">
                                                <a class="post-item-more" href="#">
                                                    <span>Докладніше...</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-xl-12 news_left_block">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="post-item">
                                <div class="row">
                                    <div class="col-xl-6 news_item_img">
                                        <a href="{{ url('/news/1') }}">
                                            <img src="{{ asset('images/news/news_item_9.png') }}" alt="news_item_img">
                                        </a>
                                    </div>
                                    <div class="col-xl-6 post-item-description">
                                        <div class="row">
                                            <div class="col-md-12">

                                                <div class="post-item-calender">
                                                    <i class="fas fa-calendar-alt"></i>
                                                    <p class="post-item-calender-date">14.03.2018</p>
                                                </div>
                                            </div>
                                        </div>

                                        <a href="{{ url('/news/1') }}">
                                            <h3> Подія дня, чи цієї години. Заголовок набраний висотою 20пт.</h3>
                                        </a>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="wrapper-post-content">
                                            <p class="post-content">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                                veniam,
                                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                                consequat...
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="clearfix"></div>

                                <div class="post-item-bottom">
                                    <div class="row">
                                        <div class="col-md-7">
                                            <div class="wrapper-post-item-category">
                                                <i class="fas fa-folder-open"></i>
                                                <p class="post-item-category">ОСТАННІ НОВИНИ</p>

                                                <i class="fas fa-user"></i>
                                                <p class="post-item-user">Админ.</p>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <a class="post-item-more" href="#">
                                                <span>Докладніше...</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="post-item">
                                <div class="row">
                                    <div class="col-xl-6 news_item_img">
                                        <a href="{{ url('/news/1') }}">
                                            <img src="{{ asset('images/news/news_item_10.png') }}" alt="news_item_img">
                                        </a>
                                    </div>
                                    <div class="col-xl-6 post-item-description">
                                        <div class="row">
                                            <div class="col-md-12">

                                                <div class="post-item-calender">
                                                    <i class="fas fa-calendar-alt"></i>
                                                    <p class="post-item-calender-date">14.03.2018</p>
                                                </div>
                                            </div>
                                        </div>

                                        <a href="{{ url('/news/1') }}">
                                            <h3> Подія дня, чи цієї години. Заголовок набраний висотою 20пт.</h3>
                                        </a>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="wrapper-post-content">
                                            <p class="post-content">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                                veniam,
                                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                                consequat...
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="clearfix"></div>

                                <div class="post-item-bottom">
                                    <div class="row">
                                        <div class="col-md-7">
                                            <div class="wrapper-post-item-category">
                                                <i class="fas fa-folder-open"></i>
                                                <p class="post-item-category">ОСТАННІ НОВИНИ</p>

                                                <i class="fas fa-user"></i>
                                                <p class="post-item-user">Админ.</p>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <a class="post-item-more" href="#">
                                                <span>Докладніше...</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="wrapper-pagination">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-center">
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link page-link-active" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#">4</a></li>
                                <li class="page-item"><a class="page-link" href="#">5</a></li>
                                <li class="page-item add_info"><a class="page-link" href="#">>></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-center">
                                <li class="page-item add_info add_info_news"><a class="page-link" href="#">Всі
                                        новини</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

    </section>


    <section class="links">
        <div class="container">

            <h2>ПОСИЛАННЯ</h2>

            <div class="wrapper-links-content">
                <div class="row">
                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_1.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_2.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_3.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_4.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_5.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_6.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_7.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_8.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_9.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_10.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_11.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_12.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_13.png') }}" alt="link">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('scripts')
    <script src="{{ asset('js/owl.carousel.min.js') }}"></script>
    <script>
        $('.big-slider-body').owlCarousel({
            loop: true,
            margin: 10,
            items: 1
        });
    </script>
@endsection