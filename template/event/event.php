 <div class="news">
       <div class="news_left">
            <a title="click to Read More" href="<?php echo make_url('event-detail', 'event_id='.$id);?>">
                <?php if($v->image):?>
                     <?php if(file_exists(DIR_FS_SITE.'upload/photo/gallery/large/'.$v->image)):?>
                        <img src="<?php get_medium('gallery',$v->image);?>"width="195" height="115"/>
                        <?php else:?>
                           <img src="<?php echo DIR_WS_SITE_GRAPHIC?>noevent.jpg" width="195" height="115" /> 
                    <?php endif;?>
                     <?php else:?>
                           <img src="<?php echo DIR_WS_SITE_GRAPHIC?>noevent.jpg" width="195" height="115" />        
                <?php endif;?>
            
            </a>
              
       </div>
        <div class="news_right">
            <div class="news_title"><?php echo strtoupper($v->name);?></div>
              <div class="news_date">
             <?php 
                    if($v->event_end_date):
                      echo date('M d,Y',strtotime($v->event_date_show))." - ". date('M d,Y',strtotime($v->event_end_date));
                    else:
                      echo date('M d,Y',strtotime($v->event_date_show));
                  endif;
              ?>
              </div>
              <div class="news_text"><?php echo html_entity_decode(limit_text($v->short_description,230))?></div>
                <div class="news_read_more">
                    <a title="click to Read More" href="<?php echo make_url('event-detail', 'event_id='.$id);?>"> Read More</a>
                </div>
        </div><div style="clear:both"></div>

     </div>