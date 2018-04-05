$(document).ready(function(){

  $('.photo_report_slider').slick({
      initialSlide: 0,
      slidesToShow: 1,
      rows: 1,
      arrows: false,
      dots: true,
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

});