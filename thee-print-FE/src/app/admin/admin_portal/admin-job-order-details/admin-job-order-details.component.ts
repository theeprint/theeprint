import { AnimationMetadataType } from '@angular/animations';
import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';
import { MainService } from 'src/app/services/main.service';
import { UserService } from 'src/app/services/user.service';
import { EnvService } from 'src/app/lib/env.service';
import { NgxUiLoaderService } from "ngx-ui-loader";
import { NgxSmartModalService } from 'ngx-smart-modal';
import { Socket } from 'ngx-socket-io';
import { NgxSpinnerService } from "ngx-spinner";




@Component({
  selector: 'app-admin-job-order-details',
  templateUrl: './admin-job-order-details.component.html',
  styleUrls: ['./admin-job-order-details.component.scss']

})
export class AdminJobOrderDetailsComponent implements OnInit {

  public declineForm: FormGroup;
  public updateForm: FormGroup;
  job_order_request_id:any;
  job_order_general_details: any;
  job_order_details:any;
  job_order_item_list:any;
  order_items:any;
  job_order_submitted:any;
  job_order_processed:any;
  job_order_delivered:any;
  decline_remarks:any;
  subTotal=0;
  gross=0;
  vat=0;
  limittt=0;
  notification_receiver:any;
  partner_profile:any;
  emailnotif:any;
  userStatus:any;
  constructor(
    private ngxService: NgxUiLoaderService,
    public mainApi: MainService,
    private env: EnvService,
    private router: Router,
    private _router: ActivatedRoute,
    public formBuilder: FormBuilder,
    public userService: UserService,
    private socket: Socket,
    private route: ActivatedRoute,
    private spinner: NgxSpinnerService,
    public ngxSmartModalService: NgxSmartModalService,

  ) { 
    this.declineForm = this.formBuilder.group({
      decline_message: ['', Validators.compose([Validators.required])],
    })
    this.updateForm = this.formBuilder.group({
      order_status: [''],
      payment_status: [''],
    })
  }

  ngOnInit() {
    this.job_order_request_id = this.route.snapshot.paramMap.get('job_order_request_id');
    this.getJobOrders(this.job_order_request_id);   
   
  }



  declineMessageModal(){
    this.ngxSmartModalService.open('declineMessage');
  }
  closeDeclineMessageModal(){
    this.ngxSmartModalService.close('declineMessage');
  }
  getJobOrders(job_order_request_id){
    this.userService.getJobOderdetails(job_order_request_id).then(response => {
      this.job_order_details=response['result'].job_order_details[0];
      console.log('details', this.job_order_details);
      this.getUserProfileNotification(this.job_order_details.partner_user);
      this.order_items=response['result'].order_items;
      for(let i=0; i<this.order_items.length; i++){
        this.order_items[i].area=this.order_items[i].job_order_item_width*this.order_items[i].job_order_item_length;
        this.order_items[i].total_price=(this.order_items[i].area*this.order_items[i].job_order_item_qty)*this.order_items[i].job_order_item_price;
        this.subTotal=this.subTotal+this.order_items[i].total_price;
        if(this.order_items[i].job_order_item_unit==0){
          this.order_items[i].unit_words='in';
        }else{
          this.order_items[i].unit_words='ft';
        }
      }
      if(this.job_order_details.job_order_status=='2'){
        let params = {
          job_order_status:'2',
          job_order_request_id:this.job_order_details.job_order_request_id
        }
        this.userService.getJobOrderLog(params).then(response => {
          this.job_order_submitted=response['result']['datas'][0].updated_at;
        });
      }
      if(this.job_order_details.job_order_status=='3'){
        this.updateForm.patchValue({order_status: this.job_order_details.job_order_status});
        this.updateForm.patchValue({payment_status: this.job_order_details.job_order_payment_status});
        let submitted = {
          job_order_status:'2',
          job_order_request_id:this.job_order_details.job_order_request_id
        }
        this.userService.getJobOrderLog(submitted).then(response => {
          this.job_order_submitted=response['result']['datas'][0].updated_at;
        });
        let processed = {
          job_order_status:'3',
          job_order_request_id:this.job_order_details.job_order_request_id
        }
        this.userService.getJobOrderLog(processed).then(response => {
          this.job_order_processed=response['result']['datas'][0].updated_at;
        });
      }
      if(this.job_order_details.job_order_status=='4'){
        this.updateForm.patchValue({order_status: this.job_order_details.job_order_status});
        this.updateForm.patchValue({payment_status: this.job_order_details.job_order_payment_status});
        let submitted = {
          job_order_status:'2',
          job_order_request_id:this.job_order_details.job_order_request_id
        }
        this.userService.getJobOrderLog(submitted).then(response => {
          this.job_order_submitted=response['result']['datas'][0].updated_at;
        });
        let processed = {
          job_order_status:'3',
          job_order_request_id:this.job_order_details.job_order_request_id
        }
        this.userService.getJobOrderLog(processed).then(response => {
          this.job_order_processed=response['result']['datas'][0].updated_at;
        });
        let delivered = {
          job_order_status:'4',
          job_order_request_id:this.job_order_details.job_order_request_id
        }
        this.userService.getJobOrderLog(delivered).then(response => {
          this.job_order_delivered=response['result']['datas'][0].updated_at;
        });
      }
      if(this.job_order_details.job_order_status=='5'){
        let params = {
          job_order_status:'2',
          job_order_request_id:this.job_order_details.job_order_request_id
        }
        this.userService.getJobOrderLog(params).then(response => {
          this.job_order_submitted=response['result']['datas'][0].updated_at;
        });
        let declined = {
          job_order_status:'5',
          job_order_request_id:this.job_order_details.job_order_request_id
        }
        this.userService.getJobOrderLog(declined).then(response => {
          console.log(response)
          this.decline_remarks=response['result']['datas'][0].job_order_request_remark;
        });
      }
      this.vat=this.subTotal*0;
      this.gross=this.subTotal+this.vat;
    })
  }
  declineRequest(job_order_request_id){
    this.spinner.show();
    if(this.declineForm.valid){
      this.ngxSmartModalService.close('declineMessage');
      let params = {
        job_order_status:5,
        remarks: this.declineForm.controls.decline_message.value,
        updated_by: JSON.parse(localStorage.getItem('user_id')),
      }
      this.userService.updateJobOrder(this.job_order_request_id, params).then(response => {
        if(response['success']==true){
          this.getJobOrders(this.job_order_request_id);
          this.spinner.hide();
          setTimeout(()=>{             
            this.ngxSmartModalService.open('successDecline');
          }, 500);
        }
      });
    }else{
      this.spinner.hide();
      this.declineForm.markAllAsTouched();
    }
  }
  processRequest(job_order_request_id){
    this.spinner.show();
    console.log(job_order_request_id)
    let params = {
      job_order_status:3,
      receiver:this.job_order_details.partner_user,
      updated_by: JSON.parse(localStorage.getItem('user_id'))
    }
    this.userService.updateJobOrder(this.job_order_request_id, params).then(response => {
      console.log('response ngayon', response)
      if(response['success']==true){
        if(response['result']['notification']!='false'){
          if(this.emailnotif==1&&this.userStatus==1){
            this.userService.partnerNotitificationEmail(response['result']['notification'].notification_id);
          }
        }
        this.spinner.hide();
        this.notification_receiver=response['result']['partner_details'][0];
        this.limittt++;
        this.sendNotification(response['result']['partner_details'][0].partner_user);
        this.getJobOrders(this.job_order_request_id);
        this.ngxSmartModalService.open('successUpdate');
      }else{
        this.spinner.hide();
        this.ngxSmartModalService.open('cancelled');
      }
    });
  }

  moveToArchived(job_order_request_id){
    this.spinner.show();
    let params = {
      admin_archived:1,
      updated_by: JSON.parse(localStorage.getItem('user_id'))
    }
    this.userService.updateJobOrder(this.job_order_request_id, params).then(response => {
    if(response['success']==true){
        this.spinner.hide();
        setTimeout(()=>{
          this.ngxSmartModalService.open('successUpdate');
        }, 500);
      }else{
        this.spinner.hide();
      }
    });
  }
  
  updateRequest(job_order_request_id){
    this.spinner.show();
    let params = { 
      receiver:this.job_order_details.partner_user,
      updated_by: JSON.parse(localStorage.getItem('user_id')),
    }
    if(this.updateForm.controls.order_status.value!=this.job_order_details.job_order_status){
      params['job_order_status'] = this.updateForm.controls.order_status.value;
      this.limittt++;
    }
    if(this.updateForm.controls.payment_status.value!=this.job_order_details.job_order_payment_status){
      params['job_order_payment_status'] = this.updateForm.controls.payment_status.value;
      this.limittt++; 
      if(params['job_order_payment_status']==0){
        this.limittt--;
      }
    }
    console.log('this',params)
    this.userService.updateJobOrder(this.job_order_request_id, params).then(response => {
      if(response['success']==true){
        console.log('notification',response['result']['notification'])
        console.log('notification_payment',response['result']['notification_payment'])
        console.log('emailnotif', this.emailnotif)
        if(response['result']['notification']!='false'){
          if(this.emailnotif==1&&this.userStatus==1){
            this.userService.partnerNotitificationEmail(response['result']['notification'].notification_id);
          }
        }
        if(response['result']['notification_payment']!='false'){
          if(this.emailnotif==1&&this.userStatus==1){

            this.userService.partnerNotitificationEmail(response['result']['notification_payment'].notification_id);
          }
        }
        this.spinner.hide();
        this.notification_receiver=response['result']['partner_details'][0];
        this.sendNotification(response['result']['partner_details'][0].partner_user);
        this.limittt=0;
        this.getJobOrders(this.job_order_request_id);
        console.log('dsadasdas', this.job_order_request_id);
        setTimeout(()=>{
          this.ngxSmartModalService.open('successUpdate');
        }, 500);
      }
    });
  }

  goToLink(url){
    window.open(url, "_blank");
  } 
  
  sendNotification(user_id){
    console.log('test emit', user_id);
    let notification={ 
      notification_receiver: user_id,
      limit:this.limittt
    }
    console.log(notification);
    this.socket.emit("notification", notification);
  }
  closeModal(){
    window.location.href = "/admin/job-order-list"; 
  }
  getUserProfileNotification(user_id){
    this.userService.getProfile(user_id).then(response => {
      this.emailnotif=response['result'][0].email_notification;
      this.userStatus=response['result'][0].user_status;
      console.log('sas',  this.userStatus=response['result'][0].user_status);
      console.log('sas',  this.userStatus=response['result'][0].user_status);

    });
  }
}
