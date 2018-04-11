<section class="photos-in-album">

    <p class="albom-header col-lg-12">Альбом "Достижения"</p>

    <div class="all-photos row">

        @foreach($photos as $photo)
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <a data-fancybox="photos" href="{{ asset('storage/' . $photo->image) }}">
                    <img src="{{ asset('storage/' . $photo->image) }}" alt="">
                </a>
            </div>
        @endforeach

        {{--<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">--}}
            {{--<a data-fancybox="photos" href="{{ asset('images/image-in-album.png') }}">--}}
                {{--<img src="{{ asset('images/image-in-album.png') }}" alt="">--}}
            {{--</a>--}}
        {{--</div>--}}
    </div>
</section>