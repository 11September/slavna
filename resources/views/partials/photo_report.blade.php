<section class="photo_report">
    <div class="container full_cr">
        <div class="photo_report_slider">

            @foreach($photos as $photo)
                <div class="photo_report_slider_item">
                    <div class="flexx">
                        <div class="block_text">
                            <div class="block_bg_img">
                                <h3>{{ $photo->name }}woergf newrkg newsl mewgmoe  jkeod.rkgj mwlrgj m eor,g.jmm gmbmoe lgoesl.  mgoe</h3>
                                <p>{{ $photo->description }}Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                                proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                                proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                <div class="row photo_report_panel">
                                    <div class="col-xl-4 col-md-5 photo_report_arrow">
                                        <span class="current_number_slide"></span> <span>/</span> <span
                                                class="all_number_slide"></span>
                                    </div>
                                    <div class="col-xl-8 col-md-7 photo_report_link">
                                        <a href="{{ url('/photos', $photo->id) }}">Подробней</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="block_img">
                            <img src="{{ asset('storage/' . $photo->image) }}">
                        </div>
                    </div>
                </div>
            @endforeach

            @foreach($photos as $photo)
                <div class="photo_report_slider_item">
                    <div class="flexx">
                        <div class="block_text">
                            <div class="block_bg_img">
                                <h3>{{ $photo->name }}</h3>
                                <p>{{ $photo->description }}</p>
                                <div class="row photo_report_panel">
                                    <div class="col-xl-4 col-md-5 photo_report_arrow">
                                        <span class="current_number_slide"></span> <span>/</span> <span
                                                class="all_number_slide"></span>
                                    </div>
                                    <div class="col-xl-8 col-md-7 photo_report_link">
                                        <a href="{{ url('/photos', $photo->id) }}">Подробней</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="block_img">
                            <img src="{{ asset('storage/' . $photo->image) }}">
                        </div>
                    </div>
                </div>
            @endforeach

            {{--<div class="photo_report_slider_item">--}}
                {{--<div class="flexx">--}}
                    {{--<div class="block_text">--}}
                        {{--<div class="block_bg_img">--}}
                            {{--<h3>Фотоотчет с нового года 2018</h3>--}}
                            {{--<p>--}}
                                {{--Пусть в этот славный новогодний вечер, Сказка к вам волшебная придет. А Дед Мороз в--}}
                                {{--своем мешке зветном Подарков в "Славну" непременно принесет <span>&#128516;</span>--}}
                                {{--Коттедж-парк "Славна" Ваш природных отдых в комфортных условиях.--}}
                            {{--</p>--}}
                            {{--<div class="row photo_report_panel">--}}
                                {{--<div class="col-xl-4 col-md-5 photo_report_arrow">--}}
                                    {{--<span class="current_number_slide"></span> <span>/</span> <span--}}
                                            {{--class="all_number_slide"></span>--}}
                                {{--</div>--}}
                                {{--<div class="col-xl-8 col-md-7 photo_report_link">--}}
                                    {{--<a href="#">Подробней</a>--}}
                                {{--</div>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                    {{--<div class="block_img">--}}
                        {{--<img src="{{ asset('images/photo_report_slider_example.png') }}">--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}

        </div>
    </div>
</section>