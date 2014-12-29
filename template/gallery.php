<div class="pic1_gallery" >
<div class="gallery2">
  <div style="height: 150px;  overflow: hidden;  padding-left: 25px; width: 220px;">
	<?php if($image):?>
        <a  href="<?php echo make_url('gallery_detail', 'gallery_id='.$gid);?>"><img src="<?php echo get_medium('gallery', $image);?>" border="0" width="200px" /></a>
    <?php else:?>
        <a class="underline" href="<?php echo make_url('gallery_detail', 'gallery_id='.$gid);?>"><img src="<?php echo DIR_WS_SITE_GRAPHIC?>image.jpg" border="0" width="200px" /></a>
    <?php endif;?>
  </div>	
</div >
    <div class="gallery_caption"><a class="underline" style="color: rgb(86, 81, 207); font-weight: bold;" href="<?php echo make_url('gallery_detail', 'gallery_id='.$gid);?>"><?php echo $caption; ?></a></div>
</div>
	