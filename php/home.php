<?php 

$event=new query('event');
$event->Where="where is_active='1' order by event_date_show DESC";
$event->PageNo=isset($_GET['p'])?$_GET['p']:1;
$event->PageSize=2;
$event->AllowPaging=true;

$event->DisplayAll();
	
$mission=get_object('content','167');
$endorsement=get_object('content','168');
$polling=get_object('content','169');


?>
