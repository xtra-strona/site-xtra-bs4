<?php namespace ProcessWire;

$homepage = $pages->get('/');
$options = pages()->get('/options/');
$lang_options = pages()->get('/language-options/');

$info = $options->rep_3;
$global_sid = $options->rep_4;
$social_m = $options->rep_5;
// $menu = $options->rep_menu;

// Opt Img
  $opt_img_1 = array(
    'quality' => 70,
    'upscaling' => false,
    'cropping' => 'southeast'
  );


// COOKIE CONSENT
$tx_1 = $options->txtarea_1;
$tx_2 = $options->txt_2;
$tx_3 = $options->txt_3;

if($options->ref_1 != ''){
    
    $cok_txt = $options->ref_1;
    
    foreach ($cok_txt as $v_c) {
        $tx_4 = $v_c->url;
    }
} else {
    
    $tx_4 = $options->url_1;
    
}

include '_func.php';