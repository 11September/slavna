<section class="reservaion-form">


    <div class="container">
        <h2 class="text-reserv">Бронирование</h2>

            <form>
            <div class="form-group">

                <input type="text" class="form-control" id="place-1" placeholder="ФИО">
            </div>
            <div class="form-group">

                <input type="text" class="form-control" id="place-2" placeholder="Номера/Котеджи">
            </div>
                <div class="form-group">

                    <input type="text" class="form-control" id="place-3" placeholder="Дата заезда">
                </div>
                <div class="form-group">

                    <input type="text" class="form-control" id="place-4" placeholder="Дата выезда">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="phone" name="phone" placeholder="Введите ваш телефон">
                </div>

                <textarea name="" id="reserve-area" cols="30" rows="10">

                </textarea>

                <button type="submit" class="reserv-span">
                    Забронировать
                </button>

            </form>


        </div>
    <script>
        jQuery(function($){
            $("#phone").mask(" +38(0) 999-9999");
        });
    </script>

</section>