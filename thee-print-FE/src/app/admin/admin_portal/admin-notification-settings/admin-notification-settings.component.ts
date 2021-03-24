import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import {ImageCroppedEvent} from 'ngx-image-cropper';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { UserService } from 'src/app/services/user.service';
import { NgxUiLoaderService } from "ngx-ui-loader"; 
import { Router, ActivatedRoute, NavigationExtras } from '@angular/router';
import { NgxSpinnerService } from "ngx-spinner";

@Component({
  selector: 'app-admin-notification-settings',
  templateUrl: './admin-notification-settings.component.html',
  styleUrls: ['./admin-notification-settings.component.scss']
})
export class AdminNotificationSettingsComponent implements OnInit {
  public notificationForm: FormGroup;
  last_updated:any;
  last_updated_by:any;
  constructor(
    public formBuilder: FormBuilder, 
    public userService: UserService, 
    public ngxSmartModalService: NgxSmartModalService, 
    private spinner: NgxSpinnerService,
    private ngxService: NgxUiLoaderService,
    private route: Router,
  ) { 
    this. notificationForm = this.formBuilder.group({
      job_processed: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
      job_delivered: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
      payment_pending: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
      payment_paid: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
    })
  }

  ngOnInit() {
    this.getNotifMessage();
    
  }
  getNotifMessage(){
    this.userService.getNotificationMessage().then(response => {
      this.notificationForm.controls.job_processed.setValue(response['result']['datas'][0].notification_message);
      this.notificationForm.controls.job_delivered.setValue(response['result']['datas'][1].notification_message);
      this.notificationForm.controls.payment_pending.setValue(response['result']['datas'][2].notification_message);
      this.notificationForm.controls.payment_paid.setValue(response['result']['datas'][3].notification_message);
      this.last_updated=response['result']['datas'][3].updated_at;
      this.last_updated_by=response['result']['datas'][3].user_profile_first_name+' '+response['result']['datas'][3].user_profile_last_name;
      console.log('tie', this.last_updated_by);
    })
  }
  updateNotifMessage(){
    this.spinner.show();
      if(this.notificationForm.valid){
      let param = {
        notification_type_id : '3',
        notification_message : this.notificationForm.controls.job_processed.value,
        updated_by : JSON.parse(localStorage.getItem('user_id'))
      }
      this.userService.updateNotificationMessage(param).then(response => {
      })
      let param2 = {
        notification_type_id : '4',
        notification_message : this.notificationForm.controls.job_delivered.value,
        updated_by : JSON.parse(localStorage.getItem('user_id'))
      }
      this.userService.updateNotificationMessage(param2).then(response => {
      })
      let param3 = {
        notification_type_id : '5',
        notification_message : this.notificationForm.controls.payment_pending.value,
        updated_by : JSON.parse(localStorage.getItem('user_id'))
      }
      this.userService.updateNotificationMessage(param3).then(response => {
      })
      let param4 = {
        notification_type_id : '6',
        notification_message : this.notificationForm.controls.payment_paid.value,
        updated_by : JSON.parse(localStorage.getItem('user_id'))
      }
      this.userService.updateNotificationMessage(param4).then(response => {
        if(response['success']==true){
          this.spinner.hide();
          setTimeout(()=>{                           //<<<---using ()=> syntax
            this.ngxSmartModalService.open('success');
          }, 500);
        }
      })
    }else{
      this.spinner.hide();
      this.notificationForm.markAllAsTouched();
    }
  }
  closeNotificationModal(){
    window.location.href = "/admin/dashboard";
  }
}
