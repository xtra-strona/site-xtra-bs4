<?php namespace ProcessWire; ?>

<script>
  // HEADROOM.JS
$(document).ready(function(){
var myElement = document.querySelector("header");
var headroom = new Headroom(myElement, {
  "offset": 205,
  "tolerance": 5,
  classes: {
    initial: "animated",
    pinned: "bounceInDown",
    unpinned: "bounceOutUp"
  }
});
headroom.init();
});

// OWL HOME SLIDER
$(document).ready(function(){
    
  $(".owl-home").owlCarousel({
    // https://owlcarousel2.github.io/OwlCarousel2/docs/api-options.html
    loop:true,
    autoplay: true,
    autoplayTimeout: 10000,
    autoplayHoverPause: true,
    autoHeight:true,
    margin:10,
    nav:false,
    // items: 1,
    lazyLoad:true,
    responsive:{
        0:{
            items:1
        },
 
        700:{
            items:2
        },
        1000:{
            <?=page()->check_2 ? 'items:4' : 'items:3' ?> 
        }
    }
  });

  // OWL PORTFOLIO SLIDER
    $('.owl-portfolio').owlCarousel({
    loop:true,
    lazyLoad:true,
    autoHeight:true,
    margin:10,
        responsive:{
        0:{
            items:1
        },
 
        700:{
            items:2
        },
        1000:{
            <?=page()->check_2 ? 'items:4' : 'items:3' ?> 
        }
    }
    });


// OWL INFO SLIDER
  $('.owl-info').owlCarousel({
      loop:true,
      autoplay: true,
      autoplayTimeout: 7000,
      autoHeight:true,
      // margin:10,
      nav: false,
      dots:false,
      items: 1
  });

  // OWL FOOTER SLIDER
    $('.owl-foot').owlCarousel({
        loop:true,
        autoplay: true,
        autoplayTimeout: 9000,
        // margin:10,
        nav: false,
        items: 1,
        dots:false
    });
    
});

// FOOTER BOOTTOM
$(document).ready(function(){

    function footerAlign() {
      $('footer').css('display', 'block');
      $('footer').css('height', 'auto');
      var footerHeight = $('footer').outerHeight();
      $('body').css('padding-bottom', footerHeight);
      $('footer').css('height', footerHeight);
    }

    $(document).ready(function(){
      footerAlign();
    });

    $( window ).resize(function() {
      footerAlign();
    });

});

<?php if (page()->template->name == 'portfolio'){ ?>
// MIXITUP
     var containerEl = document.querySelector('.mix-container');
     var mixer = mixitup(containerEl);
<?php } ?>       
</script>