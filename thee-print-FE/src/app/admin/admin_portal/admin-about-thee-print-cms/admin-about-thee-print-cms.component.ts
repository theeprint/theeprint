import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import {ImageCroppedEvent} from 'ngx-image-cropper';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { UserService } from 'src/app/services/user.service';
import { NgxUiLoaderService } from "ngx-ui-loader"; 
import { Router, ActivatedRoute, NavigationExtras } from '@angular/router';
import { NgxSpinnerService } from "ngx-spinner";


@Component({
  selector: 'app-admin-about-thee-print-cms',
  templateUrl: './admin-about-thee-print-cms.component.html',
  styleUrls: ['./admin-about-thee-print-cms.component.scss']
})
export class AdminAboutTheePrintCmsComponent implements OnInit {
  aboutTheePrint: any;
  aboutTheePrints: any;
  public cmsAboutTheePrintForm: FormGroup;
  isLoading:boolean=true;
  submitLoading:boolean=false;

  /* cms_about_thee_print_logo */
  cms_about_thee_print_logo: any;
  imageChangedEvent : any = '';
  croppedImage : any = '';
  aboutTheePrintLogo : any = '';
  cProfilePhoto : any = '';
  show:boolean = false;
  isCropping = false;
  file: File;
  fileName: string = null;
  uploadedESig:any = false;
  uploadedIdImg:any = false;
  photo_for_upload: any;

  /* cms_about_thee_print_logo 1 */
  cms_about_thee_print_logo1: any;
  aboutTheePrintLogo1: any;
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


  constructor(
    public formBuilder: FormBuilder, 
    public userService: UserService, 
    public ngxSmartModalService: NgxSmartModalService, 
    private spinner: NgxSpinnerService,
    private ngxService: NgxUiLoaderService,
    private route: Router,
  ) 
  {

    this. cmsAboutTheePrintForm = this.formBuilder.group({
      cms_about_thee_print_title: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
      cms_about_thee_print_title2: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
      cms_about_thee_print_description: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
      cms_about_thee_print_mission: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
      cms_about_thee_print_vision: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
      hidden_cms_about_thee_print_logo: [''],
      hidden_cms_about_thee_print_logo1: [''],
      cms_about_thee_print_logo:[''],
      cms_about_thee_print_logo1: [''],
    })
  }

  ngOnInit() {
    this.viewAboutTheePrint();
    console.log(this.aboutTheePrints)
  }

  viewAboutTheePrint(){
    this.userService.viewAboutTheePrint().then(response => {
      this.aboutTheePrint = response['data'];
      this.cmsAboutTheePrintForm.controls.cms_about_thee_print_title.setValue(this.aboutTheePrint.cms_about_thee_print_title);
      this.cmsAboutTheePrintForm.controls.cms_about_thee_print_title2.setValue(this.aboutTheePrint.cms_about_thee_print_title2);
      this.cmsAboutTheePrintForm.controls.cms_about_thee_print_description.setValue(this.aboutTheePrint.cms_about_thee_print_description);
      this.cmsAboutTheePrintForm.controls.cms_about_thee_print_mission.setValue(this.aboutTheePrint.cms_about_thee_print_mission);
      this.cmsAboutTheePrintForm.controls.cms_about_thee_print_vision.setValue(this.aboutTheePrint.cms_about_thee_print_vision);
      this.isLoading=false;
    })
  }

  updateAboutTheePrint(){
    this.spinner.show();
    if(this.cmsAboutTheePrintForm.valid){
      let formData = new FormData();
      formData.append('cms_about_thee_print_id', '1')
      formData.append('cms_about_thee_print_title', this.cmsAboutTheePrintForm.value.cms_about_thee_print_title);
      formData.append('cms_about_thee_print_title2', this.cmsAboutTheePrintForm.value.cms_about_thee_print_title2);
      formData.append('cms_about_thee_print_description', this.cmsAboutTheePrintForm.value.cms_about_thee_print_description);
      formData.append('cms_about_thee_print_mission', this.cmsAboutTheePrintForm.value.cms_about_thee_print_mission);
      formData.append('cms_about_thee_print_vision', this.cmsAboutTheePrintForm.value.cms_about_thee_print_vision);
      formData.append('cms_about_thee_print_update', JSON.parse(localStorage.getItem('user_id')));
      if(this.croppedImage){
        formData.append('cms_about_thee_print_logo',this.aboutTheePrintLogo, this.croppedImage);
      }
      if(this.croppedImg){
        formData.append('cms_about_thee_print_logo1', this.aboutTheePrintLogo1, this.croppedImg);
      }
      this.userService.updateAboutTheePrint(formData).then(response => {
        if(response['success']==true){
          this.spinner.hide();
          setTimeout(()=>{                           //<<<---using ()=> syntax
            this.ngxSmartModalService.open('success');
          }, 500);
        }
      })
    }else{
      this.spinner.hide();
      this.cmsAboutTheePrintForm.markAllAsTouched();
    }
  }

  

  playAudioError(){
    let audio = new Audio();
    audio.src = "../../../assets/audio/fail.mp3";
    audio.load();
    audio.play();
  }

  onChange(event: any){
    console.log(event);
    this.cmsAboutTheePrintForm.controls.cms_about_thee_print_logo.setValue('');
  }

 /* company_form_modal */
  aboutTheePrintChange(event: any) {
    this.isCropping = true;
    this.imageChangedEvent = event;
    if( event.target.files[0].type != 'image/jpeg' && event.target.files[0].type != 'image/png'){
      this.playAudioError();
      this.ngxSmartModalService.open('invalid');
      return false;
    }
    this.cms_about_thee_print_logo = event.target.files[0].name
    this.cmsAboutTheePrintForm.patchValue({
      hidden_cms_about_thee_print_logo: this.cms_about_thee_print_logo
    });
    this.openCropperModal();
  }

  invalidFormat(){
    this.ngxSmartModalService.close('invalid');
  }


  imageCropped(event: ImageCroppedEvent) {
    this.croppedImage = event.base64;
    this.aboutTheePrintLogo=this.b64toBlob(event.base64.replace("data:image/png;base64,", ""), 'image/jpeg', 512);
    console.log('imageType', this.aboutTheePrintLogo);
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

  onChanges(event: any){
    console.log(event);
    this.cmsAboutTheePrintForm.controls.cms_about_thee_print_logo1.setValue('');
  }

  /* user_form_modal */
  aboutTheePrint1Change(event: any){
    this.isCropping = true;
    this.imgChangedEvent = event;
    if( event.target.files[0].type != 'image/jpeg' && event.target.files[0].type != 'image/png'){
      this.playAudioError();
      this.ngxSmartModalService.open('invalids');
      return false;
    }
    this.cms_about_thee_print_logo1 = event.target.files[0].name;
    if(this.cms_about_thee_print_logo1.length>15){
      this.cms_about_thee_print_logo1 = event.target.files[0].name.substr(0, 15)+'...';
    }
    this.cmsAboutTheePrintForm.patchValue({
      hidden_cms_about_thee_print_logo1: this.cms_about_thee_print_logo1
    });
    this.opencropperModal();
  }

  invalidFormats(){
    this.ngxSmartModalService.close('invalids');
  }

  imgCropped(event: ImageCroppedEvent) {
    this.croppedImg = event.base64;
    this.aboutTheePrintLogo1 =this.b64toBlob(event.base64.replace("data:image/png;base64,", ""), 'image/jpeg', 512);
    console.log('imageType', this.aboutTheePrintLogo1);
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

  closeModal(){
    window.location.href = "/admin/admin_cms";
  }
}