<?php
(isset($_GET['id']) && !empty($_GET['id']) && is_numeric($_GET['id']))?$id=$_GET['id']:$id=0;
$object= get_object('event', $id);

?>
<div class="teampopup_top"><?php echo only_first_word_upper($object->name)?></div><br/>

<div class="news_right">
     
         <div class="news_date">
             <?php 
                if($object->event_end_date):
                  echo date('M d,Y',strtotime($object->event_date_show))." - ". date('M d,Y',strtotime($object->event_end_date));
                else:
                  echo date('M d,Y',strtotime($object->event_date_show));
              endif;
              ?>
         </div>
         <div class="news_text"><?php echo html_entity_decode($object->short_description);?></div>
         
 
<div style="clear:both"></div>