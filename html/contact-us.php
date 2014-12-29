<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Keith Ordeneaux > Contact Us</title>
<?php css($array=array('style','ui-lightness/jquery-ui-1.8.16.custom','themes/default/default','themes/pascal/pascal','themes/orman/orman','nivo-slider'));?>
<?php js($array=array('jquery.min','flux.min','jquery-1.6.2.min','jquery-1.6.1.min','jquery.nivo.slider.pack','jq-plugins/resettable','jquery.validate'));?>
 <script type="text/javascript">
            $(window).load(function() {
                            $('#slider1').nivoSlider();
                    });
            </script>
<script type="text/javascript">
			$("document").ready(function() {
				$("form#form1 input").resettable();
				$("form#form1 textarea").resettable();
			});
		</script>	
<script>
$(document).ready(function() {
/* form validation */
$('#form1').validate({
highlight: function(element, errorClass) {
$(element).css({ borderWidth: '1px',borderColor: '#F7023B',borderStyle: 'solid' });
}
});
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
<div class="txt" id="about_top_s"><span class="greenlar_heading">Take Action</span><br />
<font color="red"><?php display_form_error();
if(isset($error1)): echo $error1; endif;?>	
</font>	
      <br />	
	  <form id="form1" name="form1" method="post" action="<?php echo make_url('contact-us')?>" onsubmit="return validateForm()">	
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="675"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td class="input"><input name="First_Name" type="text" class="input_inn" value="First Name"   /></td>
                  <td>&nbsp;</td>
                  <td class="input"><input name="Last_Name" type="text" class="input_inn"  value="Last Name" /></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td class="input"><input name="Address" type="text" class="input_inn"  value="Address" /></td>
                  <td>&nbsp;</td>
                  <td class="input"><input name="City" type="text" class="input_inn"  value="City" /></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td class="input"><input name="State" type="text" class="input_inn" value="State" /></td>
                  <td>&nbsp;</td>
                  <td class="input"><input name="Zip_Code" type="text" class="input_inn"  value="Zip Code" /></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td class="input"><input name="Email_Address" type="text" class="input_inn"  value="Email Address" /></td>
                  <td>&nbsp;</td>
                  <td class="input"><input name="Phone_Number" type="text" class="input_inn" value="Phone Number" /></td>
                </tr>
              </table></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>Thank you for your support, please let us know how you would like to help!<br />
			  <input type="hidden" name="How to Help" value=""  />
                <input type="checkbox"  name="Recruit your family and friends."  />
                Recruit your family and friends.<br />
                <input type="checkbox"  name="Write a letter to the editor."  />
                Write a letter to the editor.<br />
                <input type="checkbox"  name="Put up a yard sign." />
                Put up a yard sign.<br />
                <input type="checkbox"  name="Volunteer at the campaign HQ." />
                Volunteer at the campaign HQ.<br />
                <input type="checkbox"  name="Help register voters."/>
                Help register voters.<br />
                <input type="checkbox"  name="Go door to door." />
                Go door to door.<br />
                <input type="checkbox"  name="Host a coffee at your house." />
                Host a coffee at your house.<br />
                <input type="checkbox"  name="Make phone calls."/>
              Make phone calls. </td>
              <td>&nbsp;</td>
            </tr>
            <tr style="line-height:10px;">
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td colspan="2">
			  <div class="captcha" style="color:#646464;">
				<div>
					<div style="width:100px;float:left;line-height:40px;height:40px">
						<img src="<?php echo DIR_WS_SITE.'include/function/get_captcha.php';?>" style="border:none;float:left;"  align="absmiddle"/>
						<div style="float:left;width:20px; height:28px;">&nbsp; = &nbsp;</div>
					</div>
					<input class="req1"  id="input1" title="Please enter validation code"  value="" type="text" name="captcha" style="float:left;" /></div>
				</div><br/>
			  </td>
              
            </tr>
            <tr>
              <td><br/> <input type="hidden" name="submit" value="submit"/>
			  <input type="image" src="<?php echo DIR_WS_SITE_GRAPHIC?>submi.jpg" name ="submit" value="submit" width="115" height="53" border="0" onsubmit="return validateForm()" /></td></td>
              <td>&nbsp;</td>
            </tr>
          </table>
		  </form>
		  </div>
		          
          
            <div class="atxtsmall" id="about_tab_blu_c" >Find Me Online</div>			
            
         
          <div id="about_tab_blusha"><img src="<?php echo DIR_WS_SITE_GRAPHIC?>blu_bot_s.jpg" /></div>  
          <div class="txt" id="about_txt">
            <div align="center">
			<a href="http://www.facebook.com/KeithForPearland"><img src="<?php echo DIR_WS_SITE_GRAPHIC?>fb.jpg"  border="0" /></a>
			<a href="http://twitter.com/KeithForPearland"><img src="<?php echo DIR_WS_SITE_GRAPHIC?>t.jpg"  hspace="60" border="0" /></a>
			<a href="http://www.youtube.com/keithforpearland"><img src="<?php echo DIR_WS_SITE_GRAPHIC?>you.jpg"  border="0" /></a><br />
              <br />
              <br />
            </div>
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
