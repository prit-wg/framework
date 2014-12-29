<form action="<?php echo make_url('events-calendar')?>" method="GET">
	                   	<div style="height:auto;padding:10px 3px 10px 3px;margin:10px 0px 10px 0px;">
		                   
		                   	<div id="filters">
		                   		
		                   		<div id="month"> 
		                   			<select name="month" class="Textbox">
		                   				<?php echo expire_month($month);?>
		                   			</select>
		                   			
		                   		</div>
                                                <div id="year">
		                   			<select name="year" class="Textbox">
		                   				<?php echo expire_year(20, $year);?>
		                   			</select>
		                   			
		                   		</div>
                                               <div id="cat">
			                   		<input  type="submit" name="submit" value="&nbsp;&nbsp;Go&nbsp;&nbsp;" />
		                   		</div>
		                   		
		                   		<input type="hidden" name="page" value="events-calendar" />
		                   	</div>
	                   	</div>
                              <!--  <div class="colorss">
		                   		<div class="firstcolor">
                                                    <div class="istname">Event:</div><div class="secondname"><div style="width:20px; height:20px;background:#5F93C4;border:1px solid black;"></div></div>
		                   		</div>
		                   		
		                   		<div class="secondcolor"> 
                                                    <div class="firstname">No Event:</div><div class="secondname"><div style="width:20px; height:20px;background:#e3e3e3;;border:1px solid black;"></div></div>
		                   		</div>
                                                
		                   		
		             </div>-->
</form>
<div style="clear:both;"></div>