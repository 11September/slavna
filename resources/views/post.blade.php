@extends('layouts.master')

@section('css')
    <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.theme.default.min.css') }}">
@endsection

@section('content')
    <section class="big-slider">
        <div class="big-slider-body owl-carousel  owl-theme">
            <div><img src="{{ asset('images/slide.png') }}"></div>
            <div><img src="{{ asset('images/slide.png') }}"></div>
            <div><img src="{{ asset('images/slide.png') }}"></div>
            <div><img src="{{ asset('images/slide.png') }}"></div>
            <div><img src="{{ asset('images/slide.png') }}"></div>
            <div><img src="{{ asset('images/slide.png') }}"></div>
        </div>
    </section>

    <section class="post-page" id="basic-waypoint">

        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="wrapper-breadcrumbs">
                        <nav class="breadcrumb">
                            <a class="breadcrumb-item" href="#">Головна</a>
                            <a class="breadcrumb-item" href="#">Новини</a>
                            <span class="breadcrumb-item active">Головна подія</span>
                        </nav>
                    </div>

                    <div class="wrapper-single-post-content">
                        <h2>ПОДІЇ</h2>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="wrapper-single-post-image">
                                    <img src="{{ asset('images/events_head.png') }}" alt="">
                                </div>
                            </div>


                            <div class="col-md-3">
                                <ul class="single-post-menu">
                                    <li><a class="date" href="#"><i class="far fa-calendar-alt"></i>14.03.2018</a></li>
                                    <li><a class="category" href="#"><i class="fas fa-folder-open"></i>ГОЛОВНА ПОДІЯ</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-9">
                                <div class="wrapper-single-post-heading">
                                    <h5>
                                        Головна подія дня, чи тижня. Заголовок набраний висотою 30пт.
                                        Шрифт без засічок у начертанні BOLD
                                    </h5>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="single-post-content">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A accusantium beatae
                                        distinctio ea earum facere impedit incidunt ipsum iusto laboriosam modi, nulla
                                        officia quaerat quisquam reiciendis ullam vel, voluptate voluptatem!</p>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <div class="wrapper-single-post-additional">
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center blue18" target="_blank" href="#">
                                                <i class="far fa-calendar-alt"></i>14.03.2018
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center blue18" target="_blank" href="#">
                                                <i class="far fa-clock"></i>9.30
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="#">
                                                <i class="fas fa-folder-open"></i>ГОЛОВНА ПОДІЯ
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="wrapper-single-post-additional">
                                    <ul class="list-inline float-right">
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="#">
                                                <i class="fas fa-user"></i>Админ.
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-4">

                    <h2 class="service-header">ПОСЛУГИ</h2>

                    <div class="wrapper-services">
                        <div class="wrapper-services-list">

                            <div class="wrapper-services-list-item">
                                <div class="services-list-item">

                                    <div class="services-list-item-picture">
                                        <img src="{{ asset('images/services_item_1.png') }}" alt="services">
                                    </div>
                                    <div class="services-list-item-content">
                                        <a href="#">
                                            <p class="services-list-item-text">Адміністративні послуги</p>
                                        </a>
                                    </div>

                                </div>
                            </div>

                            <div class="wrapper-services-list-item">
                                <div class="services-list-item">
                                    <div class="services-list-item-picture">
                                        <img src="{{ asset('images/services_item_2.png') }}" alt="services">
                                    </div>
                                    <div class="services-list-item-content">
                                        <a href="#">
                                            <p class="services-list-item-text">Портал Державних послуг</p>
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <div class="wrapper-services-list-item">
                                <div class="services-list-item">
                                    <div class="services-list-item-picture">
                                        <img src="{{ asset('images/services_item_3.png') }}" alt="services">
                                    </div>
                                    <div class="services-list-item-content">
                                        <a href="#">
                                            <p class="services-list-item-text">Система електронних зверненнь</p>
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <div class="wrapper-services-list-item">
                                <div class="services-list-item">
                                    <div class="services-list-item-picture">
                                        <img src="{{ asset('images/services_item_4.png') }}" alt="services">
                                    </div>
                                    <div class="services-list-item-content">
                                        <a href="#">
                                            <p class="services-list-item-text">Підписатись на новини</p>
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <div class="wrapper-services-list-item">
                                <div class="services-list-item services-last-item">
                                    <div class="services-list-item-picture">
                                        <img src="{{ asset('images/services_item_5.png') }}" alt="services">
                                    </div>
                                    <div class="services-list-item-content">
                                        <a href="#">
                                            <p class="services-list-item-text">План-календар заходів</p>
                                        </a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="wrapper-sigle-post-anonses">
                        @include('partials.anonses')
                    </div>

                    <h2 class="sigle-post-video-header">BІДЕО</h2>

                    <div class="video-item">
                        <a href="#">
                            <img src="{{ asset('images/video_poster.png') }}" alt="gallery">
                        </a>
                    </div>

                </div>
            </div>
        </div>

        <div class="wrapper-post-controls">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="post-controls">
                            <p>
                                <a href=""><i class="fas fa-angle-left control-arrow-left"></i> Попередня стаття</a>
                                <span>|</span>
                                <a href="">Наступна стаття <i class="fas fa-angle-right control-arrow-right"></i></a>
                            </p>

                            <p><a href="">Всі новини <i class="fas fa-angle-double-right control-arrow-right"></i></a></p>
                        </div>
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
                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_1.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_2.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_3.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_4.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_5.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_6.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_7.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_8.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_9.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_10.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_11.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_12.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
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