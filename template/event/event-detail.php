 <div class="news_left">
  <?php if($object->image):?>
         <?php if(file_exists(DIR_FS_SITE.'upload/photo/gallery/large/'.$object->image)):?>
                    <img src="<?php get_medium('gallery',$object->image);?>"width="195" height="115"/>
            <?php else:?>
                    <img src="<?php echo DIR_WS_SITE_GRAPHIC?>noevent.jpg" width="195" height="115" /> 
        <?php endif;?>
  <?php else:?>
       <img src="<?php echo DIR_WS_SITE_GRAPHIC?>noevent.jpg" width="195" height="115" />        
  <?php endif;?>
</div>
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
         <div class="news_read_more">
            <a title="Back to Events" href="<?php echo make_url('event');?>">Back to Events</a>
        </div>
         
          <!--Share on facebook and twitter-->   
             <!--For twitter-->
              <br/>
             
              <a href="https://twitter.com/share" class="twitter-share-button" data-url="<?php echo make_url('event-detail', 'event_id='.$id);?>" data-count="none">Tweet</a>
              <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
              
              <!--For facebook-->

                <div id="fb-root"></div>
                <script>(function(d, s, id) {
                  var js, fjs = d.getElementsByTagName(s)[0];
                  if (d.getElementById(id)) return;
                  js = d.createElement(s); js.id = id;
                  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                  fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));
                </script>
            <br/>
            <div class="fb-like" data-href="<?php echo make_url('event-detail', 'event_id='.$id);?>" data-send="true" data-width="450" data-show-faces="false" data-font="arial"></div>
        <!--end sharing-->
         
</div>
<div style="clear:both"></div>