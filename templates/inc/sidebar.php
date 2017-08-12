<?php  namespace ProcessWire;
// IF DISABLE SIDEBAR IN CONTENT PAGE CHECK FIELD
if( !$page->check_1 ) {

    if ( count(page()->rep_4) || count($global_sid) ){ ?>
            <!-- SIDEBAR -->
                  <div id="sidebar" class="col-lg-3">
                      <div class="row px-2">
    <?php } ?>

<?php
// IF PAGE HAS SIDEBAR
  if (count(page()->rep_4)):
  $i = 0;
    foreach (page()->rep_4 as $sid_p): 
  $i ++;
    ?>

      <div class="<?= !$sid_p->check_2 ? 'card' . " card-class-$i " : "cust-card card-class-$i"?> col-12 mb-3 text-center">
          <div class="<?=!$sid_p->check_2 ? 'card-block' . " block-class-$i" : "cust-block block-class-$i";?>">

            <?php if ($sid_p->txt_1): ?>
              <h3 class="card-title"><?=$sid_p->txt_1?></h3>
            <?php endif; ?>

            <?php if ($sid_p->txtarea_1): ?>
                      <p class="card-text"><?=$sid_p->txtarea_1?></p>
            <?php endif; ?>

            <?php if ($sid_p->url_1): ?>
               <a href="<?=$sid_p->url_1?>" class="btn btn-primary" target="<?=$sid_p->check_1 ? '_new' : ''?>"><?=$sid_p->txt_2?></a>
            <?php endif; ?>

          <?php if (count($sid_p->ref_1)): ?>

            <?php foreach ($sid_p->ref_1 as $p_ref): ?>
                 <a href="<?=$p_ref->url?>" class="btn btn-primary" target="<?=$sid_p->check_1 ? '_new' : ''?>"><?=$sid_p->txt_2 ? $sid_p->txt_2 : $p_ref->title ?></a>
            <?php endforeach; ?>


          <?php endif; ?>

          </div>
      </div>

<?php 
if( count($sid_p->rep_menu) ) {
$r = 0;

echo "<ul class='list-group mb-3 mt-1 mx-auto'>";

    foreach ($sid_p->rep_menu as $new_m ) {

if( count($new_m->ref_1) ) {

foreach ($new_m->ref_1 as $n_m) { 
$r++;
?>

<a class="p-1 cust-cl-<?=$r?>" href="<?=$n_m->url;?>" target="<?=$new_m->check_1 ? '_new' : ''?>">
<?php if($new_m->font_1) { ?>
  <i class="fa fa-<?=$new_m->font_1;?> fa-fw fa-2x" aria-hidden="true"></i>
    &nbsp;<?php } echo $new_m->txt_1 ? $new_m->txt_1 : $n_m->title?>
</a>

<?php }

} elseif($new_m->url_1) { ?>

<a class="p-1 cust-cl-<?=$r?>" href="<?=$new_m->url_1;?>" target="<?=$new_m->check_1 ? '_new' : ''?>">
<?php if($new_m->font_1) { ?>
  <i class="fa fa-<?=$new_m->font_1;?> fa-fw fa-2x" aria-hidden="true"></i>
    &nbsp;<?php } echo $new_m->txt_1?>
</a>

   <?php 
}
    } 
echo "</ul>";

}

?>

<?php endforeach; // END IF THIS PAGE HAS SIDEBAR

              else :

if (count($global_sid)) {
$i = 0;

foreach ($global_sid as $key): 
$i ++;
?>

   <div class="<?= !$key->check_2 ? 'card' . " card-class-$i "  : "cust-card card-class-$i "; ?> col-12 mb-3 text-center">
      <div class="<?= !$key->check_2 ? 'card-block' . " block-class-$i "  : "cust-block block-class-$i"; ?>"> 

        <?php if ($key->txt_1): ?>
          <h3 class="card-title"><?=$key->txt_1?></h3>
        <?php endif; ?>

        <?php if ($key->txtarea_1): ?>
                  <p class="card-text"><?=$key->txtarea_1?></p>
        <?php endif; ?>

        <?php if ($key->url_1): ?>
           <a href="<?=$key->url_1?>" class="btn btn-primary" target="<?=$key->check_1 ? '_new' : ''?>"><?=$key->txt_2?></a>
        <?php endif; ?>

      <?php if (count($key->ref_1)): ?>

        <?php foreach ($key->ref_1 as $p_ref): ?>
             <a href="<?=$p_ref->url?>" class="btn btn-primary" target="<?=$key->check_1 ? '_new' : ''?>"><?=$key->txt_2 ? $key->txt_2 : $p_ref->title?></a>
        <?php endforeach; ?>

      <?php endif; ?>

      </div>
  </div>

<?php 

if( count($key->rep_menu) ) {
$r = 0;

echo "<ul class='list-group mb-3 mt-1 mx-auto'>";

    foreach ($key->rep_menu as $new_m ) {


if( count($new_m->ref_1) ) {


foreach ($new_m->ref_1 as $n_m) { 
$r++;
?>

<a class="p-1 cust-cl-<?=$r?>" href="<?=$n_m->url;?>" target="<?=$new_m->check_1 ? '_new' : ''?>">
 <?php if($new_m->font_1) { ?>
  <i class="fa fa-<?=$new_m->font_1;?> fa-fw fa-2x" aria-hidden="true"></i>
      &nbsp;<?php } echo $new_m->txt_1 ? $new_m->txt_1 : $n_m->title?>
</a>

<?php }

} elseif($new_m->url_1) { ?>

<a class="p-1 cust-cl-<?=$r?>" href="<?=$new_m->url_1;?>" target="<?=$new_m->check_1 ? '_new' : ''?>">
 <?php if($new_m->font_1) { ?>
  <i class="fa fa-<?=$new_m->font_1;?> fa-fw fa-2x" aria-hidden="true"></i>
    &nbsp;<?php } echo $new_m->txt_1?>
</a>

   <?php 
}
    } 
echo "</ul>";

}

?>

<?php endforeach;
}
// END IF PAGE HAS SIDEBAR
 endif;

  if (count(page()->rep_4) || count($global_sid) ){ ?>
                  </div>
                  <!-- /.row -->
              </div>
			  <!-- /#sidebar -->
        <?php } 
        
        } ?>