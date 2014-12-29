<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> Gallery > <?php echo $gallery->name; ?> </title>
<?php css($array=array('style','ui-lightness/jquery-ui-1.8.16.custom','themes/default/default','themes/pascal/pascal','themes/orman/orman','nivo-slider','jquery.lightbox-0.5'));?>
<?php js($array=array('jquery.min','jquery-1.6.2.min', 'jquery-1.6.1.min', 'jquery.nivo.slider.pack','lightbox/jquery.lightbox-0.5'));?>
 <script>
			 $(function() {
       			 $('.photo1 a').lightBox();
   			 });
		</script>
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
    <div id="bod_txt">
<?php
include_once(DIR_FS_SITE_TEMPLATE_INC.'left.php');
?>
            <div id="bod_right">
<div id="about_top_s"><span class="greenlar_heading">Gallary > <?php echo $gallery->name; ?></span></div>
<div class="breadcrumb"><a class="a4" href="<?php echo make_url('home');?>">Home</a>&nbsp;&raquo;&nbsp;<a class="a4" href="<?php echo make_url('gallery');?>">Gallery</a>&nbsp;&raquo;&nbsp;</div><br/>
						   <div class="about_pre2">
				<p>
						
								<?php if(count($photos)): $sr=1;?>
									<?php foreach ($photos as $k=>$v):?>							
									<?php $image=$v->image;?>
									<?php $gid=$v->id;?>
										<div class="picpanel2_gallery">
											<div class="pic1_gallery"  style="float: left; width: 233px;">
												<div style="width:220px; height: 180px;  overflow: hidden;  padding-left: 25px; width: 220px;">	
												<?php if($image!=''):?>													
													<div class="photo1" style="min-height:130px;" > <a href="<?php echo get_large('gallery', $image);?>"><img src="<?php echo get_thumb('gallery', $image);?>" border="0" title="click on the image to enlarge it"  width="172px;"/></a>													
													</div>	
													<div class="gallery_caption1"><?php if($v->caption!=''): echo $v->caption;  else: echo "Name Not Define"; endif;?></div>													
												<?php else:?>
												 <img src="<?php echo DIR_WS_SITE_GRAPHIC?>image.jpg" border="0" width="200px"    />
												<?php endif;?>
												</div>
											</div >
										  
										</div>
									<?php endforeach;?>
									<?php else: ?>
									<img src="<?php echo DIR_WS_SITE_GRAPHIC?>image.jpg" border="0" width="200px"    />
								<?php endif;?>
						</div><br/>
						 <?php if($query->TotalPages>1):?>
						<div class="paging"><?php echo PageControl_front($query->PageNo, $query->TotalPages, $query->TotalRecords, 'photos', '', 2, '', '', '');?></div>
						<?php else:?>
						<?php endif;?>
				</p>
		<br/>
		<div style="clear:both"></div>


      </div>
    </div>
	
	<!-- footer Hare -->	
<?php
include_once(DIR_FS_SITE_TEMPLATE_INC.'footer.php');
?>    
  </div>
</body>
</html>
