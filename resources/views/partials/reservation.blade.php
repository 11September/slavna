<section class="reservaion-form">


    <div class="container">
        <h2 class="text-reserv">Бронирование</h2>

        <form action="{{ action('PagesController@form') }}">
            {{ csrf_field() }}

            <div class="form-group">
                <input name="name" value="{{ old('name') }}" type="text" class="form-control" id="place-1" placeholder="ФИО">
            </div>

            <div class="form-group">
                <select name="cottage_id" class="form-control" id="exampleFormControlSelect1">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
            </div>

            <div class="form-group">
                <input name="date_start" value="{{ old('date_start') }}" type="date" class="form-control" id="place-3" placeholder="Дата заезда">
            </div>

            <div class="form-group">
                <input name="date_end" value="{{ old('date_end') }}" type="date" class="form-control" id="place-4" placeholder="Дата выезда">
            </div>
            <div class="form-group">
                <input name="phone" value="{{ old('phone') }}" type="text" class="form-control" id="place-5" placeholder="Телефон">
            </div>

            <textarea name="message" id="reserve-area" cols="30" rows="10">
                {{ old('message') }}
            </textarea>

            <button type="submit" class="reserv-span">
                Забронировать
            </button>

        </form>


    </div>

</section>