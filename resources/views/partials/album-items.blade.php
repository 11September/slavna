<section class="photo-items">
    <div class="container">

        <div class="row">

            @foreach($albums as $album)

                @if ($loop->iteration % 2)
                    <div class="photo-right col-lg-6">
                        <img class="twest-1" src="{{ asset('storage/' . $album->image) }}" alt="">
                        <p class="hover-item-text">
                            <a href="{{ action('PagesController@photosAlbum', $album->id) }}">
                                {{ $album->name }}
                            </a>
                        </p>
                    </div>
                @else
                    <div class="photo-left col-lg-6">
                        <img class="twest-1" src="{{ asset('storage/' . $album->image) }}" alt="">
                        <p class="hover-item-text">
                            <a href="{{ action('PagesController@photosAlbum', $album->id) }}">
                                {{ $album->name }}
                            </a>
                        </p>
                    </div>
                @endif

            @endforeach



            {{--<div class="photo-left col-lg-6">--}}
            {{--<img class="twest-1" src="images/3.png" alt="">--}}
            {{--<p class="hover-item-text">Украшение залов</p>--}}
            {{--</div>--}}

            {{--<div class="photo-right col-lg-6">--}}
            {{--<img class="twest-1" src="images/4.png" alt="">--}}
            {{--<p class="hover-item-text">Украшение залов</p>--}}
            {{--</div>--}}


            {{--<div class="photo-left col-lg-6">--}}
            {{--<img class="twest-1" src="images/5.png" alt="">--}}
            {{--<p class="hover-item-text">Украшение залов</p>--}}
            {{--</div>--}}

            {{--<div class="photo-right col-lg-6">--}}
            {{--<img class="twest-1" src="images/6.png" alt="">--}}
            {{--<p class="hover-item-text">Украшение залов</p>--}}
            {{--</div>--}}

            {{--<div class="photo-left col-lg-6">--}}
            {{--<img class="twest-1" src="images/7.png" alt="">--}}
            {{--<p class="hover-item-text">Украшение залов</p>--}}
            {{--</div>--}}

            {{--<div class="photo-right col-lg-6">--}}
            {{--<img class="twest-1" src="images/8.png" alt="">--}}
            {{--<p class="hover-item-text">Украшение залов</p>--}}
            {{--</div>--}}

            {{--<div class="photo-left col-lg-6">--}}
            {{--<img class="twest-1" src="images/9.png" alt="">--}}
            {{--<p class="hover-item-text">Украшение залов</p>--}}
            {{--</div>--}}

            {{--<div class="photo-right col-lg-6">--}}
            {{--<img class="twest-1" src="images/10.png" alt="">--}}
            {{--<p class="hover-item-text">Украшение залов</p>--}}
            {{--</div>--}}

        </div>

    </div>
</section>