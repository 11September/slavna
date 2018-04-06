$(document).ready(function(){

  $('.photo_report_slider').slick({
      initialSlide: 0,
      slidesToShow: 1,
      rows: 1,
      arrows: true,
      appendArrows: $('.photo_report_arrow'),
      dots: true,
      appendDots: $('.photo_report_arrow'),
      infinite: false,
      centerMode: true,
      // vertical: true,
      focusOnSelect: true,
      responsive: [
      {
        breakpoint: 1200,
        settings: {
          arrows: true,
          dots: true,
          slidesToShow: 1
        }
      }
    ]
  });

  $('.photo_report_slider_item').last().addClass("photo_report_slider_item_last");
  var element = Number("1");

  $('.photo_report_slider_item').each(function(){

    current = $('.photo_report_slider_item').attr("data-slick-index");
    last_n = $('.photo_report_slider_item_last').attr("data-slick-index");

    current = Number(current) + Number(element);
    last_n = Number(last_n) + Number("1");
    element = Number(element) + Number("1");

    $(this).find('.current_number_slide').text("0" + current);
    $('.all_number_slide').text("0" + last_n);
  });

  $('.reviews_slider').slick({
      initialSlide: 0,
      slidesToShow: 1,
      rows: 1,
      arrows: true,
      appendArrows: $('.clider_info'),
      dots: true,
      appendDots: $('.clider_info'),
      infinite: false,
      centerMode: true,
      vertical: true,
      focusOnSelect: true,
      responsive: [
      {
        breakpoint: 1200,
        settings: {
          arrows: true,
          dots: true,
          slidesToShow: 1
        }
      }
    ]
  });

  $('.reviews_slider_item').last().addClass("reviews_slider_item_last");
  var element = Number("1");

  $('.reviews_slider_item').each(function(){

    current = $('.reviews_slider_item').attr("data-slick-index");
    last_n = $('.reviews_slider_item_last').attr("data-slick-index");

    current = Number(current) + Number(element);
    last_n = Number(last_n) + Number("1");
    element = Number(element) + Number("1");

    $(this).find('.reviews_current_number_slide').text("0" + current);
    $('.reviews_all_number_slide').text("0" + last_n);
  });


});