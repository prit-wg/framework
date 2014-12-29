<?php 
$conf_rewrite_url = array(
  
    'content' => 'page',  
	'home' => 'home',
	'about' => 'about-me',	
	'principels' => 'principles',	
	'programs' => 'programs',
	'contribute' => 'contribute',	
	'privacy' => 'privacy-policy',
	'mission' => 'mission',	
	'endorsement' => 'endorsements',	
	'polling' => 'polling-areas',
	'events' => 'events',
	'issue' => 'issue',	
	'events-calendar' => 'events-calendar',		
	'event_detail' => 'event-detail',
	'issue_detail' => 'issue-detail',
	'contact-us' => 'contact-us',
	'gallery'=>'gallery',
	'gallery_detail' => 'gallery-detail',
	
	
	
	
	'links' => 'links',

	'sitemap' => 'site-map',
	'legal' => 'legal',

   
); 


function make_url($page, $query=NULL){
		global $conf_rewrite_url;
		parse_str($query, $string);
		if(isset($conf_rewrite_url[strtolower($page)]))
			return _makeurl($page, $string);
		else
			return DIR_WS_SITE.'?page='.$page.'&'.$query;
}

// remove last slash 
function verify_string($string){
    
    if($string!='')
        if(substr($string, -1)=='/')
            return substr($string, 0, strlen($string)-1);
        
    return $string;
}

function load_url(){
		global $conf_rewrite_url;
		$prefix='/keith/';	
 		$URL = $_SERVER['REQUEST_URI'];
		if(strpos($URL, '?')===false):
			$string=substr($URL, -(strlen($URL)-strlen($prefix)));
                        $string=verify_string($string);
			$string_parts=explode('/', $string);
                        $url_array=array_flip($conf_rewrite_url);
			
			if(isset($url_array[$string_parts['0']])){
				_load($url_array[$string_parts['0']], $string_parts);		
			}
		endif;
}

function _makeurl($page, $string){
	
	switch($page){
		  case 'home':
				return DIR_WS_SITE;
				break;
				
		  case'about':
            return DIR_WS_SITE . 'about-me';
                break;	
				
		case'principels':
            return DIR_WS_SITE . 'principles';
            break;	

		case'programs':
            return DIR_WS_SITE . 'programs';
            break;	
			
		case'contribute':
            return DIR_WS_SITE . 'contribute';
            break;	

		case'privacy':
            return DIR_WS_SITE . 'privacy-policy';
            break;				

		case'mission':
            return DIR_WS_SITE . 'mission';
            break;	

		case'endorsement':
            return DIR_WS_SITE . 'endorsements';
            break;	

		case'polling':
            return DIR_WS_SITE . 'polling-areas';
            break;		

		case'events':
            return DIR_WS_SITE . 'events';
            break;	

		case'issue':
            return DIR_WS_SITE . 'issue';
            break;	

		case 'event_detail':
					if (isset($string ['msg'])):
                        if(isset($string['id'])):
							$object=get_object('event', $string['id']);
							if($object->name!=''):                             							
                             return DIR_WS_SITE .'event-detail/'.$object->name.'/'. (urldecode($string['msg']));							 
							else:                            
							 return DIR_WS_SITE.'event-detail/'.'/'. (urldecode($string['msg']));
							endif;
						endif;
					else:
					if(isset($string['id'])):
							$object=get_object('event', $string['id']);
							if($object->name!=''):                             							
                             return DIR_WS_SITE .'event-detail/'.$object->name;							 
							else:                            
							 return DIR_WS_SITE.'event-detail/';
							endif;
						endif;
					endif;	
            break;

		case 'issue_detail':
					if (isset($string ['msg'])):
                        if(isset($string['id'])):
							$object=get_object('news', $string['id']);
							if($object->name!=''):                             							
                             return DIR_WS_SITE .'issue-detail/'.$object->name.'/'. (urldecode($string['msg']));							 
							else:                            
							 return DIR_WS_SITE.'issue-detail/'.'/'. (urldecode($string['msg']));
							endif;
						endif;
					else:
					if(isset($string['id'])):
							$object=get_object('news', $string['id']);
							if($object->name!=''):                             							
                             return DIR_WS_SITE .'issue-detail/'.$object->name;							 
							else:                            
							 return DIR_WS_SITE.'issue-detail/';
							endif;
						endif;
					endif;	
            break;						
			


			case 'content':
				if(isset($string['id'])):
					 $object=get_object('content', $string['id']);
					 return DIR_WS_SITE.'content/'.$object->urlname;
				endif;
				break;

          
               
		 case 'news-detail':
				if(isset($string['news_id'])):
					 $object=get_object('news', $string['news_id']);
					return DIR_WS_SITE.'news/'.$object->urlname;
				else:
					 return DIR_WS_SITE.'news';
				endif;
                                break;
                   case 'news':
				if(isset($string['p'])):
                                      
					return DIR_WS_SITE.'news/'.$string['p'];
				else:
					return DIR_WS_SITE.'news';
				endif;
				break;
                 case 'events-calendar':
				if(count($string)):
                                        return DIR_WS_SITE.'?page=events-calendar&'.http_build_query($string);
				else:
					return DIR_WS_SITE.'events-calendar';
                                endif;
				break; 
				
         case'gallery':
            return DIR_WS_SITE . 'gallery';
            break;	
		
		
		case 'gallery_detail':
            if (isset($string['gallery_id'])):
                $object = get_object('gallery', $string['gallery_id']);
                return DIR_WS_SITE . 'gallery-detail/' . $object->name;
            else:
                return DIR_WS_SITE . 'gallery-detail/';
        endif;	
			
                 case 'event':
				if(isset($string['p'])):
                                      
					return DIR_WS_SITE.'events/'.$string['p'];
				else:
					return DIR_WS_SITE.'events';
				endif;
				break; 
                  

                 case 'links':
				if(isset($string['p'])):
                                      
					return DIR_WS_SITE.'links/'.$string['p'];
				else:
					return DIR_WS_SITE.'links';
				endif;
				break;
                 case 'team':
				if(isset($string['p'])):
                                      
					return DIR_WS_SITE.'contact-the-town/'.$string['p'];
				else:
					return DIR_WS_SITE.'contact-the-town';
				endif;
				break;               
                
                  
                case 'faqs':
				if(isset($string['p'])):
                                      
					return DIR_WS_SITE.'website-faq/'.$string['p'];
				else:
					return DIR_WS_SITE.'website-faq';
				endif;
				break; 
 
               case 'contact-us':
				if(isset($string['msg'])):
                                      
					return DIR_WS_SITE.'contact-us/'.$string['msg'];
				else:
					return DIR_WS_SITE.'contact-us';
				endif;
				break;  
                
 
                 case 'category':
				if(isset($string['msg'])):
                                      
					return DIR_WS_SITE.'business-directory/'.$string['msg'];
				else:
                                       
                                             return DIR_WS_SITE.'business-directory';
                                        
				endif;
				break;                   
		default: break;
	}
}

function _load($page, $string_parts){
	global $conf_rewrite_url;
	switch($page){
	
	
		case 'about':
            $_REQUEST['page'] = 'about';

            break;	
			
			
		case 'principels':
            $_REQUEST['page'] = 'principels';

            break; 

		case 'programs':
            $_REQUEST['page'] = 'programs';

            break;		

		case 'contribute':
            $_REQUEST['page'] = 'contribute';

            break;	

		case 'privacy':
            $_REQUEST['page'] = 'privacy';

            break;				

		case 'mission':
            $_REQUEST['page'] = 'mission';

            break;	
			
		case 'endorsement':
            $_REQUEST['page'] = 'endorsement';

            break;	
			
		case 'polling':
            $_REQUEST['page'] = 'polling';

            break;		

		case 'events':
            $_REQUEST['page'] = 'events';

            break;	

		case 'issue':
            $_REQUEST['page'] = 'issue';

            break;	

		case 'event_detail':
			
			if(count($string_parts)==2):
				$object=get_object_by_col('event', 'name', urldecode($string_parts['1']));
				$_REQUEST['page']='event_detail';
				$_GET['msg'] = $string_parts['1'];
				$_GET['id']=$object->id;
					
			else:
				$object=get_object_by_col('event', 'name',  urldecode($string_parts['1']));
				$object=get_object_by_col('event', 'name', urldecode($string_parts['1']));
				$_REQUEST['page']='event_detail';
				$_GET['id']=$object->id;
				
				
			endif;				
			break;		

		case 'issue_detail':
			
			if(count($string_parts)==2):
				$object=get_object_by_col('news', 'name', urldecode($string_parts['1']));
				$_REQUEST['page']='issue_detail';
				$_GET['msg'] = $string_parts['1'];
				$_GET['id']=$object->id;
					
			else:
				$object=get_object_by_col('news', 'name',  urldecode($string_parts['1']));
				$object=get_object_by_col('news', 'name', urldecode($string_parts['1']));
				$_REQUEST['page']='issue_detail';
				$_GET['id']=$object->id;
				
				
			endif;				
			break;				
			
 
                 case 'home':
                        return DIR_WS_SITE; 
                        break;
	
		 case 'content':
                        if(count($string_parts)==2):
                             $object=get_object_by_col('content', 'urlname', urldecode($string_parts['1']));
                             $_REQUEST['page']='content';
                             $_GET['id']=$object->id;
                        endif;
			break;
               
                 
                 case 'news-detail':
                        if(count($string_parts)==1):
                           
                            $_REQUEST['page']='news';
                            
                        elseif(count($string_parts)==2):
                             if(is_numeric(urldecode($string_parts['1']))):
                                 $_REQUEST['page']='news';
                                 $_GET['p']=$string_parts['1'];
                             else:
                                $object=get_object_by_col('news', 'urlname', urldecode($string_parts['1']));
                                $_REQUEST['page']='news-detail';
                                $_GET['news_id']=$object->id;
                            endif;
                        else:
                            $object=get_object_by_col('news', 'urlname', urldecode($string_parts['1']));
                            $_REQUEST['page']='news-detail';
                            $_GET['news_id']=$object->id;
                            $_GET['p']=$string_parts['2'];
                        endif;
			break; 
                        
                 case 'news':
                          if(count($string_parts)==2):
                             $_REQUEST['page']='news';
                             $_GET['p']=$string_parts['1'];
                          else:
                             $_REQUEST['page']='news';
                          endif;
                          break;
                 case 'events-calendar':
                          if(count($string_parts)==2):
                             $_REQUEST['page']='events-calendar';
                             $_GET['p']=$string_parts['1'];
                          else:
                             $_REQUEST['page']='events-calendar';
                          endif;
                          break;         

                 case 'event':
                          if(count($string_parts)==2):
                             $_REQUEST['page']='event';
                             $_GET['p']=$string_parts['1'];
                          else:
                             $_REQUEST['page']='event';
                          endif;
                          break;        
 
        case 'gallery':
            $_REQUEST['page'] = 'gallery';
			break;
 
       case 'gallery_detail':
            if (count($string_parts) == 2):
                $object = get_object_by_col('gallery', 'name', urldecode($string_parts['1']));
                $_REQUEST['page'] = 'gallery_detail';
                $_GET['gallery_id'] = $object->id;
            else:
                $object = get_object_by_col('gallery', 'name', urldecode($string_parts['1']));
                $_REQUEST['page'] = 'gallery_detail';
                $_GET['gallery_id'] = $object->id;
                $_GET['p'] = $string_parts['2'];
            endif;
            break;	 
                
                        
                case 'submit_business':
                          if(count($string_parts)==2):
                             $_REQUEST['page']='submit_business';
                             $_GET['msg']=$string_parts['1'];
                          else:
                             $_REQUEST['page']='submit_business';
                          endif;
                          break;  
                case 'links':
                          if(count($string_parts)==2):
                             $_REQUEST['page']='links';
                             $_GET['p']=$string_parts['1'];
                          else:
                             $_REQUEST['page']='links';
                          endif;
                          break;
                case 'team':
                          if(count($string_parts)==2):
                             $_REQUEST['page']='team';
                             $_GET['p']=$string_parts['1'];
                          else:
                             $_REQUEST['page']='team';
                          endif;
                          break;          
                
   
                case 'contact-us':
                          if(count($string_parts)==2):
                             $_REQUEST['page']='contact-us';
                             $_GET['msg']=$string_parts['1'];
                          else:
                             $_REQUEST['page']='contact-us';
                          endif;
                          break;  
                
           
		default:break;
	}
}

?>
