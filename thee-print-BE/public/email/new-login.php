<?php
include_once('connection.php');
$user = new DBObject;
$query1 = array(
'table' => "`users` WHERE user_role_id='1' and `user_status`!='0'"
);
$row = $user->select($query1);
foreach ($row as $rows){
    $partner_name=urldecode($_GET['partner_name']);
	$link='https://theeprint.com.ph/';
	$to=$rows['user_email'];
	$subject = "Thee print has a new login";
	$message = "
	<html>
		<div style='width:100%;padding:15px;box-sizing:border-box;min-width:320px;background:#f2f2f2; text-align: center'>
			<div style='min-width:450px!important;max-width:600px!important;margin-top:45px;margin-left:auto;margin-right:auto;min-height:150px;background:#ffffff;border-radius:5px!important'>
	    		<div style='text-align: center!important; padding: 20px; padding-bottom: 0px;'>
				</div>
				<div style='color: #000; padding: 40px 30px;font-family: arial;font-size: 14px;line-height: 1.3em; padding-top: 0px'>
					<h2>Let's welcome ".$partner_name."!</h2>
					<p>They just logged in their account</p>
					<br>
	        		<a href='http://theeprint.com.ph/' style='color: #fff;background-color: #C0024A;padding: 15px 32px;border-radius: 5px;border: 1px solid transparent;width: 100%;font-weight: 700'>View Partner</a>
				</div>	
			</div>
			<div style='max-width:426px;margin:0px auto 0 auto!important;min-height:150px;padding:15px;box-sizing:border-box;text-align:center'>
				<div style='border-top: solid 1px #e8ebef;box-sizing: border-box;padding: 22px 0;'>
					<p style='margin: 0;font-size: 11px;font-family: arial;color: #666666;'>
			 			<i>Note:</i> This invitation is valid only for 30 days.
					</p>
					<p style='font-size: 11px;color: #666666; margin-bottom:0px'>
						If you have any questions, visit <a href='https://theeprint.com.ph'>our page</a>
					</p>
					<p style='font-size: 11px;color: #666666;font-style: italic;'>
						Copyright &copy; Thee Print, All Rights Reserved
					</p>
				</div>
			</div>
		</div>
	</html>
	";

	// Always set content-type when sending HTML email
	$headers = "MIME-Version: 1.0" . "\r\n";
	$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
	// More headers
	$headers .= 'From: <noreply@theeprint.com.ph>' . "\r\n";

	mail($to,$subject,$message,$headers);
}
?>