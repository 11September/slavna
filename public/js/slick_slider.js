$(document).ready(function(){

  $('.photo_report_slider').slick({
      initialSlide: 0,
      slidesToShow: 1,
      rows: 1,
      arrows: true,
      // appendArrows: $('.photo_report_arrow'),
      dots: true,
      // appendDots: $('.photo_report_arrow'),
      infinite: false,
      centerMode: true,
      // vertical: true,
      focusOnSelect: false,
      responsive: [
      {
        breakpoint: 768,
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
    $(this).find('.all_number_slide').text("0" + last_n);
  });

  photo_report_slider_width = 100 / last_n;
  $('.photo_report_slider').find('.slick-dots li').css("width", photo_report_slider_width  + "%");

  $('.reviews_slider').slick({
      initialSlide: 0,
      slidesToShow: 1,
      verticalSwiping: true,
      rows: 1,
      arrows: true,
      appendArrows: $('.clider_info'),
      dots: false,
      appendDots: $('.clider_info'),
      infinite: false,
      centerMode: true,
      vertical: true,
      focusOnSelect: false,
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

  element = Number("1");

  $('.reviews_slider_item').last().addClass("reviews_slider_item_last");

  $('.reviews_slider_item').each(function(){

    current = $('.reviews_slider_item').attr("data-slick-index");
    last_n = $('.reviews_slider_item_last').attr("data-slick-index");

    current = Number(current) + Number(element);
    last_n = Number(last_n) + Number("1");
    element = Number(element) + Number("1");

    $(this).find('.reviews_current_number_slide').text("0" + current);
    $(this).find('.reviews_all_number_slide').text("0" + last_n);
  });

  $('.latest_publication_slider').slick({
      initialSlide: 0,
      slidesToShow: 1,
      rows: 1,
      arrows: true,
      appendArrows: $('.latest_publication_arrow'),
      dots: false,
      appendDots: $('.latest_publication_arrow'),
      infinite: false,
      centerMode: true,
      // vertical: true,
      focusOnSelect: false,
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

    $('.intro_slider').slick({
        initialSlide: 0,
        slidesToShow: 1,
        rows: 1,
        arrows: true,
        prevArrow:"<img class='slick-prev' src='../images/left-arrow.png'>",
        nextArrow:"<img class='slick-next' src='../images/right-arrow.png'>",
        centerPadding: '0px',
        infinite: false,
        centerMode: true,
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

    $('.video_slider').slick({
        centerMode: true,
        centerPadding: '0px',
        initialSlide: 0,
        infinite: true,
        slidesToShow: 1,
        arrows: false,
        vertical: false,
        focusOnSelect: true,
        asNavFor: '.video_menu_slider',
        responsive: [
            {
                breakpoint: 1200,
                settings: {
                    arrows: false,
                    dots: false,
                    centerMode: true,
                    centerPadding: '0px',
                    slidesToShow: 1
                }
            },
            {
                breakpoint: 480,
                settings: {
                    arrows: false,
                    dots: false
                }
            }
        ]
    });

    $('.video_menu_slider').slick({
        centerMode: false,
        centerPadding: '0',
        initialSlide: 0,
        infinite: true,
        slidesToShow: 5,
        arrows: false,
        focusOnSelect: true,
        asNavFor: '.video_slider',
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 3
                }
            }
        ]
    });

  element = Number("1");

$('.latest_publication_slider_item').last().addClass("latest_publication_slider_item_last");

  $('.latest_publication_slider_item').each(function(){

    current = $('.latest_publication_slider_item').attr("data-slick-index");
    last_n = $('.latest_publication_slider_item_last').attr("data-slick-index");

    current = Number(current) + Number(element);
    last_n = Number(last_n) + Number("1");
    element = Number(element) + Number("1");

    $(this).find('.current_number_slide').text("0" + current);
    $(this).find('.all_number_slide').text("0" + last_n);
  });

});