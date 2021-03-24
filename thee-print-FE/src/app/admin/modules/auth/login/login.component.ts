import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';
import { MainService } from 'src/app/services/main.service';
import { UserService } from 'src/app/services/user.service';
import { EnvService } from 'src/app/lib/env.service';
import { NgxSpinnerService } from "ngx-spinner";
import { FormatListBulletedOutlined } from '@material-ui/icons';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { CountdownModule } from 'ngx-countdown';

/* library */
// import { environment } from 'src/environments/environment';
// import { token } from 'src/app/admin/lib/token';
// import { urls } from 'src/app/admin/lib/urls';
// import { UserService } from 'src/app/services/user/user.service';


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {
  public loginForm: FormGroup;
  public forgotPasswordForm: FormGroup;
  errorMessage:any;
  invalidEmail:boolean=false;
  user_data: any;
  partner_id: any;
  passType = 'password';
  showPassword : boolean = false;
  inCorrectPassword: boolean;
  startDate: Date;
  locked_count: number = 0 ;
  is_locked: any;
  seconds: number = 0;
  end_date:any;
  is_loading_login: any
  start_date: any;
  constructor(
    public mainApi: MainService,
    private router: Router,
    private env: EnvService,
    private _router: ActivatedRoute,
    public formBuilder: FormBuilder,
    private spinner: NgxSpinnerService,
    public ngxSmartModalService: NgxSmartModalService, 
    public userService: UserService,
    public countdown: CountdownModule
  ) { 
    let emailRe = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    this.loginForm = this.formBuilder.group({
      username: ['', Validators.compose([Validators.required,Validators.pattern(emailRe),Validators.maxLength(70)])],
      password: ['', Validators.compose([Validators.required,Validators.minLength(8),Validators.maxLength(30)])]
    });
   
    this.forgotPasswordForm = this.formBuilder.group({
      email: ['', Validators.compose([Validators.required,Validators.pattern(emailRe),Validators.maxLength(70)])],
    });
  }

  ngOnInit() {
    this.user_data=JSON.parse(localStorage.getItem('user_id'));
    if(this.user_data){
      if(JSON.parse(localStorage.getItem('user_role_id'))=='1'){
        this.router.navigate(['admin/dashboard']);
      }else{
        this.router.navigate(['partners/partners_dashboard']);
      }
    }
    // this.partner_id=JSON.parse(localStorage.getItem('user_id'));
    // this.start_date = new Date(localStorage.getItem('locktime'));
    // this.locked_count = Number(localStorage.getItem('lockcount'))
    // console.log("date lock",this.start_date)
    // if( this.locked_count >= 3){
    //     this.is_locked = true;
    //     if(this.start_date){
    //         this.seconds = 300 - Math.ceil((this.end_date.getTime() - new Date(this.start_date).getTime()) / 1000);
    //         if (this.seconds <= 0){
    //             this.seconds = null;
    //             this.locked_count = 0;
    //             this.is_locked = false;
    //             localStorage.removeItem('locktime');
    //             localStorage.removeItem('lockcount');
    //           }
    //     }
    //   }
  }

  formHasErrors: boolean = false;
  emailNotExisting: boolean = false;
  isIncorrectPassword: boolean = false;
  attempt = 0;
  invalidlogin_counter = 0;
  
  handleEvent(e) {
    if (e.action == "done") {
      this.seconds = null;
      this.locked_count = 0;
      this.is_locked = false;
      localStorage.removeItem('locktime');
      localStorage.removeItem('lockcount');
    }
  }

  async login() {
      this.spinner.show();
      this.formHasErrors = false;
      this.emailNotExisting = false;
      this.isIncorrectPassword = false;
      if (this.loginForm.valid) {
        let params = {
          username : this.loginForm.controls.username.value,
          password : this.loginForm.controls.password.value,
          user_role_id : '1'
        }
        
        await this.userService.login(params).then(response => {
          if (response['success'] == true) {
            localStorage.setItem('token', response['results']['token']);
            localStorage.setItem('user_id', response['results']['user_id']);
            localStorage.setItem('user_role_id', response['results']['user_role_id']);
            if(response['results']['user_role_id']=='1'){
              this.env.redirect('admin/dashboard');
            }else{
              this.env.redirect('partners/partners_dashboard');
            }
          }
          else {
            console.log('invalid login');   
            let date_now = new Date();   
            this.spinner.hide();
            this.loginForm.reset();
            this.inCorrectPassword=true;
            this.errorMessage=response['results']['message'];
            this.locked_count += 1;
            localStorage.setItem('lockcount', this.locked_count.toString());
            console.log(this.locked_count);
            if( this.locked_count == 3){
              console.log("locked");
                    this.errorMessage=null;
                    this.is_locked = true;
                    let date_now = new Date();
                    localStorage.setItem('locktime', date_now.toString());
                    this.seconds = 300;
            }
            // this.attempt += 1;
            // console.log('attempt',this.attempt);
            // if(this.attempt >= 3){
            //   var expire = new Date();
            //   var today = new Date();
            //   expire.setTime(today.getTime() + 180000);
            //   document.cookie = "login=false;path=/;expires="+expire+";";
            // }
          }
        }).catch(ex => {
          console.log('Error logging in: ', ex);
        });
      }
      else {
        this.spinner.hide();
        this.loginForm.reset();
        this.loginForm.markAllAsTouched();
        this.errorMessage="Incorrect Email or Password, Please try again.";
        this.formHasErrors = true;
        if( this.locked_count > 3){
          this.is_locked = true;
          this.errorMessage=null;
        }
      }
  }

  show:boolean=false;
  showForgotPass(){
    this.show = true;
  }

  backToLoginForm(){
    this.forgotPasswordForm.reset();
    this.loginForm.reset();
    this.show = false;
    this.forgotPasswordForm.reset();
  }

  showPass() {
    this.passType = "text";
    this.showPassword = true;
  }

  hidePass() {
    this.passType = "password";
    this.showPassword = false;
  }
  forgotPassword(){
      this.spinner.show();
      if (this.forgotPasswordForm.valid) {
        let params = {
          email : this.forgotPasswordForm.controls.email.value,
        }
        this.userService.forgotPassword(params).then(response => {
          if(response['success']==true){
            this.invalidEmail=false;
            this.userService.sendEmailForgotPassword(response['result']['forgot_password_token']);
            this.backToLoginForm();
            this.forgotPasswordForm.reset();
            this.spinner.hide();
            setTimeout(()=>{                           //<<<---using ()=> syntax
              this.ngxSmartModalService.open('success');
            }, 500);
          }else{
            this.invalidEmail=true;
            this.spinner.hide();
          }
        });
      }else{
        this.spinner.hide();
        this.forgotPasswordForm.reset();
        this.forgotPasswordForm.markAllAsTouched();
      }
  }
  closeModal(){
    this.ngxSmartModalService.close('success');
  }
}

  























