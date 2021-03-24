<?php
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Headers: Content-type");
    $post_date = file_get_contents("php://input");
    $data = json_decode($post_date);

    if(!empty($data)){
        $to='larahandog@hotmail.com';
        $subject = "New contact us message";
        $message = 
        "
            <html>
            <div style='width:100%;padding:15px;box-sizing:border-box;min-width:320px;background:#f2f2f2; text-align: center'>
                <div style='min-width:450px!important;max-width:600px!important;margin-top:45px;margin-left:auto;margin-right:auto;min-height:150px;background:#ffffff;border-radius:5px!important'>
                    <div style='padding: 20px; padding-bottom: 0px;'>
                    </div>
                    <div style='text-align: left !important; color: #000; padding: 40px 30px;font-family: arial;font-size: 14px;line-height: 1.3em; padding-top: 0px'>
                    <p>Name: ".$data->fullname."</p>
                    <p>Contact No: ".$data->contactNo."</p>
                    <p>Email: ".$data->email."</p>
                    <p>Message: ".$data->message." </p>
                    </div>	
                </div>
                <div style='max-width:426px;margin:0px auto 0 auto!important;min-height:150px;padding:15px;box-sizing:border-box;text-align:center'>
                    <div style='border-top: solid 1px #e8ebef;box-sizing: border-box;padding: 22px 0;'>
                       
                        <p style='font-size: 11px;color: #666666; margin-bottom:0px'>
                            If you have any questions, visit <a href='http://theeprint.com.ph'>our page</a>
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
        $response=(object)[
            "success" => true,
            "result" => [
                "message" => "Message successfully sent.",
            ]
        ];
        return json($response);
    }
?>