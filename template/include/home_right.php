 <div id="bod_right">
 
 <div id="about_top_s"><span class="greenlar_heading">My Mission</span></div>

<?php if($mission->is_preview==0): ?>

		<?php echo html_entity_decode ($mission->page);?>
		<?php 
		else: 
		echo "<p>Page will be comming soon<p>"; 
		endif;?> 

</div>	