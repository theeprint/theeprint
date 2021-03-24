import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';
import { MainService } from 'src/app/services/main.service';
import { UserService } from 'src/app/services/user.service';
import { EnvService } from 'src/app/lib/env.service';
import { Socket } from 'ngx-socket-io';
import { NgxSpinnerService } from "ngx-spinner";
import { ConfirmedValidator } from 'src/app/confirmed.validator';


@Component({
  selector: 'app-partners-confirmation',
  templateUrl: './partners-confirmation.component.html',
  styleUrls: ['./partners-confirmation.component.scss']
})
export class PartnersConfirmationComponent implements OnInit {
  confirmation_code:any;
  errorMessage:any;
  user_details:any;
  public confirmationForm:FormGroup;
  passwordMismatched:any;
  password:any;
  retype_password:any;
  partner_details: any;
  partner_id: any;
  partner_company: any;
  passType = "password";
  passType1 = "password"
  showPassword: any;
  showPassword1: any;
  password_matched:boolean;
  inCorrectPassword: boolean;
  user_login_details: any;
  constructor(
      public mainApi: MainService,
      private router: Router,
      private env: EnvService,
      private _router: ActivatedRoute,
      public formBuilder: FormBuilder,
      public userService: UserService,
      private socket: Socket,
      private spinner: NgxSpinnerService,
      private route: ActivatedRoute
  ) { 
    this.confirmationForm = this.formBuilder.group({
      password: ['', Validators.compose([Validators.required,Validators.minLength(8)])],
      retype_password: ['', Validators.compose([Validators.required,Validators.minLength(8)])]
    })
  }

  ngOnInit() {
    this.confirmation_code = this.route.snapshot.paramMap.get('code');
    this.getPartnerDetails(this.confirmation_code);
  }

  confirmPassword(){
    console.log('asa');
    let password=this.confirmationForm.controls.password.value;
    let retype_password=this.confirmationForm.controls.retype_password.value;
    if(password==retype_password){
      this.password_matched=true;
      console.log(this.password_matched)
    }else{
      this.password_matched=false;
      console.log(this.password_matched)
    }
  }

  changePassword(){   
    console.log('change password', this.confirmationForm.status)
    if(this.confirmationForm.valid){
      this.spinner.show();
      if(this.confirmationForm.controls.password.value!=this.confirmationForm.controls.retype_password.value){
      this.passwordMismatched=true;
      this.spinner.hide();
      }else{
      let params = {
            user_id : this.user_details[0].user_id,
            user_password : this.confirmationForm.controls.password.value,
        }
        this.userService.confirmPartner(params).then(response => {
          console.log('confirm partner',response);
          this.user_login_details=response['results'];
          if(response['success']==true){
            localStorage.setItem('token', this.user_login_details.token);
            localStorage.setItem('user_id', this.user_login_details.user_id);
            localStorage.setItem('user_role_id', this.user_login_details.user_role_id);
            if(this.user_login_details.user_role_id==2){
              this.userService.getAdminAccounts().then(response => {
                console.log('getAdminAccounts', response)
                if(response['success']==true){
                  console.log('admin', response['result']['datas']);
                  for(let i=0;i<response['result']['datas'].length;i++){
                    this.sendNotification(response['result']['datas'][i].user_id);
                  } 
                  this.userService.sendEmailFirstLogin(this.partner_company);
                  setTimeout(()=>{
                      this.env.redirect('partners/partners_dashboard');
                  }, 5000);
                }
              });
            }else{
              setTimeout(()=>{     
                  this.env.redirect('admin/dashboard');
              }, 5000);
            }
          }else{
            this.spinner.hide();
            this.errorMessage=response['results']['message'];
          }
        });
    }
    }else{
      this.spinner.hide();
      this.confirmationForm.markAllAsTouched();
  }
  }
  getPartnerDetails(confirmation_code){
    console.log(confirmation_code)
    let params = {
        confirmation_code : confirmation_code
    }
    this.userService.getPartnerConfirmation(params).then(response => {
      if(response['success']==false){
        this.env.redirect('/');
      }else{
        this.partner_company=response['result']['datas'][0].partner_company;
        this.user_details=response['result']['datas'];
      }
    });
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
  sendNotification(user_id){
    console.log('test emit');
    let notification={
      notification_receiver: user_id,
    }
    this.socket.emit("notification", notification);
  }
}