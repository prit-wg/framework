<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Keith Ordeneaux > Event Calendear</title>
<?php css($array=array('reset','style','calender', 'thickbox','ui-lightness/jquery-ui-1.8.16.custom','themes/default/default','themes/pascal/pascal','themes/orman/orman','nivo-slider'));?>
<?php js($array=array('jquery.min','flux.min','jquery-1.6.2.min', 'jquery-1.6.1.min', 'jquery.nivo.slider.pack','radius', 'radius_code', 'middle-tabs', 'thickbox','search-reset'));?>


       <script type="text/javascript">
            $(window).load(function() {
                            $('#slider1').nivoSlider();
                    });
            </script>
 <script>
		$("document").ready(function(){
//			$("#calendar .dark").mouseover(function(){
//				var v=$(this).attr("rel");
//				var x=$(this).offset().left-50;
//				var y=$(this).offset().top+50;
//				$("#"+v).css('display','block');
//				$("#"+v).css('position','absolute');
//				$("#"+v).css('top',y);
//				$("#"+v).css('left',x);
//			});
			
			$(".elink").mouseover(function(){
				var v=$(this).attr("rel");
				var x=$(this).offset().left-80;
				var y=$(this).offset().top;
				$("#"+v).css('display','block');
				$("#"+v).css('position','absolute');
				$("#"+v).css('top',y);
				$("#"+v).css('left',x);
			});
			
			
			$(".elink").mouseout(function(){
				var v=$(this).attr("rel");
				$("#"+v).css('display','none');
			});
		});
     
	</script>
	

</head>
<body>
<div id="container">
<?php
include_once(DIR_FS_SITE_TEMPLATE_INC.'top.php');
?>
    <div id="bod_txt" style="min-height: 600px;">
<?php
include_once(DIR_FS_SITE_TEMPLATE_INC.'left.php');
?>
            <div id="bod_right">
<div id="about_top_s"><span class="greenlar_heading" style="background:none;">Event Calendar</span></div><br/><br/>
<div class="breadcrumb"><a class="a4" href="<?php echo make_url('home');?>">Home</a>&nbsp;&raquo;&nbsp;<a class="a4" href="<?php echo make_url('events');?>">Event</a>&nbsp;&raquo;&nbsp;Calendar</div><br/>
<p>
<div id="center">
	 <div id="left"> 
                   	<?php echo display_form_error();?>
                   	<?php include(DIR_FS_SITE.'template/event/calendar-form.php');?>
                    <div id="calendar_container">
			<div id="calendar_container">
                                <div class="head">Sun</div>		
                                <div class="head">Mon</div>			
                                <div class="head">Tue</div>			
                                <div class="head">Wed</div>			
                                <div class="head">Thu</div>			
                                <div class="head">Fri</div>			
                                <div class="head">Sat</div>			
                                <div style="clear:both;"></div>
							<?php
				for($j=0;$j<$day;$j++):
                                    echo '<div class="box"></div>';
				endfor;	?>
				<?php 
				if(count($events)):
                                    for($i=1;$i<=$days;$i++):
                                       if(isset($eve[$i])):   ?> 
                                               <div class="box1">                                                  
                                                  <?php echo $i;                                                   
                                                        foreach($eve[$i] as $k=>$v):?>
                                                   <div class="calender_event">
                                                     <a  href="<?php echo make_url('popup_event','id='.$v->id)?>" class="boxlink thickbox"><?php echo substr($v->name,0,13);?></a>                                                    
                                                   </div>                                                       
                                                 <?php  endforeach;  ?>                                                   
                                               </div>                                            
                                       <?php else:?>
                                           <div class="box"><br/>
                                              <?php echo $i?>
                                           </div>
                                       <?php endif;?>
                                 <?php
                                    endfor;
				else:
                                    for($i=1;$i<=$days;$i++):
                                       echo '<div class="box"><br/>'.$i.'</div>';
                                    endfor;
				endif;	?>							
				<div style="clear:both;"></div>
                    </div>
            </div>                  
                   <div style="clear:both;height:50px;"></div>  
    </div>
</p>
   </div>
	 </div>
	 </div>
    </div>
	
	<!-- footer Hare -->	
<?php
include_once(DIR_FS_SITE_TEMPLATE_INC.'footer.php');
?>    
  </div>
</body>
</html>
