<?php namespace ProcessWire;?>

<div id="content-main">

	<div id="header-text">

              <?php if(page()->headline) : ?>
                  <h3 class="display-4 text-center my-3">"<?=page()->headline?>"</h3>
              <?php endif;

                 if(page()->body) : 

                if(page()->check_3) { ?>

                    <blockquote class="blockquote mt-3">
                      
                          <?=page()->body?>

                    </blockquote>

                    <?php } else {

                        echo page()->body;
                        
                      } 

                    endif; ?>

	</div>
    
      <?php include 'inc/home-parts/first-slider.php'; ?>
   
      <?php include 'inc/home-parts/accordion-content.php'; ?>
    
      <?php include 'inc/home-parts/portfolio-slider.php'; ?>
    
</div><!--/#content-main-->
