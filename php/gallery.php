<?php
$query= new query('gallery');
$query->Where="where is_active='1' order by position";
$query->PageNo=isset($_GET['p'])?$_GET['p']:1;
$query->PageSize=30;
$query->AllowPaging=true;
$query->DisplayAll();
$galleries=array();
if($query->GetNumRows()):
	while($object =$query->GetObjectFromRecord()):
		$galleries[]=$object;
	endwhile;
endif;
?>