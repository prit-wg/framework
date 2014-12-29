<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Tuttle Funeral Home > Gallery</title>
<?php css(array('reset','style','skin','img-rotat','pro_dropline_1','thickbox','popup','menu/superfish'));?>
<?php js(array('stuHover','jquery-1','jquery','jquery.min', 'thickbox'));?>
  <script type="text/javascript">
    jQuery(document).ready(function() {
        jQuery('#mycarousel2').jcarousel();
    });

</script>
</head>
<body>
<?php
include_once(DIR_FS_SITE_TEMPLATE_INC.'top.php');
?>

		   <div id="center">
		   <div id="services_bg" style="min-height: 310px;">
		   
		   <h1> <span class="l_color3">Photo</span><span class="l_color1"> Gallery</span></h1>
		   <div style="clear:both"></div>
			 <div  class="about_line"></div>
		   <div class="breadcrumb"><a class="a4" href="<?php echo make_url('home');?>">Home</a>&nbsp;&raquo;&nbsp;<a class="a4" href="<?php echo make_url('about');?>">About Us</a>&nbsp;&raquo;&nbsp;Gallery</div>
		   <div class="about_pre2">
		   
			<p>
				<div class="ourstaffpicpanel23">
						<?php if(count($galleries)): $sr=1;?>
							<?php foreach ($galleries as $k=>$v):?>
							<?php $caption=$v->name;
								  $image=$v->image;
								  $gid=$v->id;?>
								<div class="picpanel2_gallery">
									<?php include(DIR_FS_SITE.'template/gallery.php');?>								  
								</div>
							<?php endforeach;?>
						<?php endif;?>
				</div><div style="clear:both;"></div>
				  
			</div>
		</p> 

		
		
		
		
		
		<div style="clear:both"></div><br/>
		<div id="grief_img"><img src="graphic/img-14.jpg" /></div>
		<div id="make_u">“Make your arrangements before the need arises…. For those you love…”</div>
			
			 </div>
			  </div>
			  </div>	  
	
  </div>
  <div style="clear:both;"></div>
  <?php
include_once(DIR_FS_SITE_TEMPLATE_INC.'bottom.php');
?>