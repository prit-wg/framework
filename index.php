<?php

/* include basic config file */
include_once("include/config/config.php");
load_url();
/* website statistics. */
if (!isset($_SESSION['visitor'])):
    $_SESSION['visitor'] = 1;
    $qu = new query('web_stat');
    $qu->Data['ip_address'] = $_SERVER['REMOTE_ADDR'];
    $qu->Insert();
endif;

/* include basic functions */
$include_functions = array('video', 'date', 'email', 'file_handling', 'http', 'image_manipulation', 'paging', 'news', 'testimonials', 'recaptchalib', 'content', 'footer', 'gallery', 'cart', 'login', 'order', 'category', 'navigation', 'calender', 'database', 'gfw', 'url_rewrite');
include_functions($include_functions);

/* FOR URL REWRITE
 */

/* if(count($_GET)):
  prepare_query($_SERVER['QUERY_STRING']);
  endif;
 */


/* website statistic recorded. */
$page = isset($_REQUEST['page']) ? $_REQUEST['page'] : "home";

if (file_exists(DIR_FS_SITE_PHP . "$page.php"))
    require_once(DIR_FS_SITE_PHP . "$page.php");

if (file_exists(DIR_FS_SITE_HTML . "$page.php"))
    require_once(DIR_FS_SITE_HTML . "$page.php");
else
    require_once(DIR_FS_SITE_HTML . "404.php");
?>
