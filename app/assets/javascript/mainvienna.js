/**
* Template Name: MyPortfolio - v2.1.0
* Template URL: https://bootstrapmade.com/myportfolio-bootstrap-portfolio-website-template/
* Author: BootstrapMade.com
* License: https://bootstrapmade.com/license/
*/
(function($) {
  "use strict";

  var burgerMenu = function() {
    $('.burger').click(function(e) {
      $(window).scrollTop(0);
      if (!$('.burger').hasClass('active'))
        $('.burger').addClass('active');
      else
        $('.burger').removeClass('active');
    });
  }
  burgerMenu();

  var siteIstotope = function() {
    var $container = $('#portfolio-grid').isotope({
      itemSelector: '.item',
      isFitWidth: true
    });

    $(window).resize(function() {
      $container.isotope({
        columnWidth: '.col-sm-3'
      });
    });

    $container.isotope({
      filter: '*'
    });

    $('#filters').on('click', 'a', function(e) {
      e.preventDefault();
      var filterValue = $(this).attr('data-filter');
      $container.isotope({
        filter: filterValue
      });
      $('#filters a').removeClass('active');
      $(this).addClass('active');
    });
  }
  $(window).on('load', function() {
    siteIstotope();
  });

  var siteOwlCarousel = function() {
    $('.testimonial-carousel').owlCarousel({
      center: true,
      items: 1,
      loop: true,
      margin: 0,
      autoplay: true,
      smartSpeed: 1000,
    });
  };
  siteOwlCarousel();

  $(window).on('load', function() {
    AOS.init({
      easing: 'ease',
      duration: 1000,
      once: true
    });
  });

 // Porfolio isotope and filter
  $(window).on('load', function() {
    var portfolioIsotope = $('.portfolio-container').isotope({
      itemSelector: '.portfolio-item',
      layoutMode: 'fitRows'
    });

    $('#portfolio-flters li').on('click', function() {
      $("#portfolio-flters li").removeClass('filter-active');
      $(this).addClass('filter-active');

      portfolioIsotope.isotope({
        filter: $(this).data('filter')
      });
      aos_init();
    });

    // Initiate venobox (lightbox feature used in portofilo)
    $(document).ready(function() {
      $('.venobox').venobox();
    });
  });
  

})(jQuery);