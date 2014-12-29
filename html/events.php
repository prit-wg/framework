<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Keith Ordeneaux > Events</title>
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
<div id="about_top_s"><span class="greenlar_heading">Events</span></div><br/><br/>
<div class="breadcrumb"><a class="a4" href="<?php echo make_url('home');?>">Home</a>&nbsp;&raquo;&nbsp;Events&nbsp;&raquo;&nbsp;</div><br/>
<div id="left_box1">
 
 <?php if(count($fune)):?>
			<?php foreach ($fune as $k=>$v):?>
                	<div class="ob_name2">
						<?php if($v->name!=''):  ?>
						<a class= "underline" href="<?php echo make_url('event_detail','id='.$v->id)?>"><?php  echo $v->name; ?> </a>
						<?php else: ?>
						<a class= "underline" href="<?php echo make_url('event_detail','id='.$v->id)?>"><?php  echo "'Name Not define'"; ?> </a>
						<?php endif;?>
						</div>
						
            <?php endforeach;?>
		<?php endif;?>
  </div>
  <div id="right_box">
	
	<?php if(count($fune)):?>
			<?php foreach ($fune as $k=>$v):?>
                	<div class="ob_name2">
						<?php if($v->event_date_show!=''): ?>
						<?php  echo date("M d,Y",strtotime($v->event_date_show)); ?> - <?php  echo date("M d,Y",strtotime($v->event_end_date)); ?> 
						<?php else: ?>
						<?php echo "'Date Not define'"; ?> 
						<?php endif;?>
						</div>
						
            <?php endforeach; 
		 endif;?>
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
