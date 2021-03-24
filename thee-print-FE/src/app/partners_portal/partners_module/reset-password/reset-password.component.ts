import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';
import { MainService } from 'src/app/services/main.service';
import { UserService } from 'src/app/services/user.service';
import { EnvService } from 'src/app/lib/env.service';
import { NgxSpinnerService } from "ngx-spinner";
import { FormatListBulletedOutlined } from '@material-ui/icons';
import { NgxSmartModalService } from 'ngx-smart-modal';

@Component({
  selector: 'app-reset-password',
  templateUrl: './reset-password.component.html',
  styleUrls: ['./reset-password.component.scss']
})
export class ResetPasswordComponent implements OnInit {
  public confirmationForm:FormGroup;
  confirmation_code:any;
  passType = "password";
  showPassword : boolean = false;
  showPassword1
  passType1 = "password";
  constructor(
    public mainApi: MainService,
    private router: Router,
    private env: EnvService,
    private _router: ActivatedRoute,
    public formBuilder: FormBuilder,
    private spinner: NgxSpinnerService,
    public ngxSmartModalService: NgxSmartModalService, 
    public userService: UserService,
  ) { 
    this.confirmationForm = this.formBuilder.group({
      password: ['', Validators.compose([Validators.required,Validators.minLength(8)])],
      retype_password: ['', Validators.compose([Validators.required,Validators.minLength(8)])]
    })
  }

  ngOnInit() {
    this.confirmation_code = this._router.snapshot.paramMap.get('code');
    this.getPartnerDetails(this.confirmation_code);
  }
  getPartnerDetails(confirmation_code){
    this.spinner.show();
    let params = {
      forgot_password_token : confirmation_code
    }
    this.userService.validateResetToken(params).then(response => {
      if(response['success']==false){
        // this.spinner.hide();
          setTimeout(()=>{                           //<<<---using ()=> syntax
            this.ngxSmartModalService.open('invalid');
          }, 500);
          setTimeout(()=>{
            this.env.redirect('/');
          }, 10000);
      }else{
        console.log(response);
      }
    });
  }
  resetPassword(){   
    this.spinner.show();
    if(this.confirmationForm.valid){
      if(this.confirmationForm.controls.password.value!=this.confirmationForm.controls.retype_password.value){
      }else{
      let params = {
        forgot_password_token : this.confirmation_code,
        new_password : this.confirmationForm.controls.password.value,
      }
      console.log(params)
      this.userService.resetPassword(params).then(response => {
        if(response['success']==true){
          this.spinner.hide();
          setTimeout(()=>{                           //<<<---using ()=> syntax
            this.ngxSmartModalService.open('success');
          }, 500);
          if(response['result']['data'].user_role_id=='2'){
            setTimeout(()=>{ 
              this.router.navigate(['/partners_login']);
            }, 3000);
          }else{
            setTimeout(()=>{ 
              this.router.navigate(['/admin/login']);
            }, 3000);
          }
        }
      });
    }
    }else{
      this.confirmationForm.markAllAsTouched();
  }
  }

  showPass() {
    this.passType = "text";
    this.showPassword = true;
  }

  hidePass() {
    this.passType = "password";
    this.showPassword = false;
  }

  showPass1() {
    this.passType1 = "text";
    this.showPassword1 = true;
  }

  hidePass1() {
    this.passType1 = "password";
    this.showPassword1 = false;
  }

}
