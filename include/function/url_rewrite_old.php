<?php 


function make_url($page, $query=NULL){
		global $conf_rewrite_url;
		parse_str($query, $string);
		if(isset($conf_rewrite_url[strtolower($page)]))
			return _makeurl($page, $string);
		else
			return DIR_WS_SITE.'?page='.$page.'&'.$query;
}

function load_url(){
		global $conf_rewrite_url;
		$prefix='/c5/gfw/';		
 		$URL = $_SERVER['REQUEST_URI'];
		if(strpos($URL, '?')===false):
			$string=substr($URL, -(strlen($URL)-strlen($prefix)));
			$string_parts=explode('/', $string);
			$url_array=array_flip($conf_rewrite_url);
			/*print_r($url_array);*/
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
		  case 'content':
				if(isset($string['id'])):
					 $object=get_object('content', $string['id']);
					 return DIR_WS_SITE.'content/'.$object->urlname;
				endif;
				break;
		 case 'visit':
				 if(isset($string['id'])):
					 $object=get_object('content', $string['id']);
					 return DIR_WS_SITE.'visit/'.$object->urlname;
				else:
					 return DIR_WS_SITE.'visit';
				endif;
                                break;
		 case 'business':
				 if(isset($string['id'])):
					 $object=get_object('content', $string['id']);
					 return DIR_WS_SITE.'business/'.$object->urlname;
				else:
					 return DIR_WS_SITE.'business';
				endif;
                                break;
		 case 'relocate':
				 if(isset($string['id'])):
					 $object=get_object('content', $string['id']);
					 return DIR_WS_SITE.'relocate/'.$object->urlname;
				else:
					 return DIR_WS_SITE.'relocate';
				endif;
                                break;
		 case 'residents':
				 if(isset($string['id'])):
					 $object=get_object('content', $string['id']);
					 return DIR_WS_SITE.'residents/'.$object->urlname;
				else:
					 return DIR_WS_SITE.'residents';
				endif;
		                break; 
                 case 'conventions':
				 if(isset($string['id'])):
					 $object=get_object('content', $string['id']);
					 return DIR_WS_SITE.'conventions/'.$object->urlname;
				else:
					 return DIR_WS_SITE.'conventions';
				endif;
		                break; 
                 case 'living':
				 if(isset($string['id'])):
					 $object=get_object('content', $string['id']);
					 return DIR_WS_SITE.'living/'.$object->urlname;
				else:
					 return DIR_WS_SITE.'living';
				endif;
		                break; 
                 case 'age_friendly':
				 if(isset($string['id'])):
					 $object=get_object('content', $string['id']);
					 return DIR_WS_SITE.'age-friendly/'.$object->urlname;
				else:
					 return DIR_WS_SITE.'age-friendly';
				endif;
		                break;                
                 case 'news':
				if(isset($string['p'])):
                                      
					return DIR_WS_SITE.'news/'.$string['p'];
				else:
					return DIR_WS_SITE.'news';
				endif;
				break;
		 case 'news-detail':
				if(isset($string['news_id'])):
					 $object=get_object('news', $string['news_id']);
					return DIR_WS_SITE.'newsitem/'.$object->urlname;
				else:
					 return DIR_WS_SITE.'newsitem';
				endif;
                                break;
                 case 'event':
				if(isset($string['p'])):
                                      
					return DIR_WS_SITE.'events/'.$string['p'];
				else:
					return DIR_WS_SITE.'events';
				endif;
				break;
                 case 'events-calendar':
				if(isset($string['p'])):
                                      
					return DIR_WS_SITE.'events-calendar/'.$string['p'];
				else:
					return DIR_WS_SITE.'events-calendar';
				endif;
				break;               
		 case 'event-detail':
				if(isset($string['event_id'])):
					 $object=get_object('event', $string['event_id']);
					return DIR_WS_SITE.'event/'.$object->urlname;
				else:
					 return DIR_WS_SITE.'event';
				endif;
                                break;  
                 case 'category':
				if(isset($string['msg'])):
                                      
					return DIR_WS_SITE.'business-directories/'.$string['msg'];
				else:
                                       
                                             return DIR_WS_SITE.'business-directories';
                                        
				endif;
				break;  
                 case 'directory':
                               if(isset($string['bid'])):
					 $object=get_object('business_category', $string['bid']);
                                     if(isset($string['p'])):
						return DIR_WS_SITE.'business-directory/'.$object->urlname.'/'.$string['p'];
                                     else:
					return DIR_WS_SITE.'business-directory/'.$object->urlname;
                                     endif;  
				else:
					 return DIR_WS_SITE.'business-directory';
				endif;
                                break; 
                 case 'directory_detail':
				if(isset($string['dir_id'])):
					 $object=get_object('directory', $string['dir_id']);
					return DIR_WS_SITE.'directory/'.$object->urlname;
				else:
					 return DIR_WS_SITE.'directory';
				endif;
                                break;
                 case 'submit_business':
				if(isset($string['p'])):
                                      
					return DIR_WS_SITE.'submit-your-business/'.$string['p'];
				else:
					return DIR_WS_SITE.'submit-your-business';
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
                 case 'council_videos':
				if(isset($string['p'])):
                                      
					return DIR_WS_SITE.'council-videos/'.$string['p'];
				else:
					return DIR_WS_SITE.'council-videos';
				endif;
				break;   
                 case 'video-detail':
				if(isset($string['video_id'])):
					 $object=get_object('videos', $string['video_id']);
					return DIR_WS_SITE.'council-video/'.$object->urlname;
				else:
					 return DIR_WS_SITE.'council-video';
				endif;
                                break;   
                 case 'photos':
				if(isset($string['p'])):
                                      
					return DIR_WS_SITE.'galleries/'.$string['p'];
				else:
					return DIR_WS_SITE.'galleries';
				endif;
				break;   
                 case 'photos-photos':
				if(isset($string['gallery_id'])):
					 $object=get_object('gallery', $string['gallery_id']);
                                      
                                        if(isset($string['p'])):
						return DIR_WS_SITE.'gallery/'.$object->urlname.'/'.$string['p'];
                                       
                                         else:
					        return DIR_WS_SITE.'gallery/'.$object->urlname;
                                       endif;
				else:
					 return DIR_WS_SITE.'gallery';
				endif;
                                break; 
                case 'faqs':
				if(isset($string['p'])):
                                      
					return DIR_WS_SITE.'website-faq/'.$string['p'];
				else:
					return DIR_WS_SITE.'website-faq';
				endif;
				break; 
               case 'virtual_tour':
				if(isset($string['p'])):
                                      
					return DIR_WS_SITE.'virtual-tour/'.$string['p'];
				else:
					return DIR_WS_SITE.'virtual-tour';
				endif;
				break;
               case 'contact-us':
				if(isset($string['msg'])):
                                      
					return DIR_WS_SITE.'contact-us/'.$string['msg'];
				else:
					return DIR_WS_SITE.'contact-us';
				endif;
				break;  
               case 'jobposting':
				if(isset($string['p'])):
                                      
					return DIR_WS_SITE.'job-postings/'.$string['p'];
				else:
					return DIR_WS_SITE.'job-postings';
				endif;
				break;   
               case 'job_detail':
				if(isset($string['jid'])):
					 $object=get_object('jobposting', $string['jid']);
					return DIR_WS_SITE.'job-posting/'.$object->urlname;
				else:
					 return DIR_WS_SITE.'job-posting';
				endif;
                                break;  
              case 'interactive-map':
				if(isset($string['msg'])):
                                      
					return DIR_WS_SITE.'interactive-town-map/'.$string['msg'];
				else:
					return DIR_WS_SITE.'interactive-town-map';
				endif;
				break;                  
		default: break;
	}
}

function _load($page, $string_parts){
	global $conf_rewrite_url;
	switch($page){
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
                 case 'visit':
				  if(count($string_parts)==2):
					 $_REQUEST['page']='visit';
					 $object=get_object_by_col('content', 'urlname', $string_parts['1']);
					 $_GET['id']=$object->id;
				  else:
					 $_REQUEST['page']='visit';
				  endif;
				  break;
                 case 'relocate':
				  if(count($string_parts)==2):
					 $_REQUEST['page']='relocate';
					 $object=get_object_by_col('content', 'urlname', $string_parts['1']);
					 $_GET['id']=$object->id;
				  else:
					 $_REQUEST['page']='relocate';
				  endif;
				  break;
		 case 'residents':
				  if(count($string_parts)==2):
					 $_REQUEST['page']='residents';
					 $object=get_object_by_col('content', 'urlname', $string_parts['1']);
					 $_GET['id']=$object->id;
				  else:
					 $_REQUEST['page']='residents';
				  endif;
				  break;
		 case 'business':
				  if(count($string_parts)==2):
					 $_REQUEST['page']='business';
					 $object=get_object_by_col('content', 'urlname', $string_parts['1']);
					 $_GET['id']=$object->id;
				  else:
					 $_REQUEST['page']='business';
				  endif;
				  break;
                  case 'conventions':
				  if(count($string_parts)==2):
					 $_REQUEST['page']='conventions';
					 $object=get_object_by_col('content', 'urlname', $string_parts['1']);
					 $_GET['id']=$object->id;
				  else:
					 $_REQUEST['page']='conventions';
				  endif;
				  break; 
                  case 'living':
				  if(count($string_parts)==2):
					 $_REQUEST['page']='living';
					 $object=get_object_by_col('content', 'urlname', $string_parts['1']);
					 $_GET['id']=$object->id;
				  else:
					 $_REQUEST['page']='living';
				  endif;
				  break; 
                  case 'age_friendly':
				  if(count($string_parts)==2):
					 $_REQUEST['page']='age_friendly';
					 $object=get_object_by_col('content', 'urlname', $string_parts['1']);
					 $_GET['id']=$object->id;
				  else:
					 $_REQUEST['page']='age_friendly';
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
                 case 'news-detail':
                        if(count($string_parts)==2):
                            $object=get_object_by_col('news', 'urlname', urldecode($string_parts['1']));
                            $_REQUEST['page']='news-detail';
                            $_GET['news_id']=$object->id;
                        else:
                            $object=get_object_by_col('news', 'urlname', urldecode($string_parts['1']));
                            $_REQUEST['page']='news-detail';
                            $_GET['news_id']=$object->id;
                            $_GET['p']=$string_parts['2'];
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
                 case 'events-calendar':
                          if(count($string_parts)==2):
                             $_REQUEST['page']='events-calendar';
                             $_GET['p']=$string_parts['1'];
                          else:
                             $_REQUEST['page']='events-calendar';
                          endif;
                          break;         
                 case 'event-detail':
                        if(count($string_parts)==2):
                            $object=get_object_by_col('event', 'urlname', urldecode($string_parts['1']));
                            $_REQUEST['page']='event-detail';
                            $_GET['event_id']=$object->id;
                        else:
                            $object=get_object_by_col('event', 'urlname', urldecode($string_parts['1']));
                            $_REQUEST['page']='event-detail';
                            $_GET['event_id']=$object->id;
                            $_GET['p']=$string_parts['2'];
                        endif;
			break; 
                case 'category':
                          if(count($string_parts)==2):
                             $_REQUEST['page']='category';
                             $_GET['msg']=$string_parts['1'];
                          else:
                             $_REQUEST['page']='category';
                          endif;
                          break; 
                case 'directory':
                        if(count($string_parts)==2):
                            $object=get_object_by_col('business_category', 'urlname', urldecode($string_parts['1']));
                            $_REQUEST['page']='directory';
                            $_GET['bid']=$object->id;
                        else:
                            $object=get_object_by_col('business_category', 'urlname', urldecode($string_parts['1']));
                            $_REQUEST['page']='directory';
                            $_GET['bid']=$object->id;
                            $_GET['p']=$string_parts['2'];
                        endif;
			break; 
                case 'directory_detail':
                        if(count($string_parts)==2):
                            $object=get_object_by_col('directory', 'urlname', urldecode($string_parts['1']));
                            $_REQUEST['page']='directory_detail';
                            $_GET['dir_id']=$object->id;
                        else:
                            $object=get_object_by_col('directory', 'urlname', urldecode($string_parts['1']));
                            $_REQUEST['page']='directory_detail';
                            $_GET['dir_id']=$object->id;
                            $_GET['p']=$string_parts['2'];
                        endif;
			break;  
                case 'submit_business':
                          if(count($string_parts)==2):
                             $_REQUEST['page']='submit_business';
                             $_GET['p']=$string_parts['1'];
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
                case 'council_videos':
                          if(count($string_parts)==2):
                             $_REQUEST['page']='council_videos';
                             $_GET['p']=$string_parts['1'];
                          else:
                             $_REQUEST['page']='council_videos';
                          endif;
                          break;  
                case 'video-detail':
                        if(count($string_parts)==2):
                            $object=get_object_by_col('videos', 'urlname', urldecode($string_parts['1']));
                            $_REQUEST['page']='video-detail';
                            $_GET['video_id']=$object->id;
                        else:
                            $object=get_object_by_col('videos', 'urlname', urldecode($string_parts['1']));
                            $_REQUEST['page']='video-detail';
                            $_GET['video_id']=$object->id;
                            $_GET['p']=$string_parts['2'];
                        endif;
			break; 
                case 'photos':
                          if(count($string_parts)==2):
                             $_REQUEST['page']='photos';
                             $_GET['p']=$string_parts['1'];
                          else:
                             $_REQUEST['page']='photos';
                          endif;
                          break;  
                case 'photos-photos':
                        if(count($string_parts)==2):
                            $object=get_object_by_col('gallery', 'urlname', urldecode($string_parts['1']));
                            $_REQUEST['page']='photos-photos';
                            $_GET['gallery_id']=$object->id;
                       
                        else:
                            $object=get_object_by_col('gallery', 'urlname', urldecode($string_parts['1']));
                            $_REQUEST['page']='photos-photos';
                            $_GET['gallery_id']=$object->id;
                            $_GET['p']=$string_parts['2'];
                        endif;
			break;
                case 'faqs':
                          if(count($string_parts)==2):
                             $_REQUEST['page']='faqs';
                             $_GET['p']=$string_parts['1'];
                          else:
                             $_REQUEST['page']='faqs';
                          endif;
                          break; 
                case 'virtual_tour':
                          if(count($string_parts)==2):
                             $_REQUEST['page']='virtual_tour';
                             $_GET['p']=$string_parts['1'];
                          else:
                             $_REQUEST['page']='virtual_tour';
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
                case 'jobposting':
                          if(count($string_parts)==2):
                             $_REQUEST['page']='jobposting';
                             $_GET['p']=$string_parts['1'];
                          else:
                             $_REQUEST['page']='jobposting';
                          endif;
                          break;  
                case 'job_detail':
                        if(count($string_parts)==2):
                            $object=get_object_by_col('jobposting', 'urlname', urldecode($string_parts['1']));
                            $_REQUEST['page']='job_detail';
                            $_GET['jid']=$object->id;
                        else:
                            $object=get_object_by_col('jobposting', 'urlname', urldecode($string_parts['1']));
                            $_REQUEST['page']='job_detail';
                            $_GET['jid']=$object->id;
                            $_GET['p']=$string_parts['2'];
                        endif;
			break; 
                case 'interactive-map':
                          if(count($string_parts)==2):
                             $_REQUEST['page']='interactive-map';
                             $_GET['msg']=$string_parts['1'];
                          else:
                             $_REQUEST['page']='interactive-map';
                          endif;
                          break;           
		default:break;
	}
}

?>