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


		
if($_POST['action']=='copy')
{
	get_copy_data($link);
	list_prototype($link);
}

elseif($_POST['action']=='copy_dbid')
{
	$sample_id=copyy($link,$_POST['from_dbid'],$_POST['to_mrd']);
	view_sample($link,$sample_id);
}

//////////////user code ends////////////////
tail();

//echo '<pre>';print_r($_POST);echo '</pre>';

//////////////Functions///////////////////////



function get_copy_data()
{
	$YY=strftime("%y");
	echo '<form method=post>';
	echo '<div class="basic_form">';
		echo '	<label class="my_label text-danger" for="mrd">From Database ID</label>
				<input id=from_dbid type=number size=13 name=from_dbid class="form-control text-danger" required="required" \>
				<p class="help"><span class=text-danger>Write Database ID from which records are to be copied</span></p>
				<label class="my_label text-danger" for="to_mrd">To new MRD</label>
				<input value="SUR/'.$YY.'/" name=to_mrd type=text class="form-control text-danger"  required="required"\>
				<p class="help"><span class=text-danger>Write MRD number of new record</p>';
	echo '</div>';
	echo '<button type=submit class="btn btn-primary form-control" name=action value=copy_dbid>Copy</button>';
	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
	echo '</form>';
}


function copyy($link,$from_dbid,$to_mrd)
{
	$result_array=get_result_of_sample_in_array($link,$from_dbid);
	$sample_id=get_new_sample_id($link,$to_mrd);
	foreach( $result_array as $k=>$v )
	{
		if($k<100000 && $k>2)
		{
			insert_one_examination_with_result($link,$sample_id,$k,my_safe_string($link,$v));
		}
	}
	return $sample_id;
}


function list_prototype($link)
{
	echo '<div class=jumbotron><h3>Available Prototypes</h3>';
        $sql='select * from result where examination_id=\'2\' and result like \'DUMMY-%\' ';
        $result=run_query($link,$GLOBALS['database'],$sql);
	echo '<table class="table table-striped table-sm">';
	echo '<tr><th colspan="2">Click on orange button to select prototype</th></tr>';
	echo '<tr><th>Prototype ID</th><th>Prototype Name</th></tr>';
	while($ar=get_single_row($result))
	{
		echo '<tr>';
			echo '<td>';
			echo '<button class="btn btn-sm btn-warning" type=button onclick="sync_with_that(this,\'from_dbid\')" value=\''.$ar['sample_id'].'\'>'.$ar['sample_id'].'</button> ';
			echo '</td>';
			echo '<td>';
			echo $ar['result'];
			echo '</td>';
		echo '</tr>';
		//echo '<pre>';
		//print_r($ar);
	}
	echo '</table></div>';

}

?>
