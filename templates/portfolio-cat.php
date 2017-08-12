<?php namespace ProcessWire; 
$items = page()->children('limit=22');?>

<div id="content-main" pw-append>
<div class="row">
    
<?php
    foreach ($items as $value) { 
    $bd = strip_tags($value->body);
    $body = substr($bd, 0, 180);
?>
   
    <div class="content-news col-12 col-lg-4">
        
        <div class='card card-block mt-2 mb-2'>
            
            <a href="<?=$value->url?>">
                <h2><?=$value->title?></h2>
            </a>
            
            <h3 class=''>  
                <?php          
                  if($value->ref_2) {
                  echo '| ' . $value->ref_2("<a href='{url}'><i class='fa fa-user-secret' aria-hidden='true'></i>{title}</a>");
                } ?>

            </h3>

                <p><a class="btn btn-outline-danger mt-2" href="<?=$value->url?>" role="button"><?= $lang_options->txt_3 ? $lang_options->txt_3 : __('Read More') ?> »</a></p>

        </div>

    </div><!-- /.content-news -->

<?php } ?>
          
</div>
 
<?php pagination($items); ?>

</div>
