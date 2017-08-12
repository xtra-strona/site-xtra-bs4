<?php namespace ProcessWire;?>
<!DOCTYPE html>
<html lang="<?= $lang_options->txt_1 ? $lang_options->txt_1 : _x('en', 'HTML language code'); ?>">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title><?=page()->get('headline|title')?></title>
    <meta name="Description" content="<?=page()->summary?>">
    <link rel="icon" href="<?=$options->img_2->url?>"/>

	<style media="screen">
  #preloader {
  position: fixed;
  top:0;
  left:0;
  right:0;
  bottom:0;
  background-color: aliceblue; /* change if the mask should have another color then white */
  z-index:1999; /* makes sure it stays on top */
  }
    #status {
  width:200px;
  height:200px;
  position:absolute;
  background-repeat:no-repeat;
  background-position:center;
  margin:-100px 0 0 -100px; /* is width and height divided by two */
}
	</style>
<?php        
// Multilingual Menu
   if($lang_options->check_1) {
	// handle output of 'hreflang' link tags for multi-language
	// this is good to do for SEO in helping search engines understand
	// what languages your site is presented in	
	foreach($languages as $language) {
		// if this page is not viewable in the language, skip it
		if(!$page->viewable($language)) continue;
		// get the http URL for this page in the given language
		$lang_url = $page->localHttpUrl($language); 
		// hreflang code for language uses language name from homepage
		$hreflang = $homepage->getLanguageValue($language, 'name');
		// output the <link> tag: note that this assumes your language names are the same as required by hreflang. 
		echo "\n\t<link rel='alternate' hreflang='$hreflang' href='$lang_url' />\n";
	}
   }
 ?>       
</head>

<body id='html-body'>
    
    <!-- Preloader -->
    <div id="preloader">
        
         <div id="status">&nbsp;</div>
            
    </div>
        
<?php include('inc/header.php'); ?>

   <!-- Main Content -->
      <div id="main" class="<?=page()->check_2 ? 'container-fluid' : 'container'?>">
          <div id='container-main' class="row">
<?php 
// IF DISABLE SIDEBAR
if($page->check_1) : ?>
   <div id="content-main" class="col-lg-12">
<?php 
// IF SIDEBAR EXSISTS
else : ?>
       
   <div id="content-main" class="<?php echo ( count(page()->rep_4) || count($global_sid) ) ? 'col-lg-9' : 'col-lg-12' ?>">
       
<?php endif; ?>
              
	<div id="header-text">

              <?php if(page()->headline) : ?>
                  <h3 class="display-4 text-center my-3">"<?=page()->headline?>"</h3>
              <?php endif; 

                    if(page()->body) {

                if(page()->check_3) { ?>

                    <blockquote class="blockquote mt-3">
                      
                          <?=page()->body?>

                    </blockquote>

                    <?php } else {

                        echo page()->body;
                        
                      } 

                } ?>

	</div>

              </div>
              <!-- /#content-main .col-lg-9 or .col-lg-12 -->

              <?php include 'inc/sidebar.php'; ?>

          </div>
		  <!-- /.row -->

      </div>
      <!-- /#main -->

	<?php if(page()->editable): ?>

		<section class="container pw-edit mt-2 mb-2" id="edit-page">
					<!-- PAGE EDIT LINK -->
			<a id="edit-page" class="edit-p btn btn-primary" href="<?=page()->editUrl?>">
				<?= __('Edit Page'); ?>
			</a>
		</section>

	<?php endif; 

	    if(config()->debug && user()->isSuperuser()): // display region debugging info ?>
		<section class="container pw-deb" id="debug">
				<!--PW-REGION-DEBUG-->
		</section>
      <?php endif;

            include('inc/footer.php'); ?>
      
<!-- Maaster CSS -->
	  <link rel="stylesheet" href="<?=urls()->templates?>assets/css/master.css">
          
       <?php if(!$options->check_1) { ?>
<!-- COOKIE COOONSENT -->
	  <link rel="stylesheet" href="<?=urls()->templates?>assets/css/cookieconsent.min.css">
       <?php } ?>
          
<!-- IF USING COMMENTS -->
	<?php if(page()->comments): ?>
		<script src="<?=urls()->FieldtypeComments?>comments.min.js"></script>
		<link rel="stylesheet" href="<?=urls()->FieldtypeComments?>comments.css">
	<?php endif; ?>
                
<!--ALL MIN.JS-->
    <script src="<?php echo urls()->templates?>assets/js/scripts.min.js"></script>

<!--HEADROOM.JS-->
    <script src="<?php echo urls()->templates?>assets/js/index.js"></script>
    
<?php if (page()->template->name == 'portfolio'){ ?>
    <!--MIXITUP.JS-->
    <script src="<?php echo urls()->templates?>assets/js/mixitup.min.js"></script>
<?php } ?>
    
<!-- CUSTOM SCRIPT -->
<!--<script src="<?php // echo urls()->templates?>assets/js/custom.js"></script>-->

    <?php include('inc/script.php'); ?>

<?php if(!$options->check_1) {
    echo cookiesConsent($tx_1,$tx_2,$tx_3,$tx_4); 
} ?>

<!-- Preloader -->
  <script type='text/javascript'>
  	//<![CDATA[
            $(window).on('load', function() { // makes sure the whole site is loaded
                            $('#status').fadeOut(); // will first fade out the loading animation
                            $('#preloader').delay(50).fadeOut('slow'); // will fade out the white DIV that covers the website.
                            $('body').delay(50).css({'overflow':'visible'});
                    })
  	//]]>

// BOOTSTRAP TOOLTIP
$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})
  </script>
</body>
</html>
