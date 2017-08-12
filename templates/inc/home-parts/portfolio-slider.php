<?php namespace ProcessWire;

if( !$page->check_6 ) {

    echo '<br>'; 

      if( page()->ref_5 ) { 
        $pg_ref = page()->ref_5->name;
        $pg_tit = page()->ref_5->title;
        $slider_n = $pages->get("/$pg_ref/")->children("limit=22"); 
        ?>

 <?php if(page()->txt_3) : ?>   
    
        <hr class="my-4">

            <h3 class="display-4 text-center">

                <i class="fa fa-ellipsis-v" aria-hidden="true"></i>

                  <?=page()->txt_3?>

                <i class="fa fa-eercast" aria-hidden="true"></i>
                <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
                <i class="fa fa-space-shuttle" aria-hidden="true"></i>

            </h3> 

        <hr class="my-4">
       
 <?php endif; ?>
  
    <div class='owl-carousel owl-theme owl-portfolio'>
<?php 
     foreach ( $slider_n as $item ) { ?>
        
        <div class='item card card-block'>
            
            <a href="<?=$item->url?>">
                
              <h3 class='text-center'><?=$item->title?></h3>
              
            </a> 
            
            <?php if($item->images) : 
                $port_img = $item->images->first()->size('320', 'auto', $opt_img_1);
               $w_p = $port_img->width;
               $h_p = $port_img->height;
            ?> 

                <a href="<?=$item->url?>">
                  <img class="img-fluid mx-auto d-block owl-lazy" data-src="<?=$port_img->url?>" alt="<?=$item->title?>" width='<?=$w_p?>' height='<?=$h_p?>'>
                </a>

            <?php endif; ?>
              
        </div>
        
<?php } ?>  

    </div>
    
    <div class='text-center'>
        
    <a href="<?=page()->ref_5->url?>" class="m-2 btn btn-outline-danger btn-lg" role="button" aria-pressed="true">
        
        <span class='display-4 text-uppercase'>
            <i class="fa fa-th" aria-hidden="true"></i> 
               <?= $page->txt_4 ? $page->txt_4 : __('All');?>
            <i class="fa fa-th" aria-hidden="true"></i> 
            
        </span>
        
    </a>
        
    </div>

  <?php
     } 
  }
  ?>  