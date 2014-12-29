<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Keith Ordeneaux > Events <?php if($content1->is_action='on'): echo "> ".$content1->name; endif; ?> </title>
<?php css($array=array('style','ui-lightness/jquery-ui-1.8.16.custom','themes/default/default','themes/pascal/pascal','themes/orman/orman','nivo-slider'));?>
<?php js($array=array('jquery.min','flux.min','jquery-1.6.2.min', 'jquery-1.6.1.min', 'jquery.nivo.slider.pack'));?>

       <script type="text/javascript">
            $(window).load(function() {
                            $('#slider1').nivoSlider();
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

		<?php if($content1->is_action='on'): ?>
		<div id="about_top_s"><span class="greenlar_heading"><?php echo limit_text($content1->name,60);?></span></div> <br/><br/><br/><br/>
		<div class="breadcrumb"><a class="a4" href="<?php echo make_url('home');?>">Home</a>&nbsp;&raquo;&nbsp;<a class="a4" href="<?php echo make_url('events');?>">Events</a>&nbsp;&raquo;&nbsp;</div>
		
		<p class="top_event">Vanue : <strong><?php echo $content1->venue ;?></strong><br/>
		Date &nbsp;&nbsp;:&nbsp; <strong><?php echo $content1->event_date_show ;?>&nbsp;&nbsp;to&nbsp;&nbsp;<?php echo $content1->event_end_date ;?></strong><br/></p>
		<div class="inner_text">
		<?php 
		echo html_entity_decode($content1->long_description);
		else :
		echo "Event will be comming Soon !";	
		endif;
		 ?> 
		 </br/>
<br/><br/>
      </div>
    </div>
	
	<!-- footer Hare -->	
<?php
include_once(DIR_FS_SITE_TEMPLATE_INC.'footer.php');
?>    
  </div>
</body>
</html>
