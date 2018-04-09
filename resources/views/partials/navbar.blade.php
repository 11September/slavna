<header class="header-wrapper">
    <div class="header-body">
        <div class="logo">
            <a href="{{ url('/') }}"><img src="{{ asset('images/slavna-logo.png') }}" alt=""></a>
        </div>

        <div class="information_part">
            <div class="header-part">
                <h1 class="main-header">Коттедж-парк Славна - отдых со вкусом…</h1>
            </div>

            <div class="links-part">
                <a href="">(095) 65-02-810</a>
                <a href="">(05446) 3-13-36</a>
                <a href="">pk_slаvnа@ukr.net</a>
            </div>
        </div>

        <div class="menu-part">
            <span class="menu-trigger"><i class="menu-ico fas fa-th"></i></span>
            <p class="menu-text menu-trigger">МЕНЮ</p>
        </div>
    </div>

    <div class="main-menu hider">
        <div class="close-btn">
            <img src="{{ asset('images/closer.png') }}" alt="">
        </div>
        <ul>
            <li><a href="{{ url('/') }}">ГЛАВНАЯ</a></li>
            <li><a href="{{ url('/list/cottages') }}">КОТТЕДЖИ</a></li>
            <li><a href="{{ url('/list/cottages') }}">НОМЕРА</a></li>
            <li><a href="{{ url('/list/cottages') }}">ДОМА С САУНОЙ</a></li>
            <li><a href="{{ url('/list/cottages') }}">БАНИ</a></li>
            <li><a href="{{ url('/news') }}">БЛОГ</a></li>
            <li><a href="{{ url('/arbours') }}">БЕСЕДКИ</a></li>
            <li><a href="{{ url('/about') }}">О НАС</a></li>
            <li><a href="{{ url('/services') }}">УСЛУГИ</a></li>
            <li><a href="{{ url('/contacts') }}">КОНТАКТЫ</a></li>
        </ul>
    </div>
</header>

<script>

</script>