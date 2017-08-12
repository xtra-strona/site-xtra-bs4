<?php namespace ProcessWire; 
$items = page()->children('limit=22');
?>

<div id="content-main" pw-append>

    <section class="row text-center placeholders">
        
        <?php foreach ($items as $value) { ?>

            <div class="auth-cont col-12 col-sm-6 col-md-4 placeholder mt-2">

                <?php if($value->img_1) : ?>   
                    <a href="<?=$value->url?>">
                        <img src="<?=$value->img_1->url?>" class="img-fluid rounded-circle" alt="Generic placeholder thumbnail" width="200" height="200">
                    </a>
                <?php endif; ?> 

                <a href="<?=$value->url?>">
                    
                  <h4><?=$value->title?></h4>
                  
                </a>

                 <?php if($value->headline) : ?>
                  <div class="text-muted"><?=$value->headline?></div>
                <?php endif; ?> 

            </div>

        <?php  } ?>    
    
    </section>
    
    <?php pagination($items); ?>
    
</div>