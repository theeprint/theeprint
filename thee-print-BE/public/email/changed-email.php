<?php
    $to_old=urldecode($_GET['old']);
    $to_new=urldecode($_GET['new']);
    $subject_old = "Email Address Changed Successfully";
    $message_old = 
    "<html>
        <div style='width:100%;padding:15px;box-sizing:border-box;min-width:320px;background:#f2f2f2; text-align: center'>
            <div style='min-width:450px!important;max-width:600px!important;margin-top:45px;margin-left:auto;margin-right:auto;min-height:150px;background:#ffffff;border-radius:5px!important'>
                <div style='text-align: center!important; padding: 20px; padding-bottom: 0px;'>
                </div>
                <div style='color: #000; padding: 40px 30px;font-family: arial;font-size: 14px;line-height: 1.3em; padding-top: 0px'>
                    <h2>Email successfully updated</h2>
                    <p>We changed your e-mail address in our files from ".$to_old." to ".$to_new."!<br>If you have made this changes, you can disregard this e-mail. If the new e-mail address is not correct or you did not make this changes, please contact our customer support at support@theeprint.com.ph</p>
                    <br>
                    <a href='https://theeprint.com.ph/' style='color: #fff;background-color: #C0024A;  text-decoration: none; padding: 15px 32px;border-radius: 5px;border: 1px solid transparent;width: 100%;font-weight: 700'>Login now</a>
                </div>  
            </div>
            <div style='max-width:426px;margin:0px auto 0 auto!important;min-height:150px;padding:15px;box-sizing:border-box;text-align:center'>
                <div style='border-top: solid 1px #e8ebef;box-sizing: border-box;padding: 22px 0;'>
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
    $headers = "MIME-Version: 1.0" . "\r\n";
    $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
    $headers .= 'From: <noreply@theeprint.com.ph>' . "\r\n";
    mail($to_old,$subject_old,$message_old,$headers);
    

    //send to new email
    $subject_new = "Email Address Change Successfully";
    $message_new = 
    "<html>
        <div style='width:100%;padding:15px;box-sizing:border-box;min-width:320px;background:#f2f2f2; text-align: center'>
            <div style='min-width:450px!important;max-width:600px!important;margin-top:45px;margin-left:auto;margin-right:auto;min-height:150px;background:#ffffff;border-radius:5px!important'>
                <div style='text-align: center!important; padding: 20px; padding-bottom: 0px;'>
                </div>
                <div style='color: #000; padding: 40px 30px;font-family: arial;font-size: 14px;line-height: 1.3em; padding-top: 0px'>
                    <h2>Email successfully updated</h2>
                    <p>We changed your e-mail address in our files from ".$to_old." to ".$to_new."!<br>If you have made this changes, you can disregard this e-mail. If the new e-mail address is not correct or you did not make this changes, please contact our customer support at support@theeprint.com.ph</p>
                    <br>
                    <a href='http://theeprint.com.ph/' style='color: #fff;background-color: #C0024A;  text-decoration: none; padding: 15px 32px;border-radius: 5px;border: 1px solid transparent;width: 100%;font-weight: 700'>Login now</a>
                </div>  
            </div>
            <div style='max-width:426px;margin:0px auto 0 auto!important;min-height:150px;padding:15px;box-sizing:border-box;text-align:center'>
                <div style='border-top: solid 1px #e8ebef;box-sizing: border-box;padding: 22px 0;'>
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
    $headers = "MIME-Version: 1.0" . "\r\n";
    $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
    $headers .= 'From: <noreply@theeprint.com.ph>' . "\r\n";
    mail($to_new,$subject_new,$message_new,$headers);
?>