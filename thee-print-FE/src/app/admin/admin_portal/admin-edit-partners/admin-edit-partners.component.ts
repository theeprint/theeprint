import { Component, OnInit } from '@angular/core';
import {FormBuilder, FormGroup, Validators} from '@angular/forms';
import {ImageCroppedEvent} from 'ngx-image-cropper';
import { UserService } from 'src/app/services/user.service';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { NgxSpinnerService } from "ngx-spinner";
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';


@Component({
  selector: 'app-admin-edit-partners',
  templateUrl: './admin-edit-partners.component.html',
  styleUrls: ['./admin-edit-partners.component.scss']
})
export class AdminEditPartnersComponent implements OnInit {
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
    public ngxSmartModalService: NgxSmartModalService,
    private spinner: NgxSpinnerService,
  ) {}

  ngOnInit() {
    this.partner_id=this.route.snapshot.paramMap.get('partner_id');
    this.singlePartner(this.partner_id);
    this.partnersCompanyForm = this.formBuilder.group({
      company_name: ['',[Validators.required]],
      tin_number: ['',[Validators.required, Validators.pattern("^[0-9]*$"), Validators.maxLength(12)]],
      company_address: ['',[Validators.required]],
      hidden_partners_company_profile_photo: [''],
      partners_company_profile_photo: [''],
      profile_photo: ['']
    });
    let emailRe = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    this.partnersOwnerForm = this.formBuilder.group({
      first_name: ['',[Validators.required]],
      last_name: ['',[Validators.required]],
      email:['', Validators.compose([Validators.required,Validators.pattern(emailRe),Validators.maxLength(300)])],
      phone: ['',[Validators.required, Validators.pattern("^[0-9]*$"), Validators.maxLength(11)]],
      hidden_user_picture: [''],
      user_picture: ['']
    });
    this.addressForm = this.formBuilder.group({
      company_address_label: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
      company_address: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
      company_address_default: [''],
      company_address_person_firstname: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
      company_address_person_lastname: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
      company_address_contact: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
    })
    this.updateAddressForm = this.formBuilder.group({
      company_address_label: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
      company_address: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
      company_address_default: [''],
      company_address_person_firstname: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
      company_address_person_lastname: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
      company_address_contact: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
      company_address_id: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
    })
    this.deactivateForm = this.formBuilder.group({
      password: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
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
  addNewAddressesModal(){
    this.ngxSmartModalService.open('addnewaddress');
  }

  closeNewAddressesModal(){
    this.ngxSmartModalService.close('addnewaddress');
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

  onChange(event: any){
    console.log(event);
    this.partnersCompanyForm.controls.partners_company_profile_photo.setValue('');
  }

  onChanges(event: any){
    console.log(event);
    this.partnersOwnerForm.controls.user_picture.setValue('');
  }

  playAudioError(){
    let audio = new Audio();
    audio.src = "../../../assets/audio/fail.mp3";
    audio.load();
    audio.play();
  }

  /* company_form_modal */
  companyLogoChange(event: any) {
    this.isCropping = true;
    this.imageChangedEvent = event;
    if( event.target.files[0].type != 'image/jpeg' && event.target.files[0].type != 'image/png'){
      this.playAudioError();
      this.ngxSmartModalService.open('invalid');
      return false;
    }
    this.companyLogo = event.target.files[0].name
    this.partnersCompanyForm.patchValue({
      hidden_partners_company_profile_photo: this.companyLogo
    });
    this.openCropperModal();
  }

  invalidFormat(){
    this.ngxSmartModalService.close('invalid');
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
      this.ngxSmartModalService.open('invalid_user');
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

  invalidFormatUser(){
    this.ngxSmartModalService.close('invalid_user');
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
  singlePartner(user_id){
    this.userService.singlePartner(user_id).then(response => {
      this.partner_details = response['result'][0];
      this.getAddresses(this.partner_details.partner_id);
      this.set_user_value();
    })
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
  set_user_value(){
    this.partnersCompanyForm.controls.company_name.setValue(this.partner_details.partner_company);
    this.partnersCompanyForm.controls.tin_number.setValue(this.partner_details.partner_tin_number);
    this.partnersCompanyForm.controls.company_address.setValue(this.partner_details.partner_address);
    this.partnersOwnerForm.controls.first_name.setValue(this.partner_details.user_profile_first_name);
    this.partnersOwnerForm.controls.last_name.setValue(this.partner_details.user_profile_last_name);
    this.partnersOwnerForm.controls.phone.setValue(this.partner_details.user_profile_phone);
    this.partnersOwnerForm.controls.email.setValue(this.partner_details.user_email);
  }
  getAddresses(user_id){
    this.userService.getCompanyAddress(user_id).then(response => {
      this.company_addresses=response['result']['data']
    })
  }
  updatePartner(){
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
        this.userService.updateCompanyProfile(this.partner_id, formData2);
        this.singlePartner(this.partner_id);
        this.ngxSmartModalService.open('updateSuccess');
      }else{
        this.partnersOwnerForm.markAllAsTouched();
        this.partnersCompanyForm.markAllAsTouched();
        this.playAudioError();
        console.log('false');
      }
  }
  addAddress(){
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
      
      this.userService.addAddress(params);
      this.addressForm.reset();
      this.ngxSmartModalService.close('addnewaddress');
      this.getAddresses(this.partner_details.partner_id);
      this.ngxSmartModalService.open('addSuccess');
    }else{
      this.addressForm.markAllAsTouched();
    }
  }
  updateAddress(){
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
      this.userService.updateCompanyAddress(this.updateAddressForm.controls.company_address_id.value, params);
      this.getAddresses(this.partner_details.partner_id);
      this.ngxSmartModalService.open('updateAddressSuccess');
    }else{
      this.updateAddressForm.markAllAsTouched();
    }
  }
  closeUpdateSuccess(){
    this.ngxSmartModalService.close('updateAddressSuccess');
  }
  closeAddSuccessModal(){
    this.ngxSmartModalService.close('addSuccess');
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
        this.userService.deactivateUser(user_id, params).then(response => {
          if(response['success']==true){
            this.singlePartner(this.partner_id);
            this.spinner.hide();
            setTimeout(()=>{                           //<<<---using ()=> syntax
              this.ngxSmartModalService.close('deactivateAccountModal');
            }, 500);
          }
        })
      }else{
        this.errorMessage=response['results'].message; 
        this.spinner.hide();
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
              this.ngxSmartModalService.close('activateAccountModal');
            }, 500);
        })
      }else{
        this.spinner.hide();
        this.errorMessage1=response['results'].message;
      }
    });
  }
  showPass(){
    this.passType = "text";
    this.showPassword = true;
  }
  hidePass() {
    this.passType = "password";
    this.showPassword = false;
  }
  openActivateAccountModal(){
    this.ngxSmartModalService.open('activateAccountModal');
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

  closeGTP(){
    window.location.href = "/admin/partners-list";
  }
}
