<?php namespace ProcessWire; 
$items = page()->children('limit=12');?>

<div id="content-main" pw-append>
<div class="row">
    
<?php
    foreach ($items as $value) { 
    $bd = strip_tags($value->body);
    $body = substr($bd, 0, 180);
?>
   
    <div class="content-news col-12 col-lg-6">
        
        <div class='card card-block mt-2 mb-2'>
            
            <a href="<?=$value->url?>">
                <h2><?=$value->title?></h2>
            </a>
            
            <h3 class='blockquote-footer'>
                <i class="fa fa-calendar" aria-hidden="true"></i>
                <?=$value->dat_1?> 
                
                <?php          
                  if($value->ref_2) {
                  echo '| ' . $value->ref_2("<a href='{url}'><i class='fa fa-user-secret' aria-hidden='true'></i>{title}</a>");
                } ?>

            </h3>
            
            <?php if($value->images->first()) {     
               $first_img = $value->images->first()->size('320', 'auto', $opt_img_1);
               $w = $first_img->width;
               $h = $first_img->height;
            ?>
            
                <a href="<?=$value->url?>">
                  <img class="mx-auto d-block img-fluid p-2" data-src="<?=$first_img->url?>" alt="<?=$value->title?>" width='<?=$w?>' height='<?=$h?>'>
                </a>
            
            <?php } ?>

            <?php if($body) : ?>
                   <p><?=$body?> ...</p>
            <?php endif; ?>

                <p><a class="btn btn-secondary mt-2" href="<?=$value->url?>" role="button"><?= $lang_options->txt_3 ? $lang_options->txt_3 : __('Read More') ?> »</a></p>

        </div>

    </div><!-- /.content-news -->

<?php } ?>
          
</div>
 
<?php pagination($items); ?>

</div>


