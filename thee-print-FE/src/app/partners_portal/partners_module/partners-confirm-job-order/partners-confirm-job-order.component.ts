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
  selector: 'app-partners-confirm-job-order',
  templateUrl: './partners-confirm-job-order.component.html',
  styleUrls: ['./partners-confirm-job-order.component.scss']
})
export class PartnersConfirmJobOrderComponent implements OnInit {
  public remarkForm: FormGroup;
  getConfirmJobOrder:any;
  getQuotation:any;
  getSubtotal:any;
  getJONumber:any;
  job_order_request_id: string;
  job_order_details:any;
  order_items: any;
  subTotal=0;
  vat=0;
  gross=0;
  job_order_number: any;
  partner_details: any;
  partner_company: any;
  partner_id:any;
  checked:any;
  termsandcondition:any;
  termsData: any;
  privacyPolicy:any;
  privacyData: any;
  agree:any;


  constructor(
    private ngxService: NgxUiLoaderService,
      private socket: Socket,
      public mainApi: MainService,
    private env: EnvService,
    private router: Router,
    private _router: ActivatedRoute,
    public formBuilder: FormBuilder,
    public userService: UserService,
    private spinner: NgxSpinnerService,
    private route: ActivatedRoute,
    public ngxSmartModalService: NgxSmartModalService,
    ) { 
      this.remarkForm = this.formBuilder.group({
        remarks: ['', Validators.compose([ Validators.maxLength(240)])],
        agree: ['', Validators.compose([Validators.required])],
      })
    }

  //modal for submitjoborder
  ngAfterViewInit() {
    const pen: Object = {
      prop1: 'test',
      prop2: true,
      prop3: [{ a: 'a', b: 'b' }, { c: 'c', d: 'd' }],
      prop4: 327652175423
    };
    this.ngxSmartModalService.setModalData(pen, 'submitjoborder');
  }

  ngOnInit() {
    this.job_order_request_id = this.route.snapshot.paramMap.get('job_order_request_id');
    this.getJobOrders(this.job_order_request_id);
    this.viewTermsandConditions();
    this.viewPrivacyPolicy();
  }

  viewTermsandConditions(){
    this.userService.viewTermsandConditions('1').then(response => {
      let result: any = response;
      this.termsData = result['data'];
      this.termsandcondition = result['data'].term_content;
    })
  }

  viewPrivacyPolicy(){
    this.userService.viewPrivacyPolicy('1').then(response => {
      let result: any = response;
      this.privacyData = result['data'];
      this.privacyPolicy =result['data'].privacy_content;
      // this.privacyPolicyForm.controls.privacy_content.setValue(result['data'].privacy_content);
    })
  }

  playAudioError(){
    let audio = new Audio();
    audio.src = "../../../assets/audio/fail.mp3";
    audio.load();
    audio.play();
  }
  
  getJobOrders(job_order_request_id){
    this.userService.getJobOderdetails(job_order_request_id).then(response => {
      this.partner_id=response['result']['job_order_details'][0].job_order_user_id;
      this.job_order_details=response['result'].job_order_details;
      console.log('details', this.job_order_details);
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
      this.vat=this.subTotal*0;
      this.gross=this.subTotal+this.vat;
      console.log('vat', this.vat)
    })
  }
  saveAsDraft(){  
    this.spinner.show();
    let params = {
      job_order_status: 1,
      updated_by: this.partner_id
    }
    this.userService.updateJobOrder(this.job_order_request_id, params).then(response => {
      console.log(response);
        if(response['success']==true){
          this.spinner.hide();
          setTimeout(()=>{
            this.ngxSmartModalService.open('saveAsDraftsSuccess');
          }, 500);
        }else{
          this.spinner.hide();
        }
      });
  }

  confirmJobOrder(){ 
    this.spinner.show();
    if(this.remarkForm.valid && this.checked==true){ 
      console.log('valid form');
      let params = {
        sender:JSON.parse(localStorage.getItem('user_id')),
        job_order_user_id : this.job_order_details[0].partner_id,
        job_order_status: 2,
        job_order_remarks: this.remarkForm.controls.remarks.value,
        job_order_total: this.gross,
        updated_by: this.partner_id,
      }
    
      this.userService.updateJobOrder(this.job_order_request_id, params).then(response => {
        if(response['success']==true){
          this.spinner.hide();
          this.userService.getAdminAccounts().then(response => {
            if(response['success']==true){
              console.log('admin', response['result']['datas']);
              for(let i=0;i<response['result']['datas'].length;i++){
                this.sendNotification(response['result']['datas'][i].user_id);
              } 
            }
          });
          this.job_order_number=response['result']['job_order_quote_num'];
          this.userService.sendEmailNewJobOrder(response['result']['partner_details'][0].partner_company,this.job_order_request_id);
          setTimeout(()=>{
            this.ngxSmartModalService.open('submitjoborder');
          }, 500);
        }
      });
    }else{
      this.spinner.hide();
      console.log('invalid form', this.remarkForm.markAllAsTouched());
      this.remarkForm.markAllAsTouched();
      this.playAudioError();
      this.remarkForm.controls.agree.markAsUntouched;
    }
  }
  getProfile(user_id){
  	this.userService.getProfile(user_id).then(response => {
      this.partner_details=response['result'][0];
      this.partner_company=this.partner_details.partner_company;
      console.log('eto', this.partner_details);
  	});
  }

  termsModal(){
    this.ngxSmartModalService.open('terms');
  }
  
  termsCloseModal(){
    this.ngxSmartModalService.close('terms');
  }
  
  privacyModal(){
    this.ngxSmartModalService.open('privacy');
  }
  
  privacyCloseModal(){
    this.ngxSmartModalService.close('privacy');
  }

  confirmCloseModal(){
    window.location.href = "/partners/partners_dashboard";
  }

  closeModal(){
    window.location.href = "/partners/partners_dashboard";
  }

  closeModalDraflist(){
    window.location.href = "/partners/partners_drafts";
  }

  sendNotification(user_id){
    console.log('test emit');
    let notification={
      notification_receiver: user_id,
    }
    this.socket.emit("notification", notification);
  }
  checkUncheck(event: any){
    if(this.checked==true){
      this.checked=false;
    }else{
      this.checked=true;
    }
  }
}