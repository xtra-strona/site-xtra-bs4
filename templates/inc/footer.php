<?php namespace ProcessWire; ?>
<!-- Start Footer -->
    <footer id="my-footer" class="mt-2" sticky-footer>
        <div class="row foot py-3">

            <div class="col-lg-4 text-center my-3">
                
                <p>
                    
                  <?= $options->txt_4 ? $options->txt_4 : __('Powered By');?> &copy;
                    
                    <?=$options->url_2 ? "<a href='$options->url_2' target='_new'>" : '';?>
                    
                       <?=$options->txt_1 ? $options->txt_1 : __('Xtra Strona');?>
                    
                    <?=$options->url_2 ? "</a>" : '';?>
                    
                </p>
                
            </div>

            <div class="col-lg-4 text-center my-3">

              <?php if (count($social_m)):

                      foreach ($social_m as $key) { ?>

                        <a href="<?=$key->url_1?>" target="<?=$key->check_1 ? '_blank' : ''?>">
                            <?php if($key->font_1) :?>
                               <i class="px-2 fa fa-<?=$key->font_1?> fa-2x" aria-hidden="true"></i>
                            <?php endif; ?>
                        </a>

                      <?php } ?>

              <?php endif; ?>

            </div>

            <div class="col-lg-4 text-center my-3">
              <div class="owl-foot owl-carousel owl-theme">
                    <?php if ($options->rep_6):
                     foreach ($options->rep_6 as $key ) { ?>
                       <div class="item">
                           <p>
                             <?php if ($key->font_1): ?>
                                 <i class="fa fa-<?=$key->font_1;?> fa-2x" aria-hidden="true"></i>
                             <?php endif; ?>

                                 <?php if ($key->url_1): ?>
                                     <a href="<?=$key->url_1;?>" target="<?php echo $key->check_2 ? "_blank" : '' ?>" rel="noreferrer">
                                       <?=$key->txt_1;?>
                                     </a>
                                  <?php else:
                                          foreach ($key->ref_1 as $p_r) { ?>
                                            <a href="<?=$p_r->url;?>" target="<?php echo $key->check_2 ? "_blank" : '' ?>" rel="noreferrer">
                                                
                                              <?=$key->txt_1 ? $key->txt_1 : $p_r->title;?>
                                                
                                            </a>
                                        <?php  } ?>

                                 <?php endif; ?>
                           </p>
                       </div>
                    <?php } ?>

                    <?php endif; ?>
                  </div>
            </div>

        </div>
        <!-- /.foot -->

    </footer>