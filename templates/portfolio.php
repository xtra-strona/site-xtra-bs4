<?php namespace ProcessWire; 
$items = page()->children('limit=48');
$cat_port = $pages->get('/categories-portfolio/')->children();
?>

<div id="content-main" pw-append>
    
    <div class='row'>
        
<div class='col-md-12 col-lg-4'>
    <div class='card card card-block mt-1'>
        
  <h3 class="display-4 text-uppercase text-center"><?=$page->txt_1 ? $page->txt_1 : __('Sorting');?></h3>
  
<p class='text-center'>     
    <button type="button" class='btn btn-outline-primary btn-lg mt-2' data-filter="all"><?=$page->txt_2 ? $page->txt_2 : __('All');?></button>         
    <!--<button type="button" class="control btn btn-outline-success btn-lg mt-2" data-sort="default:asc">Asc</button>
    <button type="button" class="control btn btn-outline-info btn-lg mt-2" data-sort="default:desc">Desc</button>-->
    <button type="button" class="control btn btn-outline-warning btn-lg mt-2" data-sort="random">
       <?=$page->txt_3 ? $page->txt_3 : __('Random');?>
    </button>
</p> 

</div>
</div>

    <div class='col-md-12 col-lg-8'>
        <div class='card card-block text-center mt-1'>
            <h3 class="display-4 text-uppercase"><?=$page->txt_4 ? $page->txt_4 : __('Select Category');?></h3>
<p>
 <?php 
 foreach ($cat_port as $cat) { ?>
 
     <button type="button" class='btn btn-outline-danger mt-2' data-filter=".cat-<?=$cat->name?>"><?=$cat->title?></button>
     
<?php } ?>
 </p> 
        </div>      
   
   </div>
        
    </div> 
    
<div class="row mix-container">
    
<?php
    foreach ($items as $value) { 
    $bd = strip_tags($value->body);
    $body = substr($bd, 0, 180);
    $page_cat = $value->ref_4;
    
    $cat_p = '';
    $cat_t = '';
    $cat_tit = '';
    foreach ($page_cat as $cat) {
       $cat_p .= 'cat-' . $cat->name . ' ';
       $cat_t .= $cat->title . ' | ';
       $cat_tit .= "<a href='$cat->url'><span class='badge badge-pill badge-info p-2'>" . $cat->title . '</span></a> ';
    }
    
?>
    
    <div class="mix <?=$cat_p?> content-news col-12 col-lg-6">
        
        <div class='card card-block mt-2 mb-2'>

            <h2><?=$value->title?></h2>

            <?php if($value->images->first()) {
               $first_img = $value->images->first()->size('320', 'auto', $opt_img_1);
               $w = $first_img->width;
               $h = $first_img->height;
            ?>
            
                <a href="<?=$value->url?>">
                  <img class="mx-auto d-block img-fluid p-2" data-src="<?=$first_img->url?>" alt="<?=$value->title?>" width='<?=$w?>' height='<?=$h?>'>
                </a>
            
            <?php } ?>
            
           <?php if($value->dat_1) : ?> 
            
                <span class='blockquote-footer mt-2'>
                     <i class="fa fa-calendar" aria-hidden="true"></i>
                     <?=$value->dat_1?> 
                 </span>
            
           <?php endif; ?>
            
              <?php if($value->$body) : ?>
            
                 <p><?=$body?> ...</p>
                 
              <?php endif; ?>

                <p class='mt-2'><?=$cat_tit?></p>

                <p><a class="btn btn-secondary" href="<?=$value->url?>" role="button"><?= $lang_options->txt_3 ? $lang_options->txt_3 : __('Read More') ?> »</a></p>
                
        </div>

    </div><!-- /.content-news -->

<?php } ?>
          
</div>
 
<?php pagination($items); ?>

</div>


