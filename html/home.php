<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Keith Ordeneaux > Home</title>
<?php css($array=array('style','ui-lightness/jquery-ui-1.8.16.custom','themes/default/default','themes/pascal/pascal','themes/orman/orman','nivo-slider'));?>
<?php js($array=array('flux.min','jquery-1.6.2.min','jquery-ui-1.8.16.custom.min', 'jquery.nivo.slider.pack'));?>



 <script type="text/javascript">
			$(function(){
                          // Tabs
				$('#tabs').tabs();
	
});
		</script>
		

		
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>	
<script>
 $(document).ready(function() {
            $('#youtubevideos').youTubeChannel({ 
                userName: 'keithforpearland', 
                channel: "uploads", 
                hideAuthor: true,
                numberToDisplay: 12,
                linksInNewWindow: true                   
            });
        });            
</script>

       <script type="text/javascript">
            $(window).load(function() {
                            $('#slider1').nivoSlider();
                    });
            </script>		
<script type="text/javascript" src="javascript/youtube.channel.js"></script>
<script type="text/javascript" src="javascript/jquery.youtubeplaylist.js"></script>	

</head>
<body>
<div id="container">
<?php
include_once(DIR_FS_SITE_TEMPLATE_INC.'top.php');
?>
<div id="bod_txt1" style="border-radius: 0 0 0 0;">
<?php
include_once(DIR_FS_SITE_TEMPLATE_INC.'left.php');
?>
<?php
include_once(DIR_FS_SITE_TEMPLATE_INC.'home_right.php');
?>        
      
    </div>
<?php
include_once(DIR_FS_SITE_TEMPLATE_INC.'home_bottom.php');
?>  	
	<!-- footer Hare -->	
<?php
include_once(DIR_FS_SITE_TEMPLATE_INC.'footer.php');
?>    
  </div>
</body>
</html>
