    <div id="bod_txt2">
      <div id="event_txt">
 <div class="round">
 <div id="tabs">
			<ul>
	<li  ><a href="#tabs-1" >  <img  class="border" src="<?php  echo DIR_WS_SITE_GRAPHIC ?>/facebook1.jpg" height="42px" style="border:none;" /></a></li>
        
		<li ><a href="#tabs-2"> <img class="border" src="<?php  echo DIR_WS_SITE_GRAPHIC ?>/twitter1.jpg" height="42px" style="border:none;" /></a></li>
		<li><a href="#tabs-3"><img class="border" src="<?php  echo DIR_WS_SITE_GRAPHIC ?>you1.jpg"  height="42px" style="border:none;" /></a></li>
			</ul>
<div id="tabs-1">
	<div style="padding:5px;background:#FFFFFF;width:100%;">
		<div class="fb-comments" data-href="http://www.keithforpearland.com" data-num-posts="2" data-width="600"></div>
	</div>
</div>
  
     
<div id="tabs-2">
<script src="http://widgets.twimg.com/j/2/widget.js"></script>
<script>
new TWTR.Widget({
  version: 2,
  type: 'profile',
  rpp: 8,
  interval: 30000,
  width: 'auto',
  height: 232,
  theme: {
    shell: {
      background: '#ffffff',
      color: '#000000'
    },
    tweets: {
      background: '#FFFFFF',
      color: '#000000',
      links: '#0000FF'
    }
  },
  features: {
    scrollbar: true,
    loop: false,
    live: false,
    behavior: 'all'
  }
}).render().setUser('keithforpearland').start();
</script>
</div>

<div id="tabs-3">
                             <div class="video-down-bg">
                                <div class="yt_holder">
                                    <div id="ytvideo2"></div>
                                    <ul class="demo2">
                                        <li><div id="youtubevideos"></div></li>
                                    </ul>
                                </div>     
                             </div>
</div>
	</div>
	</div><br/>
	
        <div id="event_txt_blu">
        <span class="atxtsmall" id="event_txt_blu_c">Events &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="calendar_span"> <a class="underline" href="<?php echo make_url('events-calendar');?>" >Event Calendar </a></span></span>
		
        </div>
        <div id="blu_bot_s"><img src="<?php echo DIR_WS_SITE_GRAPHIC?>blu_bot_s.jpg" width="651" height="16" /></div>
        <!-- Event Hare -->
		<div id="blu_bot_s_txt">				
			<?php if($event->GetNumRows()):?>
				<?php while($object=$event->GetObjectFromRecord()): ?>
					<div id="blu_bot_s_txt1"><span class="txtligh"> <?php echo $object->event_date_show; ?></span><br/>
					<span class="txtgreen"><a class="event_underline" href="<?php echo make_url('event_detail','id='.$object->id)?>"><?php echo limit_text($object->name,20); ?><a/></span><br/>
					<div class="event_txt" style="padding-bottom:0px; min-height:0px"> 
					  <a class="event_underline1" href="<?php echo make_url('event_detail','id='.$object->id)?>"><?php echo html_entity_decode (limit_text($object->short_description,180)); ?>..... <a></div> 
						<br/><a href="<?php echo make_url('events')?>"><img src="<?php echo DIR_WS_SITE_GRAPHIC?>more_info.jpg" width="81" height="46" vspace="5" border="0" /></a>
						</div>			  
				  <div id="blu_bot_s_txt2">
					&nbsp;
				  </div>
				  <?php endwhile;
				else:
					echo "Events will be comming soon";
			  endif; ?>
		</div>
		
		<!-- Event End -->	
   
      </div>	  
	  
	  <!-- Other page -->
	  <div id="event_txt2">
	  
	  <!-- page A -->       
	  <a class="page_link" href="<?php echo make_url('mission')?>" > 
        <div id="event_txt2box1"><span class="link_heading">
		<?php if($mission->is_preview==0): if($mission->page_name!=''): echo $mission->page_name; else: echo "Name Not defime";endif; else: echo "Page Not Found"; endif;?> </span></div></a>
        <div class="txt" id="event_txt2box1txt">
		<?php if($mission->is_preview==0): ?>
		<a class="event_underline2" href="<?php echo make_url('mission')?>" > <?php echo html_entity_decode (limit_text($mission->short_description,200));?>..</a><?php else: echo "Page will be comming soon"; endif;?> </div>
		
		<!-- page B -->
		<a class="page_link" href="<?php echo make_url('endorsement')?>" >
		<div id="event_txt2box2"><span class="link_heading">
		<?php if($endorsement->is_preview==0): if($endorsement->page_name!=''): echo $endorsement->page_name; else: echo "Name Not defime";endif; else: echo "Page Not Found"; endif;?> </span></div></a>
        <div class="txt" id="event_txt2box2txt">
		<?php if($endorsement->is_preview==0): ?>
		<a class="event_underline2" href="<?php echo make_url('endorsement')?>" > <?php	echo html_entity_decode (limit_text($endorsement->short_description,200));?>..</a><?php else: echo "Page will be comming soon"; endif;?> </div>
		
		<!-- page C -->
		<a class="page_link" href="<?php echo make_url('polling')?>" >
		<div id="event_txt2box3"><span class="link_heading">
		<?php if($polling->is_preview==0): if($polling->page_name!=''): echo $polling->page_name; else: echo "Name Not defime";endif; else: echo "Page Not Found"; endif;?> </span></div></a>
        <div class="txt" id="event_txt2box3txt">
		<?php if($polling->is_preview==0): ?>
		<a class="event_underline2" href="<?php echo make_url('polling')?>" > <?php	echo html_entity_decode (limit_text($polling->short_description,200));?>..</a><?php else: echo "Page will be comming soon"; endif;?> </div>
      </div>
    </div>