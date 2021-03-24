import { Component, OnInit } from '@angular/core';
import { UserService } from 'src/app/services/user.service';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { NgxSmartModalService } from 'ngx-smart-modal';
import {ImageCroppedEvent} from 'ngx-image-cropper';
import { NgxSpinnerService } from "ngx-spinner";

@Component({
  selector: 'app-partners-profile',
  templateUrl: './partners-profile.component.html',
  styleUrls: ['./partners-profile.component.scss']
})
export class PartnersProfileComponent implements OnInit {
  updateAddressForm : FormGroup;
  public addressForm: FormGroup;
  viewSinglePartner: any;
  updateSinglePartner: any;

  user_data: any;
  public singlePartnerForm: FormGroup;
 
  /*partners_first_form*/
  partner_logo: any;
  imageChangedEvent : any = '';
  croppedImage : any = '';
  partnerLogo : any = '';
  cProfilePhoto : any = '';
  show:boolean = false;
  isCropping = false;
  file: File;
  fileName: string = null;
  uploadedESig:any = false;
  uploadedIdImg:any = false;
  photo_for_upload: any;

  /*partners_second_form*/
  user_avatar: any;
  userAvatar: any;
  imgChangedEvent : any = '';
  user_photo : any = '';
  croppedImg : any = '';
  profilephoto : any = '';
  cprofilePhoto : any = '';
  photoForUpload: any;
  files: File;
  filename: string = null;
  uploadedEsig:any = false;
  uploadedIdimg:any = false;
  partnersCompanyForm: FormGroup;
  passwordForm : FormGroup;
  partnersOwnerForm: FormGroup;
  partner_details: any;
  company_addresses: any;
  companyLogo: any;
  company_photo: Blob;
  partner_id: any;
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
    public formBuilder: FormBuilder, 
    private spinner: NgxSpinnerService,
    public userService: UserService,  
    public ngxSmartModalService: NgxSmartModalService,) 

    { 
      this.addressForm = this.formBuilder.group({
        company_address_label: ['', Validators.compose([Validators.required,Validators.maxLength(250)])],
        company_address: ['', Validators.compose([Validators.required,Validators.maxLength(250)])],
        company_address_default: [''],
        company_address_person_firstname: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
        company_address_person_lastname: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
        company_address_contact: ['', Validators.compose([Validators.required])],
      })

      this.partnersCompanyForm = this.formBuilder.group({
        company_name: ['',[Validators.required]],
        tin_number: ['',[Validators.required, Validators.pattern("^[0-9]*$")]],
        company_address: ['',[Validators.required]],
        hidden_partners_company_profile_photo: [''],
        partners_company_profile_photo: [''],
        profile_photo: ['']
      });
      this.partnersOwnerForm = this.formBuilder.group({
        first_name: ['',[Validators.required]],
        last_name: ['',[Validators.required]],
        email:['', Validators.compose([Validators.required,Validators.email,Validators.maxLength(300)])],
        phone: ['',[Validators.required, Validators.pattern("^[0-9]*$"), Validators.maxLength(11)]],
        hidden_user_picture: [''],
        user_picture: ['']
      });
      this.updateAddressForm = this.formBuilder.group({
        company_address_label: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
        company_address: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
        company_address_default: [''],
        company_address_person_firstname: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
        company_address_person_lastname: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
        company_address_contact: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
        company_address_id: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
      })
      this.passwordForm = this.formBuilder.group({
        currentPassword: ['',[Validators.required, Validators.minLength(8)]],
        newPassword: ['',[Validators.required, Validators.minLength(8)]],
        newPassword1:['',[Validators.required, Validators.minLength(8)]],
      });
    }

  ngOnInit() {
    this.user_data=JSON.parse(localStorage.getItem('user_id'));
    this.partner_id=JSON.parse(localStorage.getItem('user_id'));
    this.singlePartner(this.user_data);
    console.log(this.user_data)
    
  }

  playAudioError(){
    let audio = new Audio();
    audio.src = "../../../assets/audio/fail.mp3";
    audio.load();
    audio.play();
  }

  onChange(event: any){
    console.log(event);
    this.partnersCompanyForm.controls.partners_company_profile_photo.setValue('');
  }

  onChanges(event: any){
    console.log(event);
    this.partnersOwnerForm.controls.user_picture.setValue('');
  }

  set_user_value(){
    this.partnersCompanyForm.controls.company_name.setValue(this.partner_details.partner_company);
    this.partnersCompanyForm.controls.tin_number.setValue(this.partner_details.partner_tin_number);
    this.partnersCompanyForm.controls.company_address.setValue(this.partner_details.partner_address);
    this.partnersOwnerForm.controls.first_name.setValue(this.partner_details.user_profile_first_name);
    this.partnersOwnerForm.controls.last_name.setValue(this.partner_details.user_profile_last_name);
    this.partnersOwnerForm.controls.phone.setValue(this.partner_details.user_profile_phone);
    this.partnersOwnerForm.controls.email.setValue(this.partner_details.user_email);
  }

  singlePartner(user_id){
    this.userService.singlePartner(user_id).then(response => {
      this.partner_details = response['result'][0];
      this.getAddresses(this.partner_details.partner_id);
      this.set_user_value();
    })
  }
  getAddresses(user_id){
    this.userService.getCompanyAddress(user_id).then(response => {
      this.company_addresses=response['result']['data']
      console.log('tsdaite',this.company_addresses);
    })
  }

  updatePartner(){
    this.spinner.show();
    if (this.partnersOwnerForm.valid&&this.partnersCompanyForm.valid) {
      //update user profile
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
      //update company profile
      let formData2 = new FormData();
      formData2.append('partner_company', this.partnersCompanyForm.value.company_name);
      formData2.append('partner_tin_number', this.partnersCompanyForm.value.tin_number.replace('-', ''));
      formData2.append('partner_address', this.partnersCompanyForm.value.company_address);
      if(this.croppedImage){
        formData2.append('partner_logo',this.company_photo, this.croppedImage);
      }
      this.userService.updateCompanyProfile(this.partner_id, formData2).then(response => {
        if(response['success']==true){
          this.singlePartner(this.partner_id);
          this.spinner.hide();
          setTimeout(()=>{                           //<<<---using ()=> syntax
            this.ngxSmartModalService.open('updateSuccess');
          }, 500);
        }
      });
    }else{
      this.partnersOwnerForm.markAllAsTouched();
      this.partnersCompanyForm.markAllAsTouched();
      this.playAudioError();
      this.spinner.hide();
      console.log('false');
    }
  }

  isSelected:any;
  selectAddress(id){
    this.isSelected = id;
    this.addressForm.controls.partner_address.setValue(id);
  }

  addNewAddressesModal(){
    this.ngxSmartModalService.open('addnewaddress');
  }
  closeNewAddressesModal(){
    this.addressForm.reset();
    this.ngxSmartModalService.close('addnewaddress');
  }

  changePasswordModal(){
    this.ngxSmartModalService.open('changePassword');
  }
  closeChangePasswordModal(){
    this.passwordForm.reset();
    this.ngxSmartModalService.close('changePassword');
  }

  saveSuccessModal(){
    this.ngxSmartModalService.open('success');
  }
  closeSuccessModal(){
    this.ngxSmartModalService.close('success');
  }

  closeUpdateAddModal(){
    this.ngxSmartModalService.close('updateAddressSuccess');
  }

  /* company_form_modal */
  companyLogoChange(event: any) {
    this.isCropping = true;
    this.imageChangedEvent = event;
    if( event.target.files[0].type != 'image/jpeg' && event.target.files[0].type != 'image/png'){
      this.playAudioError();
      this.ngxSmartModalService.open('invalidCompany');
      return false;
    }
    this.companyLogo = event.target.files[0].name
    this.partnersCompanyForm.patchValue({
      hidden_partners_company_profile_photo: this.companyLogo
    });
    this.openCropperModal();
  }

  invalidFormat(){
    this.ngxSmartModalService.close('invalidCompany');
  }


  imageCropped(event: ImageCroppedEvent) {
    this.croppedImage = event.base64;
    this.company_photo=this.b64toBlob(event.base64.replace("data:image/png;base64,", ""), 'image/jpeg', 512);
    console.log('imageType', this.company_photo);
  }
  imageLoaded() {
  }
  cropperReady() {
  }
  loadImageFailed() {
  }
  doneCropping() {
    this.isCropping = false;
  }
  openCropperModal() {
    this.ngxSmartModalService.open('cropperviewer');
  }
  dismissCropperModal() {
    this.ngxSmartModalService.close('cropperviewer');
  }


  /* user_form_modal */
  userAvatarChange(event: any) {
    this.isCropping = true;
    this.imgChangedEvent = event;
    if( event.target.files[0].type != 'image/jpeg' && event.target.files[0].type != 'image/png'){
      this.playAudioError();
      this.ngxSmartModalService.open('invalidUser');
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

  invalidUserFormat(){
    this.ngxSmartModalService.close('invalidUser');
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
  addAddress(){
    this.spinner.show();
    if (this.addressForm.valid) {
      let params = {
        partner_id : this.partner_details.partner_id,
        company_address_label : this.addressForm.controls.company_address_label.value,
        company_address : this.addressForm.controls.company_address.value,
        company_address_default : this.addressForm.controls.company_address_default.value,
        company_address_person_firstname : this.addressForm.controls.company_address_person_firstname.value,
        company_address_person_lastname : this.addressForm.controls.company_address_person_lastname.value,
        company_address_contact : this.addressForm.controls.company_address_contact.value
      }
      this.userService.addAddress(params).then(response => {
        if(response['success']==true){
          this.addressForm.reset();
          this.ngxSmartModalService.close('addnewaddress');
          this.getAddresses(this.partner_details.partner_id);
          this.spinner.hide();
          setTimeout(()=>{                           //<<<---using ()=> syntax
            this.ngxSmartModalService.open('addSuccess');
          }, 500);
        }
      });
    }else{
      this.spinner.hide();
      this.addressForm.markAllAsTouched();
      this.playAudioError();
    }
  }
  closeAddSuccessModal(){
    this.ngxSmartModalService.close('addSuccess');
  }
  updateAddress(){
    this.spinner.show();
    if (this.updateAddressForm.valid) {
      let params = {
        partner_id:this.partner_details.partner_id,
        company_address_label : this.updateAddressForm.controls.company_address_label.value,
        company_address : this.updateAddressForm.controls.company_address.value,
        company_address_default : this.updateAddressForm.controls.company_address_default.value,
        company_address_person_firstname : this.updateAddressForm.controls.company_address_person_firstname.value,
        company_address_person_lastname : this.updateAddressForm.controls.company_address_person_lastname.value,
        company_address_contact : this.updateAddressForm.controls.company_address_contact.value
      }
      this.ngxSmartModalService.close('updateAddressModal');
      this.userService.updateCompanyAddress(this.updateAddressForm.controls.company_address_id.value, params).then(response => {
        if(response['success']==true){
          this.getAddresses(this.partner_details.partner_id);
          this.spinner.hide();
          setTimeout(()=>{                           //<<<---using ()=> syntax
            this.ngxSmartModalService.open('updateAddressSuccess');
          }, 500);
        }
      });
    }else{
      this.updateAddressForm.markAllAsTouched();
    }
  }
  openUpdateAddressModal(company_address_id){
    this.userService.getSingleCompanyAddress(company_address_id).then(response => {
      this.updateAddressForm.controls.company_address_id.setValue(response['result']['data'][0].company_address_id);
      this.updateAddressForm.controls.company_address_label.setValue(response['result']['data'][0].company_address_label);
      this.updateAddressForm.controls.company_address.setValue(response['result']['data'][0].company_address);
      if(response['result']['data'][0].company_address_default==1){
        this.updateAddressForm.patchValue({company_address_default:true});
      }else{
        this.updateAddressForm.patchValue({company_address_default:false});
      }
      this.updateAddressForm.controls.company_address_person_firstname.setValue(response['result']['data'][0].company_address_person_firstname);
      this.updateAddressForm.controls.company_address_person_lastname.setValue(response['result']['data'][0].company_address_person_lastname);
      this.updateAddressForm.controls.company_address_contact.setValue(response['result']['data'][0].company_address_contact);
    })
    this.ngxSmartModalService.open('updateAddressModal');
  }
  closeUpdateAddressModal(){
    this.ngxSmartModalService.close('updateAddressModal');
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
      this.playAudioError();
    }
  }
  closeModal(){
    this.ngxSmartModalService.close('passwordSuccess');
  }
}
