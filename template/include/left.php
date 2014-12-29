 <?php 
$news=new query('news');
$news->Where="where is_active='on' order by date_show Desc ";	
$news->PageNo=isset($_GET['p'])?$_GET['p']:1;
$news->PageSize=4;
$news->AllowPaging=true;
$news->DisplayAll();
$a=1;
?> 
	  <!--Issue Hare -->
	  <div id="bod_left">
        <div id="bod_left1"><a href="<?php echo make_url('contribute') ?>"><img src="<?php echo DIR_WS_SITE_GRAPHIC?>cont_tab.jpg" style="border:none;" /></a><br />
        <a href="<?php echo make_url('contact-us') ?>"><img src="<?php echo DIR_WS_SITE_GRAPHIC?>takeaction.jpg" style="border:none;"/></a></div>
        <div class="atxtsmall" id="bod_left2">Issues</div>
        <div id="bod_left3"><img src="<?php echo DIR_WS_SITE_GRAPHIC?>li_sho.jpg" /></div> 
		
        <div id="bod_left4">
			<?php if($news->GetNumRows()):?>
					<?php while($object=$news->GetObjectFromRecord()): ?>
							<span class="arrow"><img src="<?php echo DIR_WS_SITE_GRAPHIC?>arrow.jpg" /></span>
							<span class="txt"><a class= "issue_underline" href="<?php echo make_url('issue_detail','id='.$object->id)?>"><?php echo $object->name; ?></a></span><br />
						<?php if($a<=3): ?>
							<img src="<?php echo DIR_WS_SITE_GRAPHIC?>hr.jpg" vspace="10" />
						<?php else: echo ''; endif; ?>
					<?php $a++;endwhile;
				  else:
				  echo "Sorry, No Record found";
				  endif; ?>
		<br/>
		<div class="all_issue" ><a href="<?php echo make_url('issue')?>"><img src="<?php echo DIR_WS_SITE_GRAPHIC?>view-1.jpg" style="border:none;"/></a></div>
		</div>
        <div id="bod_left5"><img src="<?php echo DIR_WS_SITE_GRAPHIC?>li_bot.jpg" /></div>
      </div>