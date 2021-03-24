import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import {ImageCroppedEvent} from 'ngx-image-cropper';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { UserService } from 'src/app/services/user.service';
import { Router, ActivatedRoute, NavigationExtras } from '@angular/router';
import { NgxSpinnerService } from "ngx-spinner";


@Component({
  selector: 'app-admin-add-new-products-cms',
  templateUrl: './admin-add-new-products-cms.component.html',
  styleUrls: ['./admin-add-new-products-cms.component.scss']
})
export class AdminAddNewProductsCmsComponent implements OnInit {

  public cmsProductForm: FormGroup;
  cmsProductCategory: any;
  productCategories: any;
  public submitted = false;
 

   /* first form */
   cms_products_logo: any;
   imageChangedEvent : any = '';
   croppedImage : any = '';
   productsLogo : any = '';
   user_photo : any = '';
   cProfilePhoto : any = '';
   show:boolean = false;
   isCropping = false;
   file: File;
   fileName: string = null;
   uploadedESig:any = false;
   uploadedIdImg:any = false;
   photo_for_upload: any;

  constructor(
    public formBuilder: FormBuilder, 
    public userService: UserService, 
    public ngxSmartModalService: NgxSmartModalService,
    private route: Router,
    private spinner: NgxSpinnerService,
    ) 
  { 

    this.cmsProductForm = this.formBuilder.group({
      cms_products_name: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
      cms_products_services_category: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
      cms_products_logo: [this.croppedImage],
      hidden_cms_products_logo: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
    })

  }

  ngOnInit() {  
    this.viewCmsProductsCategory();
  }

  playAudioError(){
    let audio = new Audio();
    audio.src = "../../../assets/audio/fail.mp3";
    audio.load();
    audio.play();
  }

  onChange(event: any){
    console.log(event);
    this.cmsProductForm.controls.cms_products_logo.setValue('');
  }

  viewCmsProductsCategory(){
    this.userService.viewCmsProductsCategory().then(response => {
      this.productCategories = response['data'];
    })
  }

 
  addCmsNewProducts(){
    this.spinner.show();
    if(this.cmsProductForm.valid){
      let formData = new FormData();
        formData.append('cms_products_name', this.cmsProductForm.value.cms_products_name);
        formData.append('cms_products_services_category', this.cmsProductForm.value.cms_products_services_category);
        formData.append('cms_products_logo', this.productsLogo, this.cms_products_logo);
        formData.append('cms_products_update', JSON.parse(localStorage.getItem('user_id')));
        this.userService.addCmsNewProducts(formData).then(response => {
          if(response['success']==true){
            this.spinner.hide();
            setTimeout(()=>{                           //<<<---using ()=> syntax
              this.ngxSmartModalService.open('success');
            }, 500);
          }
        })
    }else{
      this.spinner.hide();
      this.cmsProductForm.markAllAsTouched();
    }
  }

  closeAddNewPModal(){
    window.location.href = "/admin/admin_products_cms";
  }


   /* cms_products_logo_form_modal */
   companyLogoChange(event: any){
    this.isCropping = true;
    this.imageChangedEvent = event;
    if( event.target.files[0].type != 'image/jpeg' && event.target.files[0].type != 'image/png'){
      this.playAudioError();
      this.ngxSmartModalService.open('invalid');
      return false;
    }
    this.cms_products_logo = event.target.files[0].name
    this.cmsProductForm.patchValue({
      hidden_cms_products_logo: this.cms_products_logo
    });
    this.openCropperModal();
  }

  invalidFormat(){
    this.ngxSmartModalService.close('invalid');
  }

  imageCropped(event: ImageCroppedEvent) {
    this.croppedImage = event.base64;
    this.productsLogo=this.b64toBlob(event.base64.replace("data:image/png;base64,", ""), 'image/jpeg', 512);
    console.log('imageType', this.productsLogo);
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

}
