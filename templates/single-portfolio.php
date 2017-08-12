<?php namespace ProcessWire;

$page_cat = $page->ref_4;
$cat_tit = '';

    foreach ($page_cat as $cat) {
       $cat_tit .= "<a href='$cat->url'><span class='badge badge-pill badge-info p-2'>" . $cat->title . '</span></a> ';
    } ?>


<div id="content-main" pw-prepend>
    
    <h1 class='display-4 text-uppercase text-center'><?=page()->name?></h1>

    <?php if($page->images->first()) : ?> 
        <a href='<?=$page->images->first()->url?>'>
            <img class='mx-auto d-block img-fluid p-2' src='<?=$page->images->first()->url?>' />       
        </a>
    <?php endif; ?>

    <div class='port-info mt-2'>
        <?php if($page->dat_1) : ?>
         -- <i class="fa fa-calendar" aria-hidden="true"></i> 
          <?=$page->dat_1?>
        <?php endif; ?>

         <?php if($cat_tit != '') : ?>
           | <i class="fa fa-th" aria-hidden="true"></i> <?=$cat_tit?>
         <?php endif; ?>

    </div>


 
       
</div>