       <script type="text/javascript">
            $(window).load(function() {
                            $('#slider1').nivoSlider();
                    });
            </script> 
 <div id="header_top">
    <div id="logo"><a href="<?php echo make_url('home') ?>"><img class="logo_image" src="<?php echo DIR_WS_SITE_GRAPHIC?>logo.png"/></a></div>
    <div id="header_top_r">
      <div id="header_inn">
        <div id="header_inn1">
          <div style="float: left; width: 200px; padding-top: 5px; font-weight: bold;"><span class="call" style="float:right; ">Call Us Now!&nbsp;&nbsp;</span><br/>
		  <span class="call" style="float: left; text-align: right; padding-top: 6px; width:200px;">I want to hear from you&nbsp;&nbsp;</span></div>
            
			
			<div style="float: right; " >
			<span style="float:left; width:40px;"><img class="phone" src="<?php echo DIR_WS_SITE_GRAPHIC?>phone.png" hspace="6" style="padding-bottom:3px;" align="absmiddle"/></span><span class="call2">&nbsp;<?php echo PHONE_NUMBER; ?></span>
			<br/><span style="float:left;"><img class="phone" src="<?php echo DIR_WS_SITE_GRAPHIC?>owner.png" hspace="5" style="padding-bottom:3px; height:32px; width:30px; padding-right:5px;" align="absmiddle"/></span> 
			<span class="call" style="line-height:25px;"><a class= "underline" href="mailto:keith@keithforpearland.com" style="color: rgb(255, 255, 255); font-weight: bold;"> keith@keithforpearland.com </a></span></div>
		</div>
        <div class="blutab" id="header_inn2">
	
         <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="90" ><div align="center"><a href="<?php echo make_url('home') ?>">Home</a></div></td>
              <td><div align="center">|</div></td>
              <td width="90"><div align="center"><a href="<?php echo make_url('about') ?>">About</a></div></td>
              <td><div align="center">|</div></td>
              <td width="142" class="blutabl"><div align="center"><a href="<?php echo make_url('principels') ?>">Basic Principles</a></div></td>
              <td><div align="center">|</div></td>
              <td width="90"><div align="center"><a href="<?php echo make_url('programs') ?>">Program</a></div></td>
              <td><div align="center">|</div></td>
			  <td width="90"><div align="center"><a href="<?php echo make_url('events-calendar') ?>">Events</a></div></td>			  
			  <td><div align="center">|</div></td>
			  <td width="90"><div align="center"><a href="<?php echo make_url('gallery') ?>">Gallery</a></div></td>
			  
			  
              
            </tr>
          </table>
		
        </div>
      </div>
    </div>
  </div>
  <div id="bod">
    <div id="header_img"><div id="slider">	   
           <div class="picture theme-default" >
       <div id="slider1" class="nivoSlider">
       <?php
                           $query1= new query('slide');
                           $query1->Where="where slideshow_id='4' and is_active='1'";
                           $query1->DisplayAll();
                           $photos1=array();
                           if($query1->GetNumRows()):
                                     while($object1 =$query1->GetObjectFromRecord()):
                                            $photos1[]=$object1;
                                     endwhile;
                           endif;
                        ?>
                        <?php if(count($photos1)):?>
                       <?php foreach ($photos1 as $k=>$v):?>
                        <?php $image=$v->image;?>
         
                        <img width="1001px" height="358px" src="<?php echo get_large('gallery', $image);?>"   />
                         <?php endforeach;?>
                        <?php endif;?>  
                                 
                             </div>
                          </div>
     
  </div>
 
    </div>
    <div id="header_sho"><img class="header_sho_img" src="<?php echo DIR_WS_SITE_GRAPHIC?>sha.jpg" /></div>