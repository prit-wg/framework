<?php 
$issue=new query('news');
$issue->Where="where is_active='on' order by date_show Desc";
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
