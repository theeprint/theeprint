import { Component, OnInit } from '@angular/core';
import {FormBuilder, FormGroup, Validators} from '@angular/forms';
import {ImageCroppedEvent} from 'ngx-image-cropper';
import { UserService } from 'src/app/services/user.service';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { NgxSpinnerService } from "ngx-spinner";
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';

@Component({
  selector: 'app-admin-edit-staffs',
  templateUrl: './admin-edit-staffs.component.html',
  styleUrls: ['./admin-edit-staffs.component.scss']
})
export class AdminEditStaffsComponent implements OnInit {

  partner_id:any;
  partnersCompanyForm : FormGroup;
  updateAddressForm : FormGroup;
  imageName: any;
  imageChangedEvent : any = '';
  croppedImage : any = '';
  profilePhoto : any = '';
  cProfilePhoto : any = '';
  partnersOwnerForm: FormGroup;
  product_list: any;
  partner_details:any;
  partner_profile:any;
  tin_number:any;
  user_photo: any;
  userAvatar: any;
  imgChangedEvent: any;
  isCropping: boolean;
  croppedImg: string;
  company_photo: any;
  companyLogo: any;
  company_addresses: any;
  addressForm: FormGroup;
  company_address=[];
  deactivateForm: FormGroup;
  errorMessage: any;
  passType = 'password';
  showPassword : boolean = false;
  errorMessage1: any;

  invalidEmail:boolean=false;

  constructor(
    protected formBuilder : FormBuilder,
    private route: ActivatedRoute,
    public userService: UserService,  
    private spinner: NgxSpinnerService,
    public ngxSmartModalService: NgxSmartModalService,
  ) 
  {
    
    this.partnersOwnerForm = this.formBuilder.group({
      first_name: ['',[Validators.required]],
      last_name: ['',[Validators.required]],
      email:['', Validators.compose([Validators.required,Validators.email,Validators.maxLength(300)])],
      phone: ['',[Validators.required, Validators.pattern("^[0-9]*$"), Validators.maxLength(11)]],
      hidden_user_picture: [''],
      user_picture: ['']
    });
    this.deactivateForm = this.formBuilder.group({
      password: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
    })
  }

  ngOnInit() {
    this.partner_id=this.route.snapshot.paramMap.get('staff_id');
    this.singlePartner(this.partner_id);
  }

  playAudioError(){
    let audio = new Audio();
    audio.src = "../../../assets/audio/fail.mp3";
    audio.load();
    audio.play();
  }

  onChange(event: any){
    console.log(event);
    this.partnersOwnerForm.controls.user_picture.setValue('');
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


  b64toBlob(b64Data, contentType='', sliceSize=512) {
    const byteCharacters = atob(b64Data);
    const byteArrays = [];
    for (let offset = 0; offset < byteCharacters.length; offset += sliceSize) {
      const slice = byteCharacters.slice(offset, offset + sliceSize);
      const byteNumbers = new Array(slice.length);
      for (let i = 0; i < slice.length; i++) {
        byteNumbers[i] = slice.charCodeAt(i);
      }
      const byteArray = new Uint8Array(byteNumbers);
      byteArrays.push(byteArray);
    }
    const blob = new Blob(byteArrays, {type: contentType});
    return blob;
  }

  userAvatarChange(event: any){
    this.isCropping = true;
    this.imgChangedEvent = event;
    if( event.target.files[0].type != 'image/jpeg' && event.target.files[0].type != 'image/png'){
      this.playAudioError();
      this.ngxSmartModalService.open('invalid');
      return false;
    }
    this.userAvatar = event.target.files[0].name;
    if(this.userAvatar.length>15){
      this.userAvatar = event.target.files[0].name.substr(0, 15)+'...';
    }
    this.partnersOwnerForm.patchValue({
      hidden_user_picture: this.userAvatar
    });
    this.opencropperModal();
  }
  
  invalidFormat(){
    this.ngxSmartModalService.close('invalid');
  }

  imgCropped(event: ImageCroppedEvent) {
    this.croppedImg = event.base64;
    this.user_photo =this.b64toBlob(event.base64.replace("data:image/png;base64,", ""), 'image/jpeg', 512);
    console.log('imageType', this.user_photo);
  }
  opencropperModal() {
    this.ngxSmartModalService.open('cropperviewer2');
  }
  dismisscropperModal() {
    this.ngxSmartModalService.close('cropperviewer2');
  }
 
  updatePartner(){
      this.spinner.show(); 
      if (this.partnersOwnerForm.valid) {
        let formData = new FormData();
        formData.append('user_profile_first_name', this.partnersOwnerForm.value.first_name);
        formData.append('user_profile_last_name', this.partnersOwnerForm.value.last_name);
        formData.append('user_profile_phone', this.partnersOwnerForm.value.phone);
        if(this.croppedImg){
          formData.append('user_profile_avatar', this.user_photo, this.croppedImg,);
        }
        this.userService.updateProfile(this.partner_id, formData);
        //update user email
        let params = {
          user_email:this.partnersOwnerForm.value.email
        }
        if(this.partnersOwnerForm.value.email!=this.partner_details.user_email){
          console.log('changed');
          let params = {
            new_email:  this.partnersOwnerForm.value.email,
            old_email: this.partner_details.user_email,
          }
          console.log(params);
          this.userService.sendEmailChangeEmail(params);
        }
        this.userService.deactivateUser(this.partner_id, params);
        this.singlePartner(this.partner_id);
        this.spinner.hide();
        setTimeout(()=>{                           //<<<---using ()=> syntax
          this.ngxSmartModalService.open('updateSuccess');
        }, 500);
      }else{
        this.partnersOwnerForm.markAllAsTouched();
        this.playAudioError();
        this.spinner.hide();
        console.log('false');
      }
  }
  
  
  openDeactivateAccountModal(){
    this.ngxSmartModalService.open('deactivateAccountModal');
  }
  deactivateAccount(user_id){
    this.spinner.show(); 
    let params = {
      password:this.deactivateForm.controls.password.value,
      user_id: JSON.parse(localStorage.getItem('user_id'))
    }
    this.userService.validatePassword(params).then(response => {
      if(response['success']==true){
        let params = {
          user_status:0
        }
        console.log('test', params);
        this.userService.deactivateUser(user_id, params).then(response => {
          this.singlePartner(this.partner_id);
          this.spinner.hide(); 
          setTimeout(()=>{     
            this.deactivateForm.reset();                     //<<<---using ()=> syntax
            this.ngxSmartModalService.close('deactivateAccountModal');
          }, 500);
        })
       
      }else{
        this.spinner.hide();
        this.errorMessage=response['results'].message;
      }
    });
  }
  activateAccount(user_id){
    this.spinner.show(); 
    let params = {
      password:this.deactivateForm.controls.password.value,
      user_id: JSON.parse(localStorage.getItem('user_id'))
    }
    this.userService.validatePassword(params).then(response => {
      if(response['success']==true){
        let params = {
          user_status:1
        }
        this.userService.deactivateUser(user_id, params).then(response => {
          this.singlePartner(this.partner_id);
          this.spinner.hide(); 
          setTimeout(()=>{              
            this.deactivateForm.reset();               //<<<---using ()=> syntax
            this.ngxSmartModalService.close('activateAccountModal');
          }, 500);
        })
      }else{
        this.spinner.hide(); 
        this.errorMessage1=response['results'].message;
      }
    });
  }
  openActivateAccountModal(){
    this.ngxSmartModalService.open('activateAccountModal');
  }
  singlePartner(user_id){
    this.userService.singlePartner(user_id).then(response => {
      this.partner_details = response['result'][0];
      console.log('this.partner_details', this.partner_details )
      this.set_user_value();
    })
  }
  set_user_value(){
    this.partnersOwnerForm.controls.first_name.setValue(this.partner_details.user_profile_first_name);
    this.partnersOwnerForm.controls.last_name.setValue(this.partner_details.user_profile_last_name);
    this.partnersOwnerForm.controls.phone.setValue(this.partner_details.user_profile_phone);
    this.partnersOwnerForm.controls.email.setValue(this.partner_details.user_email);
  }
  showPass(){
    this.passType = "text";
    this.showPassword = true;
  }
  hidePass() {
    this.passType = "password";
    this.showPassword = false;
  }

  forgotPassword(){
    this.spinner.show();
   
    if (this.partnersOwnerForm.valid) {
      let params = {
        email : this.partnersOwnerForm.controls.email.value,
      }
      this.userService.resendCredentials(params).then(response => {
        if(response['success']==true){
          this.invalidEmail=false;
          this.userService.sendEmailForgotPassword(response['result']['forgot_password_token']);
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
      this.partnersOwnerForm.markAllAsTouched();
    }
  }

  closeModal(){
    this.ngxSmartModalService.close('success');
  }
}
