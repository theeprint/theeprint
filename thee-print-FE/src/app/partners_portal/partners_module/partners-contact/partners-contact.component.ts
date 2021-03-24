import { Component, OnInit } from '@angular/core';
import { Common } from 'src/app/admin/lib/common';
import { UserService } from 'src/app/services/user.service';
import {FormBuilder, FormGroup, Validators} from '@angular/forms';
import { NgxSpinnerService } from "ngx-spinner";
import { NgxSmartModalService } from 'ngx-smart-modal';

@Component({
  selector: 'app-partners-contact',
  templateUrl: './partners-contact.component.html',
  styleUrls: ['./partners-contact.component.scss']
})
export class PartnersContactComponent implements OnInit {
  termsandcondition:any;
  privacyPolicy:any;
  public activeSubmenu:string = '';
  constructor(private common : Common,  
    public userService: UserService,  
    protected formBuilder : FormBuilder,   
    private spinner: NgxSpinnerService,
    public ngxSmartModalService: NgxSmartModalService, ) { }
  contactUsForm: FormGroup;

  

  title = 'THEE PRINT';
  lat = 14.65820099999999;
  lng = 120.97810470000002;
  location = {
    scaledSize: {
      width: 50,
      height: 70
    
    },url: "assets/images/marker.png"
  };
 
  ngOnInit() {
    this.viewTermsandConditions();
    this.viewPrivacyPolicy();
    this.contactUsForm = this.formBuilder.group({
      fullname: ['',[Validators.required, Validators.maxLength(50)]], 
      contactNo: ['',[Validators.required, Validators.maxLength(11)]],
      email:['', Validators.compose([Validators.required,Validators.email,Validators.maxLength(70)])],
      message: ['',[Validators.required,  Validators.maxLength(300)]],
    });
  }

  
  public setHeaderView(e){
    this.common.setHeaderView(e.target.checked);
  }

  public setActiveSubmenu(menu){
    if(menu === this.activeSubmenu){
      this.activeSubmenu = '';
    }else{
      this.activeSubmenu = menu;
    }
    
  }
  
  sendEmailContactUs(){
    this.spinner.show();
    if (this.contactUsForm.valid){
    let params = {
      fullname:  this.contactUsForm.controls.fullname.value,
      contactNo: this.contactUsForm.controls.contactNo.value,
      email:     this.contactUsForm.controls.email.value,
      message:   this.contactUsForm.controls.message.value,
    }
    this.userService.sendEmailContactUs(params).then(response => {
      console.log(response);
      this.contactUsForm.reset();
      this.spinner.hide();
        setTimeout(()=>{                           //<<<---using ()=> syntax
          this.ngxSmartModalService.open('success');
        }, 500);
      }); 
    }else{
      this.spinner.hide();
      this.contactUsForm.markAllAsTouched();
    }
  }

  closeModal(){
    this.ngxSmartModalService.close('success');
  }

  keyPressNumbers(event) {
    var charCode = (event.which) ? event.which : event.keyCode;
    if ((charCode < 48 || charCode > 57)) {
      event.preventDefault();
      return false;
    } else {
      return true;
    }
  }

  viewTermsandConditions(){
    this.userService.viewTermsandConditions('1').then(response => {
      let result: any = response;
      this.termsandcondition = result['data'].term_content;
       console.log('sadsa',this.viewTermsandConditions);
    })
  }

  viewPrivacyPolicy(){
    this.userService.viewPrivacyPolicy('1').then(response => {
      let result: any = response;
      this.privacyPolicy =result['data'].privacy_content;
    })
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

}



