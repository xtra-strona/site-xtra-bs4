<?php namespace ProcessWire;?>

<div id="content-main" pw-append>

<?php
//Change Your Mail
  $your_mail = 'yourmail@gmail.com';
  if($page->email_1 !='') {
    $your_mail = $sanitizer->email($page->email_1);
  }

//Change Your Subject
  $my_subject = 'My Subject';
  if($page->txt_1 !='') {
     $my_subject = $sanitizer->text($page->txt_1);
  }

//Change Your Succ Message
  $success_m = __('Your Message Has Been Sent :)');
  if($page->txtarea_1 !='') {
     $success_m = $page->txtarea_1;
}

  // form was submitted so we process the form
  if($input->post->submit) {

       // https://processwire.com/api/ref/session/c-s-r-f/
          if($session->CSRF->hasValidToken()) {

       // https://processwire.com/api/variables/input/
       // https://processwire.com/api/variables/sanitizer/

            $name = $sanitizer->text($input->post->name);
            $email = $sanitizer->email($input->post->email);
            $subject = $sanitizer->textarea($input->post->subject);

  if($name && $email && $subject == true) {

      $n = $page->txt_2 ? $page->txt_2 : 'Name';
      $e = $page->txt_4 ? $page->txt_4 : 'E-Mail';
      $sub = $page->txt_6 ? $page->txt_6 : 'Subject';
      
    //https://processwire.com/api/ref/mail/
    $message = $mail->new();
    $message->to($your_mail)->from($your_mail);
    $message->subject($my_subject)->body("$n: $name, $e: $email, $sub: $subject")->bodyHTML("<h4>$n: $name</h4> <h4>$e: $email</h4> <h4>$sub: </h4> <p>$subject</p>");
    $numSent = $message->send();

   //Success Message
      echo  "<div class='alert alert-success' role='alert'><h3>$success_m</h3></div>"; ?>
   <!--Yor Submit Message-->
     <h4><?=$page->txt_8 ? $page->txt_8 : 'Your Message';?></h4>
      <ul>
        <li><b><?=$n?></b> <?=$name?></li>
        <li><b><?=$e?></b> <?=$email?></li>
        <li><b><?=$sub?></b> <?=$subject?></li>
      </ul>

  <?php } else { ?>

    <div class="alert alert-danger" role="alert">
        <p><?=$page->txt_3 ? $page->txt_3 : __("Your Sanitizer Stopped !!! ... Fill in the fields correctly ...");?></p>
    </div>

<?php  }

          } else { ?>

            <div class="alert alert-danger" role="alert">
                <p><?=$page->txt_5 ? $page->txt_5 : __("CSRF Token Not Found");?></p>
            </div>
<?php  }

  } else { ?>

   <!-- DEFAULT FORM IF NOT SUMBIT -->
 <form class='card card-block my-2' action="./" method="post">
     
    <?php // https://processwire.com/talk/topic/3779-use-csrf-in-your-own-forms/
     $tokenName = $this->session->CSRF->getTokenName();
     $tokenValue = $this->session->CSRF->getTokenValue(); ?>
     
   <input type="hidden" id="_post_token" class="form-control" name="<?=$tokenName?>" value="<?=$tokenValue?>">
     
  <div class="form-group">     
  <label for="example-text-input"><?=$page->txt_2 ? $page->txt_2 : 'Name';?></label>
    <input class="form-control" type="text" name="name" id="name-input" placeholder="" required>
  </div>
        
  <div class="form-group">
    <label for="exampleInputEmail1"><?=$page->txt_4 ? $page->txt_4 : 'E-Mail';?></label>
    <input type="email" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp" placeholder="" required>
  </div>

  <div class="form-group">
    <label for="exampleTextarea"><?=$page->txt_6 ? $page->txt_6 : 'Subject';?></label>
    <textarea name="subject" class="form-control" id="exampleTextarea" rows="3" required></textarea>
  </div>
        
  <input type="submit" name="submit" class="btn btn-primary btn-lg" value="<?=$page->txt_7 ? $page->txt_7 : 'Submit';?>">
  
</form>
   
     <?php } ?> 
    
<?php if($page->txtarea_2) { ?>
   
    <div class="embed-responsive embed-responsive-16by9 my-3">
        <?=$page->txtarea_2?>
    </div> 
   
<?php } ?>
   
</div>
