<?php 
$issue=new query('event');
$issue->Where="where is_active='1' order by event_date_show";
$issue->PageNo=isset($_GET['p'])?$_GET['p']:0;
$issue->AllowPaging=true;
$issue->DisplayAll();
$fune=array();

   if($issue->GetNumRows()):
	while($object =$issue->GetObjectFromRecord()):
		$fune[]=$object;
	endwhile;
	else:
	
	
endif; 
?>
