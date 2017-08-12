<?php namespace ProcessWire;
$oferts = page()->rep_7;
 ?>
<div id="content-main" pw-append>

     <div class="row p-3">
<?php foreach ($oferts as $key ) { ?>
<div class="card text-center mb-3">
  <div class="card-block">
    <h4 class="card-title"><?=$key->txt_1?></h4>
    <p class="card-text"><?=$key->txtarea_1?></p>

<?php if(count($key->rep_menu)) { 

foreach ($key->rep_menu as $m_first) {

if($m_first->url_1) {
?>

<a href="<?=$m_first->url_1?>" class="btn btn-primary" target="<?=$m_first->check_1 ? '_new' : '' ?>">

<?php if($m_first->txt_2) {
      echo "<i class='fa $m_first->txt_2 fa-lg'></i>"; 
} ?>

<?=$m_first->txt_1?>

</a>

<?php } elseif(count($m_first->ref_1)) { 
  foreach ($m_first->ref_1 as $m_next) { ?>

    <a href="<?=$m_next->url?>" class="btn btn-primary" target="<?=$m_first->check_1 ? '_new' : '' ?>">

<?php if($m_first->txt_2) {
      echo "<i class='fa $m_first->txt_2 fa-lg'></i>"; 
} ?>
      <?=$m_first->txt_1 ? $m_first->txt_1 : $m_next->title?>
    </a>
  <?php } ?>

<?php } ?>

<?php } ?>

<?php } 
if($key->txt_2) {
 echo "<h3 class='display-4 m-2 alert alert-info' role='alert'>$key->txt_2</h3>";
}
?>
    
  </div>

</div>
<br> 
<?php } ?>

    </div>
    
</div>    