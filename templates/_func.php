<?php namespace ProcessWire; 
            
            function pagination($items) {
                
                if($items->renderPager()) {

                    echo "<div class='d-flex justify-content-center my-2'>\n
                       <nav>";
                    echo $items->renderPager(array(
                        'nextItemLabel' => "Next",
                        'previousItemLabel' => "Previous",
                        'listMarkup' => "<ul class='pagination'>{out}</ul>",
                        'itemMarkup' => "<li class='page-item'>{out}</li>",
                        'separatorItemLabel' => " ... ",
                        'linkMarkup' => "<a class='page-link' href='{url}'>{out}</a>",
                        //CURRENT
                        'currentLinkMarkup' => "<a class='page-link bg-primary text-white   ' href='{url}'>{out}</a>",
                    )); 
                        echo "</nav>\n
                    </div>";

                    } 
                }
                
// Custom CSS
function customCss(){
  echo"/* Preloader */
  #preloader {
  position: fixed;
  top:0;
  left:0;
  right:0;
  bottom:0;
  background-color:#fff; /* change if the mask should have another color then white */
  z-index:1999; /* makes sure it stays on top */
  }
    #status {
  width:200px;
  height:200px;
  position:absolute;
  background-repeat:no-repeat;
  background-position:center;
  margin:-100px 0 0 -100px; /* is width and height divided by two */
}
";
}

function cookiesConsent($tx_1,$tx_2,$tx_3,$tx_4)
{
  return"<script>
window.addEventListener('load', function(){
window.cookieconsent.initialise({
  'palette': {
    'popup': {
      'background': '#000'
    },
    'button': {
      'background': '#f1d600'
    }
  },
  'theme': 'edgeless',
  'content': {
    'message': '{$tx_1}',
    'dismiss': '{$tx_2}',
    'link': '{$tx_3}',
    'href': '{$tx_4}'
  }
})});
  </script>\n";
}
