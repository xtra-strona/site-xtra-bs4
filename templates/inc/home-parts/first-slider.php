<?php namespace ProcessWire;

if( !$page->check_4 ) {
    
    if( $page->txt_2 ) {
     echo "<h3 class='display-4 text-center'>$page->txt_2</h3>";
    } 
    
    if( $page->ref_3 ) { 
        $templ = $page->ref_3->name;
        $slider = $pages->get("/$templ/")->children("limit=22"); 
    ?>

    <div class="owl-home owl-carousel owl-theme p-3">

    <?php
       foreach ( $slider as $value) { 
    ?>
        <a href='<?=$value->url?>'>    

            <div class="item-front">

              <?php 
                if( isset($value->images) ) : 
               $first_img = $wpis->images->first()->size('320', 'auto', $opt_img_1);
               $w = $first_img->width;
               $h = $first_img->height;
                ?>

                <img class="img-fluid mx-auto d-block owl-lazy" data-src="<?=$first_img->url?>" alt="<?=$value->title?>" width='<?=$w?>' height='<?=$h?>'>
                <?php endif; ?>

                <div class="card">
                 <div class="card-block">
                   <h4 class="card-title"><?=$value->title?></h4>
                 </div>
               </div>


            </div>

        </a>

     <?php } ?>

    </div>

    <?php 
          } else { 

    $rep_2 = page()->rep_2;
    
    if( count($rep_2) ) {
        
    ?>

    <div class="owl-home owl-carousel owl-theme p-3">

    <?php foreach ($rep_2 as $key ):
          $p_ref = $key->ref_1;
          $target = $key->check_1 ? 'target="_new"' : '' ;
    ?>

        <?php
            if(count($p_ref)) :
              foreach ($p_ref as $pag) {
                echo "<a href='$pag->url' $target>";
             }
             elseif($key->url_1) :
               echo "<a href='$key->url_1' $target>";
             else :
                 echo "<a href='#'>";
             endif; 
        ?>
             
        <div class="item-front">
        
            <?php
              // IF IMAGE EXSIST
                 if($key->img_1) :

              $next_img = $key->img_1->size('320', 'auto', $opt_img_1);

               $w = $next_img->width;
               $h = $next_img->height;
             ?>

                <img class="img-fluid mx-auto d-block owl-lazy" data-src="<?=$next_img->url?>" alt="<?=$key->txt_1 ? $key->txt_1 : 'alt-img'?>" width='<?=$w?>' height='<?=$h?>'>
                    
              <?php else : ?>
                    
                   <h3 clas='mx-auto'> <?= __('Add image'); ?></h3>
                    
              <?php endif; ?>

              <?php if($key->txt_1) { ?>
                    
                    <div class="card">
                      <div class="card-block">
                        <h4 class="card-title"><?=$key->txt_1?></h4>
                      </div>
                    </div>
                    
            <?php } ?>
                          
        </div>   
        
             <?php echo "</a>";
             
                 endforeach;?> 
    </div>
<?php
        } 
    } 
} 
?>
