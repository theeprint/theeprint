<?php
require('fpdf/fpdf.php');
include_once('connection.php');
$job_order_request_id=urldecode($_GET['id']);
$user = new DBObject;
$query1 = array(
'table' => "`job_order_requests` 
LEFT JOIN `company_addresses` on `job_order_requests`.`job_order_delivery_address` = `company_addresses`.`company_address_id`
LEFT JOIN `partners` on `job_order_requests`.`job_order_user_id` = `partners`.`partner_id`
LEFT JOIN `user_profiles` on `partners`.`partner_user` = `user_profiles`.`user_profile_user_id`
WHERE `job_order_requests`.`job_order_request_id`='".$job_order_request_id."'"
);

$row = $user->select($query1);
foreach ($row as $rows){
    $user = new DBObject;
    $query3 = array(
    'table' => "`job_order_logs` 
    WHERE `job_order_logs`.`job_order_request_id`='".$job_order_request_id."' and `job_order_logs`.`job_order_status` = '2' "
    );
    $dateSubmitted='';
    $row3 = $user->select($query3);
    foreach ($row3 as $rows3){
        $dateSubmitted= $rows3['created_at'];
    }
$pdf = new FPDF('P', 'mm', 'A4');
$pdf->format - A4;
$pdf->SetTitle('Job Order');
$pdf->AddPage();

$pdf->Image('assets/portrait.png',15,8,50,30);
$pdf->Line(20, 38, 210-20, 38);
$pdf->SetFont('Arial','B',16);
$pdf->Cell(145,40,'');
$pdf->Cell(100,40,'QUOTATION');
$pdf->Ln(10);
$pdf->SetFont('Arial','',10);
$pdf->Cell(9,40,'');
$pdf->Cell(10,50,'Address: 106 Caimito Rd. Brgy. 80 D-1 Caloocan City');

$pdf->Cell(116,40,'');
#E93636
$pdf->SetFillColor(233,54,54);
$pdf->Cell(10,50,'Quote #:');
$pdf->Ln(5); // Line gap
$pdf->Cell(9,40,'');
$pdf->Cell(10,50,'Phone: 0977-849-3382');
$pdf->Cell(116,40,'');
$pdf->Cell(10,50,'Date:');
$pdf->Ln(5); // Line gap
$pdf->Cell(9,40,'');
$pdf->Cell(10,50,'E-mail Adress: mimi@theeprint.com.ph');
$pdf->Cell(116,40,'');
$pdf->Cell(10,50,'Due Date:');
$pdf->Ln(5); // Line gap
$pdf->Cell(135,40,'');
$pdf->Cell(10,50,'Customer ID:');

$pdf->Ln(7); // Line gap
$pdf->SetX(170); 
$pdf->MultiCell(20,5,$rows['job_order_quote_num'],LRTB,L,false); // Quote
$pdf->SetFont('Arial','',9);
$pdf->Ln(0); // Line gap
$pdf->SetX(170); 
$new_created_at = date("Y-m-d",strtotime($dateSubmitted));
$pdf->MultiCell(20,5,$new_created_at,LRTB,L,false); // Date

$pdf->Ln(0); // Line gap
$pdf->SetX(170); 
$new_due_date = date("Y-m-d",strtotime($rows['job_order_due_date']));
$pdf->MultiCell(20,5,$new_due_date,LRTB,L,false); // Due Date

$pdf->Ln(0); // Line gap
$pdf->SetX(170);  
$pdf->MultiCell(20,5,$rows['job_order_user_id'],LRTB,L,false); // Customer ID

$pdf->Ln(5); // Line gap
$pdf->Cell(9,40,'');
$pdf->SetFont('Arial','B',10);
$pdf->Cell(85,5,'CLIENT DETAILS',1,0,L,1);
$pdf->Cell(85,5,'PROJECT DESCRIPTION',1,0,L,1);

$pdf->Ln(5); // Line gap
$pdf->Cell(9,40,'');
$pdf->SetFont('Arial','',10);
// $pdf->Cell(9,40,'');
$pdf->SetWidths(array(85,85));
$tableRow1="\n".'Name: '.$rows['user_profile_first_name'].' '.$rows['user_profile_last_name']."\n".
'Company Name: '.$rows['partner_company']."\n".
'Phone Number: '.$rows['user_profile_phone']."\n".
'Billing Address: '.$rows['partner_address']."\n".
'';
$tableRow2="\n".'Project Name: '.$rows['job_order_project_name']."\n".'Delivery Address: '.$rows['company_address']."\n";
$pdf->Row(array($tableRow1,$tableRow2));
$pdf->SetX(180); 
$pdf->SetY(95);
$pdf->Ln(0);
$pdf->Cell(9,40,'');
$pdf->SetFont('Arial','',10);
$pdf->Cell(10,35,'Dear Sir/Madam,');
$pdf->Ln(18); // Line gap
$pdf->Cell(16,40,'');
$pdf->Cell(10,10,'We are pleased to submit our quotation for your kind consideration and approval for:');

$pdf->Ln(10); // Line gap
$pdf->Cell(9,40,'');
$pdf->SetFont('Arial','B',10);
$pdf->Cell(55,5,'Description',1,0,L,1);
$pdf->Cell(35,5,'Dimension',1,0,L,1);
$pdf->Cell(15,5,'QTY',1,0,L,1);
$pdf->Cell(35,5,'Unit Price',1,0,L,1);
$pdf->Cell(30,5,'Amount',1,0,L,1);
$pdf->Ln(5); // Line gap

$query2 = array(
'table' => "`job_order_items` 
LEFT JOIN `products` on `job_order_items`.`job_order_item_product_id` = `products`.`product_id`
LEFT JOIN `machine_prints` on `products`.`product_machine_print` = `machine_prints`.`machine_print_id`
WHERE `job_order_items`.`job_order_id`='".$job_order_request_id."'");
$row2 = $user->select($query2);
$size=sizeof($row2);
$count=0;
$tableRows1='';
$tableRows2='';
$tableRows3='';
$tableRows4='';
$tableRows5='';
foreach ($row2 as $rows2){
    $count++;
if($rows2['job_order_item_unit']=='0'){
    $unit='in';
}else{
    $unit='ft';
}
$area=$rows2['job_order_item_width']*$rows2['job_order_item_length'];
$total_price=($area*$rows2['job_order_item_qty'])*$rows2['job_order_item_price'];

$tableRows1=$tableRows1.'('.$rows2['machine_print'].') '.$rows2['product_media']."\n";
$tableRows2=$tableRows2.$rows2['job_order_item_width'].$unit.'x'.$rows2['job_order_item_length'].$unit."\n";
$tableRows3=$tableRows3.$rows2['job_order_item_qty']."\n";
$tableRows4=$tableRows4.number_format($rows2['job_order_item_price'],2)."\n";
$tableRows5=$tableRows5.number_format($total_price,2)."\n";
}

$pdf->SetFont('Arial','',10);
$pdf->Cell(9,40,'');
$pdf->SetWidths(array(55,35,15,35,30));
$pdf->Row2(array($tableRows1,$tableRows2,$tableRows3,$tableRows4,$tableRows5));
if($row2->num_rows>1){
    $pdf->Ln(35); 
}else{
    $pdf->Ln(45); 
}
// var_dump($tableRows1);die;
$pdf->SetFont('Arial','B',10);// Line gap
$pdf->Cell(9,40,'');
$pdf->Cell(105,5,'TERMS AND CONDITIONS',1,0,L,1);
$pdf->SetFont('Arial','',10);
$pdf->Cell(35,5,'Subtotal',1,0,'L',0);
$vat=0;
$subTotal=$rows['job_order_total']-$vat;
$pdf->Cell(30,5,number_format($subTotal, 2),1,0,'R',0);
$pdf->Ln(5); // Line gap
$pdf->Cell(9,40,'');
$pdf->SetFont('Arial','',7);
$pdf->Cell(105,10,'30 days upon completion ,all payments by check should be address to THEE PRINT.',1);
$pdf->SetFont('Arial','',10);
$pdf->Cell(35,5,'Discount',1,0,'L',0);
$pdf->Cell(30,5,'',1,0,'L',0);
$pdf->Ln(5); // Line gap
$pdf->Cell(114,40,'');
$pdf->Cell(35,5,'Vat Rate',1,0,'L',0);
$pdf->Cell(30,5,'',1,0,'R',0);

$pdf->Ln(5); // Line gap
$pdf->Cell(9,40,'');
$pdf->SetFont('Arial','B',10);
$pdf->Cell(105,5,'REMARKS',1,0,L,1);
$pdf->Cell(35,5,'VAT',1,0,'L',0);
$pdf->Cell(30,5,'',1,0,'R',0);
$pdf->Ln(5); // Line ga
$pdf->Cell(9,40,'');
$pdf->SetFont('Arial','B',10);
$pdf->Cell(105,10,'',1);
$pdf->Cell(35,10,'TOTAL',1,0,'L',0);
$pdf->Cell(30,10,number_format($rows['job_order_total'],2),1,0,'R',0);

$pdf->SetY(266);
// Arial italic 8
$pdf->SetFont('Arial','I',7);
// Page number
$pdf->SetTextColor(128, 128, 125);
$pdf->Cell(60,10,'Quote Template @2020 by TheePrint ',0,0,'C');
$pdf->Cell(70,10,'');
$pdf->Cell(78,10,'www.theeprint.com ',0,0,'C');


$pdf->Output();
}

?>