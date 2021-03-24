import { Component, OnInit } from '@angular/core';
import {FormArray, FormControl, FormBuilder, FormGroup, Validators} from '@angular/forms';
import {ImageCroppedEvent} from 'ngx-image-cropper';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { UserService } from 'src/app/services/user.service';
import { NgxSpinnerService } from "ngx-spinner";
import { NgxUiLoaderService } from "ngx-ui-loader";
@Component({
  selector: 'app-admin-add-staffs',
  templateUrl: './admin-add-staffs.component.html',
  styleUrls: ['./admin-add-staffs.component.scss']
})
export class AdminAddStaffsComponent implements OnInit {

  companyForm : FormGroup;
  userForm: FormGroup;
  addressForm: FormGroup;
  productForm = new FormGroup({
    sqm: new FormArray([
    ]),
    sqf: new FormArray([
    ])
  });
  isloading:any;
  addressList=[];
  limit=50;
  page=1;
  product_list:any;
  userProfileResponse:any;
  generatedId:any;
  company_address=[];
  

  /* first form */
  companyLogo: any;
  imageChangedEvent : any = '';
  croppedImage : any = '';
  company_photo : any = '';
  user_photo : any = '';
  cProfilePhoto : any = '';
  show:boolean = false;
  isCropping = false;
  file: File;
  fileName: string = null;
  uploadedESig:any = false;
  uploadedIdImg:any = false;
  photo_for_upload: any;

  /* second form */
  userAvatar: any;
  imgChangedEvent : any = '';
  croppedImg : any = '';
  profilephoto : any = '';
  cprofilePhoto : any = '';
  photoForUpload: any;
  files: File;
  filename: string = null;
  uploadedEsig:any = false;
  uploadedIdimg:any = false;

  constructor(
    protected formBuilder : FormBuilder,
    public userService: UserService,
    public ngxSmartModalService: NgxSmartModalService,
    private spinner: NgxSpinnerService,
    private ngxService: NgxUiLoaderService,
  ) 
  {   
    let emailRe = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
      this.userForm = this.formBuilder.group({
        first_name: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
        last_name: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
        email:['', Validators.compose([Validators.required,Validators.pattern(emailRe),Validators.maxLength(300)])],
        phone: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
        user_picture: ['', Validators.compose([Validators.required])],
        hidden_user_picture: ['', Validators.compose([Validators.required])],
      });

      this.addressForm = this.formBuilder.group({
      company_address_label: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
      company_address: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
      company_address_default: [''],
      company_address_person_firstname: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
      company_address_person_lastname: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
      company_address_contact: ['', Validators.compose([Validators.required,Validators.maxLength(11)])],
    })
  }

  ngOnInit() {
  }

  playAudioError(){
    let audio = new Audio();
    audio.src = "../../../assets/audio/fail.mp3";
    audio.load();
    audio.play();
  }

  onChange(event: any){
    console.log(event);
    this.userForm.controls.user_picture.setValue('');
  }


  /* company_form_modal */
  companyLogoChange(event: any){
    this.isCropping = true;
    this.imageChangedEvent = event;
    this.companyLogo = event.target.files[0].name
    this.companyForm.patchValue({
      hidden_partners_company_profile_photo: this.companyLogo
    });
    this.openCropperModal();
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
    this.photo_for_upload = this.croppedImage;
  }

  /* user_form_modal */
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
    this.userForm.patchValue({
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
    this.photoForUpload = this.croppedImg;
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

  

  viewProfile(){
    this.show = false;
  }

  closeModal(){
   window.location.href = "/admin/staff-list";
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
  createStaff(){
    if(this.userForm.valid){
      this.spinner.show(); 
      this.isloading = true;
      let formData = new FormData();
      formData.append('user_profile_first_name', this.userForm.value.first_name);
      formData.append('user_role_id', '1');
      formData.append('user_profile_last_name', this.userForm.value.last_name);
      formData.append('user_profile_phone', this.userForm.value.phone);
      formData.append('user_email', this.userForm.value.email);
      formData.append('user_profile_avatar', this.user_photo, this.croppedImg.type);
      this.userService.createUserProfile(formData).then(res => {
        if(res['success']==true){
          this.userService.sendEmailConfirmation(res['result']['link']);
          this.spinner.hide(); 
          this.isloading = false;
          setTimeout(()=>{                           //<<<---using ()=> syntax
            this.ngxSmartModalService.open('addpartner');
          }, 500);
        }else{
          this.spinner.hide(); 
          this.isloading = false;
          setTimeout(()=>{                           //<<<---using ()=> syntax
            this.ngxSmartModalService.open('errorEmail');
          }, 500);  
        }
      });
    }else{
      this.spinner.hide();
      this.userForm.markAllAsTouched();
      this.playAudioError();
    }
  }
}