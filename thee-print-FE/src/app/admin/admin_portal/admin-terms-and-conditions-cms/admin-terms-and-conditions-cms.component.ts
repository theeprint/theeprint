import { Component, OnInit } from '@angular/core';
import * as ClassicEditor from '@ckeditor/ckeditor5-build-classic';
import { UserService } from 'src/app/services/user.service';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router, ActivatedRoute, NavigationExtras } from '@angular/router';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { NgxSpinnerService } from "ngx-spinner";
@Component({
  selector: 'app-admin-terms-and-conditions-cms',
  templateUrl: './admin-terms-and-conditions-cms.component.html',
  styleUrls: ['./admin-terms-and-conditions-cms.component.scss']
})
export class AdminTermsAndConditionsCmsComponent implements OnInit {
  termsandcondition:any;
  public Editor = ClassicEditor;
  public termsAndConditionForm: FormGroup;
  termsData: any;


  constructor(
    public userService: UserService, 
    public formBuilder: FormBuilder,
    private route: Router,
    public ngxSmartModalService: NgxSmartModalService,
    private spinner: NgxSpinnerService,
  ) 
  { 
    this.termsAndConditionForm = this.formBuilder.group({
      term_content: ['', Validators.compose([Validators.required])],
    })
  }


  ngOnInit() {
    this.viewTermsandConditions();

  }


  viewTermsandConditions(){
    this.userService.viewTermsandConditions('1').then(response => {
      let result: any = response;
      this.termsData = result['data'];
      this.termsandcondition = result['data'].term_content;
    })
  }

  updateTermsandConditions(){
    this.spinner.show();
    if(this.termsAndConditionForm.valid){
    let params = {
      term_id: 1,
      term_content: this.termsandcondition,
      term_updated_by : JSON.parse(localStorage.getItem('user_id'))
    }
    this.userService.updateTermsandConditions(params).then(response => {
      if(response['success']==true){
        this.spinner.hide();
        setTimeout(()=>{                           //<<<---using ()=> syntax
          this.ngxSmartModalService.open('success');
        }, 500);
      }
    })
   }else{
      this.spinner.hide();
      this.termsAndConditionForm.markAllAsTouched();
   }
  }
  closeTermsModal(){
    window.location.href = "/admin/admin_cms";
  }
}

