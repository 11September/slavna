<section class="reservaion-form">
    <div class="container">
        <h2 class="text-reserv">Бронирование</h2>

        <form id="reservation" method="post" action="{{ action('PagesController@form_reservation') }}">
            {{ csrf_field() }}

            <div class="form-group">
                <input name="name" value="{{ old('name') }}" type="text" class="form-control"
                       placeholder="Фио">
            </div>

            <div class="form-group">
                <select name="cottage_id" class="form-control" id="cottage_id">

                    @foreach($numbers as $number)
                        <option value="{{ $number->id }}">{{ $number->name }}</option>
                    @endforeach

                </select>
            </div>

            <div class="form-group">
                <input name="date_start" id="date_start" value="{{ old('date_start') }}" type="text"
                       class="form-control" size="30"
                       placeholder="Дата заезда">
            </div>


            <div class="form-group">
                <input name="date_end" id="date_end" value="{{ old('date_end') }}" type="text"
                       class="form-control" size="30"
                       placeholder="Дата выезда">
            </div>
            <div class="form-group">
                <input name="phone" id="phone" value="{{ old('phone') }}" type="text" class="form-control"
                       placeholder="Телефон">
            </div>

            <div class="form-group">
                <textarea name="message" id="reserve-area" cols="30" rows="10" placeholder="Оставьте свое сообщение">{{ old('message') }}</textarea>
            </div>

            <div class="alert" style="display:none"></div>

            <button type="submit" class="reserv-span">
                Забронировать
            </button>

        </form>
    </div>
</section>