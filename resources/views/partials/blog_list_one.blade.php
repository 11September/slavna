<section class="Blog-list">
    <div class="container-fluid">

        @foreach($posts as $post)
            <div class="row wrapper-all-item-blog padding-assist">
                <div class="wrapper-blog-list-left col-lg-4">
                    <img class="dance-blog-one-list" src="{{ asset('storage/' . $post->image) }}" alt="">
                </div>
                <div class="wrapper-blog-list-right col-lg-8">
                    <a href="{{ url('news', $post->id ) }}"><h2 class="dance-blog-h2">{{ $post->title }}</h2></a>
                    <hr class="hr-blog" style="width:100%; background:white;">
                    <p class="description-blog-p">
                        {!! $post->body !!}
                    </p>
                    <div class="all-icons-wrapper">
                        <div class="row">
                            <div class="icons-blog-one col-lg-6">
                                <p><i class="far fa-clock"> </i> <span class="color-date">{{ $post->created_at->format('d.m.Y') }}</span></p>

                            </div>
                            <div class="icons-blog-two col-lg-6">
                                <p><i class="fas fa-eye"> </i> <span class="color-date"> {{ $post->total_views }} </span></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach

    </div>
</section>