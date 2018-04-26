<section class="serviece-info">
    <div class="info-body">
        <div class="top-part">
            <div class="slider-part">
                <div class="video_slider">
                    @foreach($number->photos as $photo)
                        <div>
                            <img src="{{ asset('storage/' . $photo->image) }}">
                        </div>
                    @endforeach

                </div>

                <div class="video_menu_slider">

                    @foreach($number->photos as $photo)
                        <div>
                            <img src="{{ asset('storage/' . $photo->image) }}">
                        </div>
                    @endforeach

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

                    @foreach($number->features as $feature)
                        <div class="features">
                            <ul>
                                <li>{{ $feature->name }}</li>
                            </ul>
                        </div>
                    @endforeach

                </div>
            </div>
        </div>

        <div class="bottom-part">
            <div class="text-part">
                <div class="wrapper-about-one-number">
                    {!! $number->body !!}
                </div>
            </div>
        </div>
    </div>
</section>