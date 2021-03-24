import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { param } from 'jquery';
import {ImageCroppedEvent} from 'ngx-image-cropper';
import { UserService } from 'src/app/services/user.service'
import { ActivatedRoute, Router, RouterOutlet } from  '@angular/router';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { NgxSpinnerService } from "ngx-spinner";

@Component({
  selector: 'app-admin-edit-product-cms',
  templateUrl: './admin-edit-product-cms.component.html',
  styleUrls: ['./admin-edit-product-cms.component.scss']
})
export class AdminEditProductCmsComponent implements OnInit {

  public cmsUpdateProductForm: FormGroup;
  productCategories: any;
  productName: any;
  isLoading:boolean=true;
  /* cms_products_logo */
  imageName: any;
  imageChangedEvent : any = '';
  isCropping = false;
  croppedImage : any = '';
  cms_products_logo : any = '';
  cProfilePhoto : any = '';
  show:boolean = false;
  product_image: any;

  constructor(
    public formBuilder: FormBuilder, 
    public userService: UserService, 
    private  router:  Router, 
    private  route:  ActivatedRoute,
    public ngxSmartModalService: NgxSmartModalService,
    private spinner: NgxSpinnerService,

  ) 
  { 

    this.cmsUpdateProductForm = this.formBuilder.group({
      cms_products_name: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
      cms_products_services_category: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
      cms_products_logo: [this.croppedImage],
    })

  }

  ngOnInit() {
    this.productName  =  this.route.snapshot.paramMap.get('cms_products_id');
    this.viewCmsProductsCategory();
    this.viewCmsEditProduct(this.productName);
  }

  set_product_category_value(){
    this.cmsUpdateProductForm.controls.cms_products_services_category.setValue(this.productCategories.cms_products_services_category);
  }

  viewCmsProductsCategory(){
    this.userService.viewCmsProductsCategory().then(response => {
      this.productCategories = response['data'];
      console.log(this.productCategories);
      this.set_product_category_value();
    })
  }
 
  set_product_value(){
    this.cmsUpdateProductForm.controls.cms_products_name.setValue(this.productName.cms_products_name);
    this.cmsUpdateProductForm.patchValue({cms_products_services_category:this.productName.cms_products_services_category});
    console.log('asa',this.productName);
    this.isLoading=false;
    
  }

  viewCmsEditProduct(params){
    this.userService.viewCmsEditProduct(params).then(response => {
      this.productName = response['data'];
      console.log('Product Name:', this.productName);
      this.set_product_value();
    })
  }

  updateCmsProducts(){
    this.spinner.show();
    if (this.cmsUpdateProductForm.valid){
    let formData = new FormData();
      formData.append('cms_products_id', this.route.snapshot.paramMap.get('cms_products_id'))
      formData.append('cms_products_name', this.cmsUpdateProductForm.value.cms_products_name);
      formData.append('cms_products_services_category', this.cmsUpdateProductForm.value.cms_products_services_category);
      formData.append('cms_products_update', JSON.parse(localStorage.getItem('user_id')));
      if(this.croppedImage){
        formData.append('cms_products_logo', this.imageName, this.croppedImage);
      } 
      this.userService.updateCmsProducts(formData).then(response => {
        if(response['success']==true){
          this.spinner.hide();
          setTimeout(()=>{                           //<<<---using ()=> syntax
            this.ngxSmartModalService.open('success');
          }, 500);
        }
      })
    }else{
      this.spinner.hide();
      this.cmsUpdateProductForm.markAllAsTouched();
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
    this.cmsUpdateProductForm.controls.cms_products_logo.setValue('');
  }

  fileChangeEvent(event: any){
    this.isCropping = true;
    this.imageChangedEvent = event;
    if( event.target.files[0].type != 'image/jpeg' && event.target.files[0].type != 'image/png'){
      this.playAudioError();
      this.ngxSmartModalService.open('invalid');
      return false;
    }
    this.product_image = event.target.files[0].name
    this.openCropperModal();
  }

  invalidFormat(){
    this.ngxSmartModalService.close('invalid');
  }

  imageCropped(event: ImageCroppedEvent) {
    this.croppedImage = event.base64;
    this.imageName=this.b64toBlob(event.base64.replace("data:image/png;base64,", ""), 'image/jpeg', 512);
    console.log('imageType', this.imageName);
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

  closeEditProductModal(){
    window.location.href = "/admin/admin_products_cms";
  }
}
