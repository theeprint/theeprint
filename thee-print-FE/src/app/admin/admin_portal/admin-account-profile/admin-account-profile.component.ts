import { Component, OnInit } from '@angular/core';
import {FormBuilder, FormGroup, Validators} from '@angular/forms';
import {ImageCroppedEvent} from 'ngx-image-cropper';
import { UserService } from 'src/app/services/user.service';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { NgxSpinnerService } from "ngx-spinner";
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';
import { Target } from '@angular/compiler';

@Component({
  selector: 'app-admin-account-profile',
  templateUrl: './admin-account-profile.component.html',
  styleUrls: ['./admin-account-profile.component.scss']
})
export class AdminAccountProfileComponent implements OnInit {
  partnersOwnerForm : FormGroup;
  passwordForm : FormGroup;
  partner_details: any;
  partner_id:any;
  croppedImg: string;
  user_photo: any;
  userAvatar: any;
  imgChangedEvent: any;
  isCropping: boolean;
  user_profile: any;
  cprofilePhoto: any;
  
  //change password
  currentPassType="password";
  newPassType="password";
  newPassType1="password";
  showCurrentPassword:any;
  showNewPassword:any;
  showNewPassword1:any;
  password_matched:boolean;
  inCorrectPassword: boolean;

  constructor(
    protected formBuilder : FormBuilder,
    private route: ActivatedRoute,
    public userService: UserService,  
    private spinner: NgxSpinnerService,
    public ngxSmartModalService: NgxSmartModalService,
  ) {
    this.partnersOwnerForm = this.formBuilder.group({
      first_name: ['',[Validators.required]],
      last_name: ['',[Validators.required]],
      email:['', Validators.compose([Validators.required,Validators.email,Validators.maxLength(300)])],
      phone: ['',[Validators.required, Validators.maxLength(11)]],
      hidden_user_picture: [''],
      user_picture: ['']
    });
    this.passwordForm = this.formBuilder.group({
      currentPassword: ['',[Validators.required, Validators.minLength(8)]],
      newPassword: ['',[Validators.required, Validators.minLength(8)]],
      newPassword1:['',[Validators.required, Validators.minLength(8)]],
    });
   }

  ngOnInit() {
    this.partner_id=JSON.parse(localStorage.getItem('user_id'));
    this.singlePartner(this.partner_id);
    this.getUserProfile(this.partner_id);
  }

  playAudioError(){
    let audio = new Audio();
    audio.src = "../../../assets/audio/fail.mp3";
    audio.load();
    audio.play();
  }

  singlePartner(user_id){
    this.userService.singlePartner(user_id).then(response => {
      this.partner_details = response['result'][0];
      this.set_user_value();
    })
  }
  
  set_user_value(){
    this.partnersOwnerForm.controls.first_name.setValue(this.partner_details.user_profile_first_name);
    this.partnersOwnerForm.controls.last_name.setValue(this.partner_details.user_profile_last_name);
    this.partnersOwnerForm.controls.phone.setValue(this.partner_details.user_profile_phone);
    this.partnersOwnerForm.controls.email.setValue(this.partner_details.user_email);
  }


  onChange(event: any){
    console.log(event);
    this.partnersOwnerForm.controls.user_picture.setValue('');
  }

  userAvatarChange(event: any) {
    console.log('dsadsad');
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
    //  console.log('sdasd',this.opencropperModal);
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
        this.userService.updateProfile(this.partner_id, formData).then(response => {
        //update user email
          if(response['success']==true){
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
          }
        });
      }else{
        this.partnersOwnerForm.markAllAsTouched();
        this.spinner.hide();
        console.log('false');
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
  getUserProfile(user_id){
    this.userService.getProfile(user_id).then(response => {
      this.user_profile=response['result'];
      console.log(this.user_profile);
    })
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
  changePasswordModal(){
    this.ngxSmartModalService.open('changePassword');
  }
  closeChangePasswordModal(){
    this.passwordForm.reset();
    this.ngxSmartModalService.close('changePassword');
  }
  validatePassword(){
    let params = {
      password:this.passwordForm.controls.currentPassword.value,
      user_id: JSON.parse(localStorage.getItem('user_id'))
    }
    this.userService.validatePassword(params).then(response => {
      if(response['success']==true){
        console.log(response);
        this.inCorrectPassword=false;
      }else{
        this.inCorrectPassword=true;
      }
    });
  }
  showCurrentPass() {
    this.currentPassType = "text";
    this.showCurrentPassword = true;
  }

  hideCurrentPass() {
    this.currentPassType = "password";
    this.showCurrentPassword = false;
  }

  showNewPass() {
    this.newPassType = "text";
    this.showNewPassword = true;
  }

  hideNewPass() {
    this.newPassType = "password";
    this.showNewPassword = false;
  }

  showNewPass1() {
    this.newPassType1 = "text";
    this.showNewPassword1 = true;
  }

  hideNewPass1() {
    this.newPassType1 = "password";
    this.showNewPassword1 = false;
  }
  confirmPassword(){
    let new_password=this.passwordForm.controls.newPassword.value;
    let confirm_password=this.passwordForm.controls.newPassword1.value;
    if(new_password==confirm_password){
      this.password_matched=true;
      console.log(this.password_matched)
    }else{
      this.password_matched=false;
      console.log(this.password_matched)
    }
  }
  updatePassword(){
    this.spinner.show();
    if(this.passwordForm.valid&&this.password_matched&&!this.inCorrectPassword){
      let params = {
        user_password: this.passwordForm.value.newPassword,
      }
      this.userService.deactivateUser(this.partner_id, params).then(response => {
        if(response['success']==true){
          this.passwordForm.reset();
          this.ngxSmartModalService.close('changePassword');
          this.spinner.hide();
          setTimeout(()=>{                           //<<<---using ()=> syntax
            this.ngxSmartModalService.open('passwordSuccess');
          }, 500);
        }
      })
    }else{
      this.spinner.hide();
      this.passwordForm.markAllAsTouched();
    }
  }
  closeAccountProfileModal(){
    window.location.href = "/admin/dashboard"; 
    this.ngxSmartModalService.close('passwordSuccess');
  }
}
