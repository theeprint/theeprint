<?php
include_once('connection.php');
$user = new DBObject;
$query1 = array(
    'table' => "`forgot_passwords` WHERE `forgot_password_token`='".$_GET['token']."'"
);
$row = $user->select($query1);
foreach ($row as $rows){
    $query2 = array(
        'table' => "`users` WHERE `user_id`='".$rows['forgot_password_user']."'"
    );
    $row2 = $user->select($query2);
    foreach ($row2 as $rows2){
	// $link='http://staging.theeprint.com.ph/reset-password/'+$_GET['token']+'/';
        $to=$rows2['user_email'];
        $subject = "Password Reset Link";
        $message = "
        <html>
            <div style='width:100%;padding:15px;box-sizing:border-box;min-width:320px;background:#f2f2f2; text-align: center'>
                <div style='min-width:450px!important;max-width:600px!important;margin-top:45px;margin-left:auto;margin-right:auto;min-height:150px;background:#ffffff;border-radius:5px!important'>
                    <div style='text-align: center!important; padding: 20px; padding-bottom: 0px;'>
                    </div>
                    <div style='color: #000; padding: 40px 30px;font-family: arial;font-size: 14px;line-height: 1.3em; padding-top: 0px'>
                        <h2>Forgot your password?</h2>
                        <h2>It happens to the best of us.</h2>
                        <p>To reset your password, click the button below. The link will not be available after 48 hours.<br>Thank you!</p>
                        <br>
                        <a href='https://theeprint.com.ph/reset-password/".$_GET['token']."/' style='color: #fff;background-color: #C0024A;padding: 15px 32px;border-radius: 5px;border: 1px solid transparent;width: 100%;font-weight: 700'>Reset password link</a>
                    </div>	
                </div>
                <div style='max-width:426px;margin:0px auto 0 auto!important;min-height:150px;padding:15px;box-sizing:border-box;text-align:center'>
                    <div style='border-top: solid 1px #e8ebef;box-sizing: border-box;padding: 22px 0;'>
                        <p style='margin: 0;font-size: 11px;font-family: arial;color: #666666;'>
                            <i>Note:</i> This password reset link is valid only for 2 days.
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

        if( mail($to,$subject,$message,$headers)){
            $response=(object)[
                "success" => true,
                "result" => [
                    "message" => "Email successfully sent"
                ]
            ];
        }else{
            $response=(object)[
                "success" => false,
                "result" => [
                    "message" => "Sending Failed"
                ]
            ];
        }
    }
}
?>