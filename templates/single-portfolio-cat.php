<?php namespace ProcessWire;
$a_name = page()->name;
$items = pages()->find("template='single-portfolio', ref_4.name=$a_name, limit=12");?>

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

            <?php if($value->images->first()) { ?>
            
                <a href="<?=$value->url?>">
                   <img class='mx-auto d-block img-fluid p-2' data-src='<?=$value->images->first()->url?>' width='350' height='350' />            
                </a>
            
            <?php } ?>
            
           <?php if($value->dat_1) : ?>  
                <h3 class='blockquote-footer mt-2'>

                    <i class="fa fa-calendar" aria-hidden="true"></i>
                    <?=$value->dat_1?> 

                    <?php          
                      if($value->ref_2) {
                      echo '| ' . $value->ref_2("<a href='{url}'><i class='fa fa-user-secret' aria-hidden='true'></i>{title}</a>");
                    } ?>

                </h3>
           <?php endif; ?>
            
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
