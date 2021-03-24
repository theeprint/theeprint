import { NgxSpinnerService } from "ngx-spinner";
import { UserService } from 'src/app/services/user.service';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Component, OnInit } from '@angular/core';
import { NgxSmartModalService } from 'ngx-smart-modal';

@Component({
  selector: 'app-partners-notif-settings',
  templateUrl: './partners-notif-settings.component.html',
  styleUrls: ['./partners-notif-settings.component.scss']
})
export class PartnersNotifSettingsComponent implements OnInit {
  partner_id:any;
  partner_details:any;
  updateNotificationForm : FormGroup;
  constructor(
    public formBuilder: FormBuilder, 
    private spinner: NgxSpinnerService,
    public ngxSmartModalService: NgxSmartModalService,
    public userService: UserService,
  ) {
    this.updateNotificationForm = this.formBuilder.group({
      webNotification: [''],
      emailNotification: ['']
    })
  }

  ngOnInit() {
    this.partner_id=JSON.parse(localStorage.getItem('user_id'));
    this.singlePartner(this.partner_id);
  }
  singlePartner(user_id){
    this.userService.singlePartner(user_id).then(response => {
      this.partner_details = response['result'][0];
      console.log(this.partner_details)
      this.set_user_value();
    })
  }
  set_user_value(){
    if(this.partner_details.web_notification==1){
      this.updateNotificationForm.patchValue({webNotification:true});
    }else{
      this.updateNotificationForm.patchValue({webNotification:false});
    }
    if(this.partner_details.email_notification==1){
      this.updateNotificationForm.patchValue({emailNotification:true});
    }else{
      this.updateNotificationForm.patchValue({emailNotification:false});
    }
  }
  updatePartner(){
    this.spinner.show();
    if (this.updateNotificationForm.valid) {
      //update user profile
      let formData = {
        web_notification:this.updateNotificationForm.value.webNotification,
        email_notification:this.updateNotificationForm.value.emailNotification
      }
      this.userService.deactivateUser(this.partner_id, formData).then(response => {
        if(response['success']==true){
          console.log(response['success']);
          this.singlePartner(this.partner_id);
          this.spinner.hide();
          setTimeout(()=>{                           //<<<---using ()=> syntax
            this.ngxSmartModalService.open('success');
            window.location.href = '/partners/partners_dashboard';
          }, 500);
        }
      });
    }else{
      this.spinner.hide();
    }
  }
  closeModal(){
    this.ngxSmartModalService.close('success');
  }
}
