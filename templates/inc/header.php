<?php namespace ProcessWire; ?>
<!-- Page Header -->
<header class="headroom sticky-top" id="header-area">
  
    <div id="head-info" class="container-fluid">

          <div class="row mt-3">

              <div class="logo col-lg-3 align-self-center hidden-sm-down">
                  <a href="<?=$homepage->url?>">
                      <?php if($options->img_1) {
                          $logo = $options->img_1
                       ?>
                      <img class="mx-auto d-block img-fluid" src="<?=$logo->url?>" alt="logo" width='<?=$logo->width?>' height='<?=$logo->height?>'>
                      <?php } else {
                          echo "<h3 class='display-4'>" . $options->txt_1 . "</h3>";
                      } ?>
                  </a>
              </div>

              <div class="col-lg-6  align-self-center  hidden-sm-down">
                  <!--<h1 class="display-4">-->
                  <ul class="d-flex justify-content-center  list-inline">
                      
                  
                              <?php
		// breadcrumbs are the current page's parents
		foreach($page->parents() as $item) {
                    echo "<li class='display-4 breadcrumb-item'><a class='text-center' href='$item->url'>$item->title</a></li>";
		}
		// optionally output the current page as the last item
		echo "<li class='display-4 breadcrumb-item'><a class='text-danger text-center' href='$page->url'>$page->title</a></li>"; 
	?>
                       </ul> 
                      <?php // echo page()->title?>
                  
                  <!--</h1>-->
              </div>

              <div class="col-lg-3 text-center align-self-center hidden-sm-down">
             <!-- OWL CAROUSEL INFO -->
                <div class="owl-info owl-carousel owl-theme">

                  <?php
                        if(count($info)) {
                        foreach ($info as $key): ?>

                        <div class="item">
                            
                          <h3 class="display-4 text-center">

                            <?php if (strpos($key->txt_1, '@') !== false): ?>

                              <a href="mailto:<?=$key->txt_1?>">
                               <?php if($key->font_1) : ?>  
                                <i class="fa fa-<?=$key->font_1?>" aria-hidden="true"></i>
                               <?php endif; ?>
                                   <?=$key->txt_1?>
                              </a>

                            <?php else: ?>

                              <?php if($key->font_1) : ?>  
                                <i class="fa fa-<?=$key->font_1?>" aria-hidden="true"></i>
                               <?php endif; ?>
                                    <?=$key->txt_1?>
                                
                            <?php endif; ?>

                          </h3>
                            
                        </div>

                    <?php endforeach;
                                          } ?>
                </div>

              </div>

          </div><!-- /.row -->
          
    </div><!-- /#head-info /.container-fluid -->

<!-- Navigation -->
  <nav id="main-nav" class="navbar-toggleable-md navbar-light bg-faded">
      
    <div class='row head-menu'>

        <div class='col-md-12 col-lg-8'>
              
                        <div class="text-center my-1" id="navbarNav">       
               <?php
               
               // Nav Menu
                 if (count($options->rep_menu)){
                  
                   $m_r = $options->rep_menu;

                   $i = 0;
                    foreach ($m_r as $m_mob) {
                  $i++;
                       if(count($m_r) == $i ) {
                         $space = "";
                       } else {
                          $space = "<span class='space'>|</span>";
                       }
                        
                        if($m_mob->url_1) { ?>
                            
                        <a href="<?=$m_mob->url_1?>" target="<?=$m_mob->check_1 ? '_blank' : ''?>">
                            <i class="<?=$lass?> fa fa-<?=$m_mob->font_1 ? $m_mob->font_1 : ''?>" 
                                data-toggle="tooltip" data-placement="bottom" title="<?=$m_mob->txt_1?>" aria-hidden="true">
                            </i>
                            <span class='<?=$lass?> hidden-sm-down'><?=$m_mob->txt_1?></span>
                        </a> <?=$space?>
    
                        <?php } elseif(count($m_mob->ref_1)) {
                            
                    foreach ($m_mob->ref_1 as $p_ref) {

                          $class_danger = '';
                          if($p_ref->name == $page->name) {
                              $class_danger = 'text-danger';
                          } 
                          ?>
                        <a class='<?=$class_danger?>' href="<?=$p_ref->url?>" target="<?=$m_mob->check_1 ? '_blank' : ''?>">
                            <i class="<?=$class_danger?> fa fa-<?=$m_mob->font_1 ? $m_mob->font_1 : ''?>" 
                               data-toggle="tooltip" data-placement="bottom" title="<?=$p_ref->title?>" aria-hidden="true">
                            </i>
                            <span class='hidden-sm-down'><?=$p_ref->title?></span>
                            <span class='hidden-sm-up' data-toggle="tooltip" data-placement="bottom" title="<?=$p_ref->title?>"></span> 
                        </a> <?=$space?>
         
                    <?php 
                          }
                        
                       }

                        }

                    } ?>
                            
           <?php
                  // Multilingual Menu
                    if($lang_options->check_1) {

     echo "<span class='space'>{ </span>";

                           foreach($languages as $language) {
                                   if(!$page->viewable($language)) continue; // is page viewable in this language?
                                   if($language->id == $user->language->id) {
                                           $lang_class = "btn btn-danger text-white m-1";
                                   } else {
                                           $lang_class = "btn btn-outline-primary text-white m-1";
                                   }
                                   $url = $page->localUrl($language); 
                                   $hreflang = $homepage->getLanguageValue($language, 'name'); 
                                   echo "<a class='$lang_class' hreflang='$hreflang' href='$url'><i class='fa fa-language' aria-hidden='true'></i> $language->title</a>";
                           }

    echo "<span class='space'> }</span>";

                    }
               ?>

     </div><!-- /#navbarNav -->
                          

                        
        </div><!-- /.col-12 col-sm-6 col-md-9 -->
          

            <div class="my-1 col-lg-4 navbar-collapse content-search-form">

                 <form class="mx-auto d-block text-center form-inline" action="<?=pages()->get('template=search')->url?>" method="get">

                     <input type="search" id="search-query" name="q" class="form-control mr-sm-2" placeholder="<?= $lang_options->txt_2 ? $lang_options->txt_2 : __('Search');?>" required>
                     <button type="submit" class="btn btn-outline-secondary hidden-md-down"><?= $lang_options->txt_2 ? $lang_options->txt_2 : __('Search');?></button>

                 </form>

             </div><!-- /.content-search-form -->
    
    </div><!-- /.row .head-menu -->
      
</nav>

</header>

<br>