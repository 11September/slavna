<section class="contactForm">

    <div class="container-fluid">
        <div class="row flex-repair">

            <div class="wrapper-text-left col-lg-6 col-md-12 col-sm-12 col-xs-12">
                <h2 class="text-ua">Украина<br>
                    Сумская область<br>
                    Ахтырский район<br>
                    с. Чернетчина<br>
                    ул. Монастырська
                </h2>


                <P class="text-p-ua padding-phone-p"> (095) 65-02-810</P>
                <P class="text-p-ua padding-phone-p">(05446) 3-13-36</P>
                <P class="text-p-ua padding-phone-p"> (098) 179-24-55</P>
                <p class="text-p-ua  padding-phone-p"> (прием банкетов - ресторан) </p>

                <p class="text-p-ua  special-padding-top">WWW.PARK-SLAVNA.COM.UA</p>
                <p class="text-p-ua  padding-phone-p"> PK_SLАVNА@UKR.NET</p>

                <div class="my-fafa">

                    <a href="#"> <i class="fab fa-facebook-square"></i> </a>
                    <a href="#"> <i class="fab fa-instagram"> </i> </a>
                    <a href="#"><i class="fab fa-google"> </i> </a>

                </div>

            </div>
            <div class="wrapper-answer-form  col-lg-6 col-md-12 col-sm-12 col-xs-12">


                <form style="background: whitesmoke" action="{{ action('PagesController@form_question') }}">
                    {{ csrf_field() }}

                    <h2 class="h2-text-quest">ЗАДАТЬ ВОПРОС </h2>
                    <HR>

                    <div class="input-special">
                        <input name="name" value="{{ old('name') }}" class="checkout-input" type="text" placeholder="И м я*">
                    </div>

                    <div class="input-special">
                        <input name="email" value="{{ old('email') }}" class="checkout-input" type="email" placeholder="E-mail*">
                    </div>
                    <div class="input-special">
                        <input name="phone" value="{{ old('phone') }}" class="checkout-input input-bot" type="text" placeholder="Т е л е ф о н*">
                    </div>
                    <textarea name="message" id="">
                         {{ old('message') }}
                    </textarea>

                    <p class="under-form-text">
                        Пожалуйста заполните все поля формы, и в скором времени наш<br>
                        администратор ответит на ваши вопросы.
                    </p>

                    <a href="#">
                        <span class="question-span">
                        Задать вопрос
                        </span>
                    </a>

                </form>


            </div>
        </div>
    </div>
    </div>


</section>