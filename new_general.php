<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
		  
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';
		  	
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

		main_menu();

$user_info=get_user_info($link,$_SESSION['login']);
//print_r($user_info);
$authorization=explode(',',$user_info['authorization']);
//print_r($authorization);
if(in_array('readonly',$authorization)){echo 'Excess denied';exit(0);}


if($_POST['action']=='new_general')
{
	get_data($link);
}
elseif($_POST['action']=='insert')
{
	$sample_id=save_insert($link);
	view_sample($link,$sample_id);
}

//////////////user code ends////////////////
tail();

//echo '<pre>';print_r($_POST);echo '</pre>';

//////////////Functions///////////////////////


?>
