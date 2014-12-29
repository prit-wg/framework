<?php
$events=array();
$id=isset($_GET['id'])?$_GET['id']:1;
/*
$event_id='';

if(isset($_GET['event_id'])):
  	$event_id=$_GET['event_id'];
	$events=get_events_bycat($event_id);
else:
	$events=get_today_events();
endif;
*/

/*filters*/
(isset($_GET['year']))?$year=$_GET['year']:$year=date("Y");
(isset($_GET['month']))?$month=$_GET['month']:$month=date("m");

$month_list=array('01'=>'January', '02'=>'February', '03'=>'March', '04'=>'April', '05'=>'May', '06'=>'June', '07'=>'July', '08'=>'August', '09'=>'September', '10'=>'October', '11'=>'November', '12'=>'December');
        
$day=date("w", mktime("0", "0", "0", $month, 1, $year));
$days=date("t", mktime("0", "0", "0", $month, 1, $year));
$events=get_events_bycatmy($year, $month);

//print_r($events);exit;

$eve=array();

foreach ($events as $k=>$v):
	if($v->eday):
		for($i=$v->day;$i<=$v->eday;$i++){
				$eve[$i][]=$v;
		}
	else:
		$eve[$v->day][]=$v;
	endif;
endforeach;
//print_r($eve);exit;


/*show events of a particular date*/
if(isset($_GET['id'])):
 $eventss=get_events_bycatmy($year, $month);
        $eves=array();
       /* foreach ($eventss as $k=>$v):
            if($v->day==$id)
                $eves[]=$v;
        endforeach;
        */
        foreach ($eventss as $k=>$v):
	if($v->eday):
		for($i=$v->day;$i<=$v->eday;$i++){
				$eves[$i][]=$v;
		}
	else:
		$eves[$v->day][]=$v;
	endif;
endforeach;
endif;      

/*SEO information*/
$content=add_metatags("Events Calendar",'Town of Grand Falls-Windsor ,P.O. Box 439, 5 High Street,Grand Falls-Windsor, NL A2A 2J8 ,709-489-0407',"This page containing  Events-Calender of Grand Falls-Windsor Also See our events calendar for full details of upcoming community events and gatherings.");

?>

