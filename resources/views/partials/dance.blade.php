<section class="dance-for-clear">
    <div class="container-fluid">
        <div class="row">
            <h2 class="text-daneclear">{{ $post->title }}</h2>
            <img class="img-dance" src="{{ asset('storage/' . $post->image) }}" alt="">
            <p class=" description-dance">
                {!! $post->body !!}
            </p>
        </div>

        <div class="block-i">
            <p class="class-1"><i class="far fa-clock dance-clock"></i>
                <span class="date-padidjg">
                    {{ Carbon\Carbon::parse($post->created_at)->format('m.d.Y') }}
                </span>
            </p>

            <p class="class-2"><i class="fas fa-eye dance-eyes "></i>
                <span class="view-padidjg">{{ $post->total_views }}</span>
            </p>
        </div>

        <div class="row">
            <div class="arrow-right-type col-lg-6">
                <a href="{{ url('news') }}">
                    <p class="arrow-text-right"><i class="fas fa-angle-left"></i>На страницу блогов</p>
                </a>
            </div>

            @if (isset($next))
                <div class="arrow-left-type col-lg-6">
                    <a href="{{ url('news', $next->id ) }}">
                        <div class="btn-content">
                            <p class="arrow-text-left"> Следующий пост <i class="fas fa-angle-right"></i></p>
                        </div>
                    </a>
                </div>
            @endif

            <div class="line-hr">
                <hr id="#circle" class="line-hr-hr">
            </div>
        </div>
    </div>
</section>