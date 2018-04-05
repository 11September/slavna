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
          centerMode: true,
          centerPadding: '0px',
          slidesToShow: 1
        }
      },
      {
        breakpoint: 480,
        settings: {
          arrows: true,
          dots: false
        }
      }
    ]
  });

  $('.photo_report_slider_item').last().addClass("photo_report_slider_item_last");


  var current_n = Number("0");
  var last_n = Number("0");

  $('.photo_report_slider_item').each(function(){

    current = $('.photo_report_slider_item').attr("data-slick-index");
    last_n = $('.photo_report_slider_item_last').attr("data-slick-index");

    current = Number(current) + Number("1");
    last_n = Number(last_n) + Number("1");


    $('.current_number_slide').text("0" + current);
    $('.all_number_slide').text("0" + last_n);

    // console.log( 0 + current );

  });


});