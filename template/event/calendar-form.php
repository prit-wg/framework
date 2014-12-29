<form action="<?php echo make_url('events-calendar')?>" method="GET">
	                   	<div style="height:auto;padding:31px 3px 10px 3px;margin:10px 0px 10px 0px;">
		                                   <?php 
                                                   $next_month=add_single_zero_if_needed($month+1);
                                                   $next_year=$year+1;
                                                   $prev_month=add_single_zero_if_needed($month-1);
                                                   $prev_year=$year-1;
                                                   ?>
		                   	<div id="filters">
		                   		 
		                   		 <div id="prev_month"> 
		                   		    <?php if($month=='01'):?>
                                                      <a title="December" href="<?php echo make_url('events-calendar','month=12'.'&year='.$prev_year)?>"></a>
                                                       <?php else:?>
                                                      <a title="<?php echo $month_list[$prev_month]?>" href="<?php echo make_url('events-calendar','month='.$prev_month.'&year='.$year)?>"></a> 
                                                    <?php endif;?>	
		                   		</div>
                                                <span id="display_month">
                                                    
                                                    <?php echo $month_list[$month];?>
                                                    
                                                </span>
                                                <div id="change_year">
		                   			<select name="year" class="year_bak" onchange="this.form.submit();">
		                   				<?php echo expire_year(6, $year);?>
		                   			</select>
		                   			
		                   		</div>
                                                <div id="next_month">
                                                     <?php if($month=='12'):?>
                                                      <a title="January" href="<?php echo make_url('events-calendar','month=01'.'&year='.$next_year)?>"></a>
                                                       <?php else:?>
                                                      <a title="<?php echo $month_list[$next_month]?>" href="<?php echo make_url('events-calendar','month='.$next_month.'&year='.$year)?>"></a> 
                                                      <?php endif;?>
		                   		</div>
                                                <input type="hidden" name="month" value="<?php echo $month?>" />  
                                                
		                   		<input type="hidden" name="page" value="events-calendar" />
		                   	</div>
	                   	</div>
                           
</form>
<div style="clear:both;"></div>