<?php namespace ProcessWire;

if( !$page->check_5 ) {
    
if(page()->rep_1 != '') : ?>

    <div id="accordion" class='container-fluid'>
        
      <?php if(page()->txt_1) : ?>  
        
        <h3 class='display-4 text-center my-2'> -- <?=page()->txt_1?> -- </h3>
        
      <?php endif; ?>
        
        <div class="row" role="tablist" aria-multiselectable="true">

    <?php
    $i = 0;
    foreach (page()->rep_1 as $key) {
    $i++;
    $page_ref = $key->ref_1;
    ?>

            <div class="card col-12 <?=page()->check_2 ? 'col-md-4' : ''?> p-0 mb-1 mx-auto centered">

                <div class="card-header" role="tab" id="heading<?=$i?>">
                    <h5 class="mb-0">
                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse<?=$i?>" aria-expanded="false" aria-controls="collapse<?=$i?>">
                            <?=$key->txt_1?>   
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-<?=$key->font_1 ? $key->font_1 : 'chevron-down'?> fa-stack-1x fa-inverse"></i>
                                </span>
                        </a>
                    </h5>
                </div>

                <div id="collapse<?=$i?>" class="collapse <?php echo $key->check_1 ? "show" : " " ?>" role="tabpanel" aria-labelledby="heading<?=$i?>">
                    <div class="card-block">
                        <?=$key->txtarea_1?>
                    </div>

                    <?php if (count($page_ref)) { 

                    foreach ($page_ref as $p_r) { ?>

                            <a href="<?=$p_r->url?>" target='<?=$key->check_2 ? "_new" : '' ?>'>
                                <button  type="button" class="btn btn-primary btn-lg  mx-auto d-block my-3 p-3">
                                        <?=$key->txt_3?>
                                </button>
                            </a>

                   <?php } ?>

                   <?php } elseif($key->url_1) { ?>
                            <a href="<?=$key->url_1?>" target='<?=$key->check_2 ? "_new" : '' ?>'>
                                <button  type="button" class="btn btn-primary btn-lg  mx-auto d-block my-3 p-3">
                                        <?=$key->txt_3?>
                                </button>
                            </a>
                   <?php } ?>

                </div>

            </div>

    <?php } ?>

        </div> <!-- /.row -->

    </div> <!-- /#accordion -->
    
<?php 
          endif; 
          
       }
?>