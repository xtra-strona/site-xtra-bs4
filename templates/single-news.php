<?php namespace ProcessWire; ?>

<div id="content-main" pw-prepend>
    
            <h5 class='text-center my-2'>
                
               -- <i class="fa fa-calendar" aria-hidden="true"></i>
                
                <?=$page->dat_1?> 
                
                <?php          
                  if($page->ref_2) {
                  echo '| ' . $page->ref_2("<a href='{url}'><i class='fa fa-user-secret' aria-hidden='true'></i>{title}</a>");
                } ?>

            </h5>
    
    <a href='<?=$page->images->first()->url?>'>
      <img class='mx-auto d-block img-fluid p-2' src='<?=$page->images->first()->url?>' />       
    </a>
 
</div>
