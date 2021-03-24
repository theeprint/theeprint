import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import * as ClassicEditor from '@ckeditor/ckeditor5-build-classic';
import { param } from 'jquery';
import { UserService } from 'src/app/services/user.service';
import { Router, ActivatedRoute, NavigationExtras } from '@angular/router';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { NgxSpinnerService } from "ngx-spinner";

@Component({
  selector: 'app-admin-privacy-policy-cms',
  templateUrl: './admin-privacy-policy-cms.component.html',
  styleUrls: ['./admin-privacy-policy-cms.component.scss']
})
export class AdminPrivacyPolicyCmsComponent implements OnInit {
  privacyPolicy:any;
  public Editor = ClassicEditor;
  public privacyPolicyForm: FormGroup;
  privacyData: any;

  

  constructor(
    public userService: UserService,
    public formBuilder: FormBuilder,
    private route: Router,
    public ngxSmartModalService: NgxSmartModalService,
    private spinner: NgxSpinnerService,
  ) 
  { 
    this.privacyPolicyForm = this.formBuilder.group({
      privacy_content: ['', Validators.compose([Validators.required])],
    })
  }

  ngOnInit() {
    this.viewPrivacyPolicy();
   
  }

  viewPrivacyPolicy(){
    this.userService.viewPrivacyPolicy('1').then(response => {
      let result: any = response;
      this.privacyData = result['data'];
      this.privacyPolicy =result['data'].privacy_content;
      this.privacyPolicyForm.controls.privacy_content.setValue(result['data'].privacy_content);
    })
  }

  updatePrivacyPolicy(){
    this.spinner.show();
    if(this.privacyPolicyForm.valid){
      console.log('valid form');
      let params = {
        privacy_id: 1,
        privacy_content: this.privacyPolicy,
        privacy_updated_by:JSON.parse(localStorage.getItem('user_id'))
      }
      this.userService.updatePrivacyPolicy(params).then(response => {
        if(response['success']==true){
          this.spinner.hide();
          setTimeout(()=>{                           //<<<---using ()=> syntax
            this.ngxSmartModalService.open('success');
          }, 500);
        }
      })
     }else{
       console.log('in valid form');
       this.spinner.hide();
       this.privacyPolicyForm.markAllAsTouched();
     }
    }
    
    closePrivacyModal(){
      window.location.href = "/admin/admin_cms";
    }
  }
 


