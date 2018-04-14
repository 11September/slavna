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

        </div>
    </div>
</section>