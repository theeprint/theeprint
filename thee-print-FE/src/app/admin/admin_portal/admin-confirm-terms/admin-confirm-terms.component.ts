import { Component, OnInit } from '@angular/core';
import { UserService } from 'src/app/services/user.service';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';

@Component({
  selector: 'app-admin-confirm-terms',
  templateUrl: './admin-confirm-terms.component.html',
  styleUrls: ['./admin-confirm-terms.component.scss']
})
export class AdminConfirmTermsComponent implements OnInit {
  termsData: any;
  termsandcondition:any;
  public termsAndConditionForm: FormGroup;

  constructor(public userService: UserService, public formBuilder: FormBuilder,) { }

  ngOnInit() {
    this.viewTermsandConditions();
  }

  set_terms_value(){
    this.termsAndConditionForm.controls.term_content.setValue(this.termsData.term_content);
  }
  
  viewTermsandConditions(){
    this.userService.viewTermsandConditions('1').then(response => {
      let result: any = response;
      this.termsData = result['data'].term_content;
      this.termsandcondition = result['data'].term_content;
      console.log('sadasd', this.termsData);
      this.set_terms_value();
    })
  }

}
