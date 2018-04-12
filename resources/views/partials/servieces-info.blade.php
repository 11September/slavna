<section class="serviece-info">
    <div class="info-body">
        <div class="top-part">
            <div class="slider-part">
                <div class="video_slider">
                    <div>
                        <img src="{{ asset('images/photo_report_slider_example.png') }}">
                    </div>
                    <div>
                        <img src="{{ asset('images/photo_report_slider_example.png') }}">
                    </div>
                    <div>
                        <img src="{{ asset('images/photo_report_slider_example.png') }}">
                    </div>
                    <div>
                        <img src="{{ asset('images/photo_report_slider_example.png') }}">
                    </div>
                    <div>
                        <img src="{{ asset('images/photo_report_slider_example.png') }}">
                    </div>
                    <div>
                        <img src="{{ asset('images/photo_report_slider_example.png') }}">
                    </div>
                </div>

                <div class="video_menu_slider">
                    <div class="first">
                        <img src="{{ asset('images/photo_report_slider_example.png') }}">
                    </div>
                    <div class="video_menu_slider_2">
                        <img src="{{ asset('images/photo_report_slider_example.png') }}">
                    </div>
                    <div>
                        <img src="{{ asset('images/photo_report_slider_example.png') }}">
                    </div>
                    <div>
                        <img src="{{ asset('images/photo_report_slider_example.png') }}">
                    </div>
                    <div>
                        <img src="{{ asset('images/photo_report_slider_example.png') }}">
                    </div>
                    <div class="video_menu_slider_last">
                        <img src="{{ asset('images/photo_report_slider_example.png') }}">
                    </div>
                </div>
            </div>
            <div class="details-part">
                <h2 class="cottage-name">{{ $number->name }}</h2>
                <div class="three-part">
                    <div class="left">
                        <p>БУДНИЙ</p>
                        <p>{{ $number->price_weekday }}</p>
                        <p>грн</p>
                    </div>
                    <div class="middle">
                        <img src="{{ asset('images/slavna-logo.png') }}" alt="">
                    </div>
                    <div class="right">
                        <p>ВЫХОДНОЙ</p>
                        <p>{{ $number->price_holiday }}</p>
                        <p>грн</p>
                    </div>
                </div>

                <a href="{{ url('/reservation') }}" class="brony-btn">Забронировать</a>

                <p class="unique-header">ОСОБЕННОСТИ</p>
                <div class="unqiques">
                    <div class="left-uniques">
                        <ul>
                            <li>10 max</li>
                            <li>Free WiFi</li>
                            <li>Кухня</li>
                        </ul>
                    </div>

                    <div class="right-uniques">
                        <ul>
                            <li> Кондиционер</li>
                            <li>TV</li>
                            <li>5000 грн</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="bottom-part">
            <div class="text-part">
                <p>{!! $number->body !!}</p>
            </div>
        </div>
    </div>
</section>