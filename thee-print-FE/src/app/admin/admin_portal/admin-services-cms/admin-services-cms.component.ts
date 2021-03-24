import { Component, OnInit } from '@angular/core';
import * as ClassicEditor from '@ckeditor/ckeditor5-build-classic';
import {ImageCroppedEvent} from 'ngx-image-cropper';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { UserService } from 'src/app/services/user.service';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { Router, ActivatedRoute, NavigationExtras } from '@angular/router';
import { NgxSpinnerService } from "ngx-spinner";


@Component({
  selector: 'app-admin-services-cms',
  templateUrl: './admin-services-cms.component.html',
  styleUrls: ['./admin-services-cms.component.scss']
})
export class AdminServicesCmsComponent implements OnInit {
  
  Services: any;
  Service: any;
  public Editor = ClassicEditor;
  public servicesForm: FormGroup;
  isLoading:boolean=true;
  
  /* cms_services_logo */
  cms_services_logo: any;
  imageChangedEvent : any = '';
  croppedService1 : any = '';
  servicesLogo : any = '';
  user_photo : any = '';
  cProfilePhoto : any = '';
  show:boolean = false;
  isCropping = false;
  file: File;
  fileName: string = null;
  photo_for_upload: any;
  
  /* cms_services_logo1 */
  cms_services_logo1: any;
  servicesLogo1: any;
  imgChangedEvent : any = '';
  croppedService2 : any = '';
  profilephoto : any = '';
  cprofilePhoto : any = '';
  photoForUpload: any;
  files: File;
  filename: string = null;



   /* cms_services_logo2 */
   cms_services_logo2: any;
   servicesLogo2: any;
   imagesChangedEvent : any = '';
   croppedService3 : any = '';
   profilephotos : any = '';
   cprofilePhotos : any = '';
   photoForUploads: any;
   filed: File;
   filenames: string = null;

  constructor( 
    public formBuilder: FormBuilder, 
    public userService: UserService,  
    public ngxSmartModalService: NgxSmartModalService, 
    private route: Router,
    private spinner: NgxSpinnerService,

  ) 
  {
    this.servicesForm = this.formBuilder.group({
      cms_services_title: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
      cms_services_description: ['', Validators.compose([Validators.required])],
      cms_services_title1: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
      cms_services_title3: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
      cms_services_description1: ['', Validators.compose([Validators.required])],
      cms_services_title2: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
      cms_services_title4: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
      cms_services_description2: ['', Validators.compose([Validators.required])],
      hidden_cms_services_logo: [''],
      hidden_cms_services_logo1: [''],
      hidden_cms_services_logo2: [''],
      
    })
  }

  ngOnInit() {
    this.viewServices(this.Service);
    console.log(this.Service)
  }

  set_about_thee_print_value(){
    this.servicesForm.controls.cms_services_title.setValue(this.Services.cms_services_title);
    this.servicesForm.controls.cms_services_description.setValue(this.Services.cms_services_description);
    this.servicesForm.controls.cms_services_title1.setValue(this.Services.cms_services_title1);
    this.servicesForm.controls.cms_services_title3.setValue(this.Services.cms_services_title3);
    this.servicesForm.controls.cms_services_description1.setValue(this.Services.cms_services_description1);
    this.servicesForm.controls.cms_services_title2.setValue(this.Services.cms_services_title2);
    this.servicesForm.controls.cms_services_title4.setValue(this.Services.cms_services_title4);
    this.servicesForm.controls.cms_services_description2.setValue(this.Services.cms_services_description2);
    this.isLoading=false;
  }

  viewServices(cms_services_id){
    this.userService.viewServices(cms_services_id).then(response => {
      this.Services = response['data'];
      console.log(this.Services);
      this.set_about_thee_print_value();
    })
  }

  updateServices(){
    this.spinner.show();
    if(this.servicesForm.valid){
    let formData = new FormData();
      formData.append('cms_services_id', '1');
      formData.append('cms_services_title', this.servicesForm.value.cms_services_title);
      formData.append('cms_services_description', this.servicesForm.value.cms_services_description);
      formData.append('cms_services_title1', this.servicesForm.value.cms_services_title1);
      formData.append('cms_services_title3', this.servicesForm.value.cms_services_title3);
      formData.append('cms_services_description1', this.servicesForm.value.cms_services_description1);
      formData.append('cms_services_update', JSON.parse(localStorage.getItem('user_id')));
      formData.append('cms_services_title2', this.servicesForm.value.cms_services_title2);
      formData.append('cms_services_title4', this.servicesForm.value.cms_services_title4);
      formData.append('cms_services_description2', this.servicesForm.value.cms_services_description2);
      if(this.croppedService1){
        formData.append('cms_services_logo',this.servicesLogo, this.croppedService1);
      }
      if(this.croppedService2){
        formData.append('cms_services_logo1',this.servicesLogo1, this.croppedService2);
      }
      if(this.croppedService3){
        formData.append('cms_services_logo2',this.servicesLogo2, this.croppedService3);
      }
      this.userService.updateServices(formData).then(response => {
        if(response['success']==true){
          this.spinner.hide();
          setTimeout(()=>{                           //<<<---using ()=> syntax
            this.ngxSmartModalService.open('success');
          }, 500);
        }
      })
    }else{
      this.spinner.hide();
      this.servicesForm.markAllAsTouched();
    }
  }

  /* services_logo_form_modal */
  servicesLogoChange(event: any): void {
    this.isCropping = true;
    this.imageChangedEvent = event;
    this.cms_services_logo = event.target.files[0].name
    this.servicesForm.patchValue({
      hidden_cms_services_logo: this.cms_services_logo
    });
    this.openCropperModal();
  }
  
  imageCropped(event: ImageCroppedEvent) {
    this.croppedService1 = event.base64;
    this.servicesLogo=this.b64toBlob(event.base64.replace("data:image/png;base64,", ""), 'image/jpeg', 512);
    console.log('imageType', this.servicesLogo);
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
    this.photo_for_upload = this.croppedService1;
  }

  /* services_logo1_form_modal */
  servicesLogo1Change(event: any): void {
    this.isCropping = true;
    this.imgChangedEvent = event;
    this.cms_services_logo1 = event.target.files[0].name;
    if(this.cms_services_logo1.length>15){
      this.cms_services_logo1 = event.target.files[0].name.substr(0, 15)+'...';
    }
    this.servicesForm.patchValue({
      hidden_cms_services_logo1: this.cms_services_logo1
    });
    this.opencropperModal();
  }

  imgCropped(event: ImageCroppedEvent) {
    this.croppedService2 = event.base64;
    this.servicesLogo1 =this.b64toBlob(event.base64.replace("data:image/png;base64,", ""), 'image/jpeg', 512);
    console.log('imageType', this.servicesLogo1);
  }
  opencropperModal() {
    this.ngxSmartModalService.open('cropperviewer2');
  }
  dismisscropperModal() {
    this.ngxSmartModalService.close('cropperviewer2');
    this.photoForUpload = this.croppedService2;
  }


  /* services_logo2_form_modal */
  servicesLogo2Change(event: any): void {
    this.isCropping = true;
    this.imagesChangedEvent = event;
    this.cms_services_logo2 = event.target.files[0].name
    this.servicesForm.patchValue({
      hidden_cms_services_logo2: this.cms_services_logo2
    });
    this.opencroppermodal();
  }

  imagedCropped(event: ImageCroppedEvent) {
    this.croppedService3 = event.base64;
    this.servicesLogo2=this.b64toBlob(event.base64.replace("data:image/png;base64,", ""), 'image/jpeg', 512);
    console.log('imageType', this.servicesLogo2);
  }

  opencroppermodal() {
    this.ngxSmartModalService.open('cropperviewer3');
  }
  dismissCropperservicesModal() {
    this.ngxSmartModalService.close('cropperviewer3');
    this.photoForUploads = this.croppedService3;
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
