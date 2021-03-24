import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { UserService } from 'src/app/services/user.service';
import {ImageCroppedEvent} from 'ngx-image-cropper';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { NgxSpinnerService } from "ngx-spinner";



@Component({
  selector: 'app-admin-featured-partners-cms',
  templateUrl: './admin-featured-partners-cms.component.html',
  styleUrls: ['./admin-featured-partners-cms.component.scss']
})
export class AdminFeaturedPartnersCmsComponent implements OnInit {

  public featuredPartnersForm: FormGroup;
  featuredPartners: any;
  show:boolean = false;
  isCropping = false;
  //featured 1
  cms_featured_partners_logo1: any;
  featuredPartners1: any;
  featuredChange1 : any = '';
  croppedFeatured1 : any = '';
  featuredPartner1 : any = '';
 
  //featured 2
  cms_featured_partners_logo2: any;
  featuredPartners2: any;
  featuredChange2 : any = '';
  croppedFeatured2 : any = '';
  featuredPartner2 : any = '';

  //featured 3
  cms_featured_partners_logo3: any;
  featuredPartners3: any;
  featuredChange3: any = '';
  croppedFeatured3: any = '';
  featuredPartner3: any = '';

  //featured 4
  cms_featured_partners_logo4: any;
  featuredPartners4: any;
  featuredChange4: any = '';
  croppedFeatured4: any = '';
  featuredPartner4: any = '';

  //featured 5
  cms_featured_partners_logo5: any;
  featuredPartners5: any;
  featuredChange5: any = '';
  croppedFeatured5: any = '';
  featuredPartner5: any = '';

  constructor(
    public formBuilder: FormBuilder, 
    public userService: UserService,
    public ngxSmartModalService: NgxSmartModalService, 
    private spinner: NgxSpinnerService,
  ){ 
    this.featuredPartnersForm = this.formBuilder.group({
     cms_featured_partners_logo1: [this.croppedFeatured1],
     cms_featured_partners_logo2: [this.croppedFeatured2],
     cms_featured_partners_logo3: [this.croppedFeatured3],
     cms_featured_partners_logo4: [this.croppedFeatured4],
     cms_featured_partners_logo5: [this.croppedFeatured5]
    })
  }

  ngOnInit() {
    this.viewFeaturedPartners();
    
  }

  viewFeaturedPartners(){
    this.userService.viewFeaturedPartners().then(response => {
      this.featuredPartners = response['data'];
    })
  }

  updateFeaturedPartners(){
    this.spinner.show();
    let formData = new FormData();
    formData.append('cms_featured_partners_id','1');
    formData.append('cms_featured_partners_updated', JSON.parse(localStorage.getItem('user_id')));
    if(this.croppedFeatured1){
      formData.append('cms_featured_partners_logo', this.featuredPartners1, this.croppedFeatured1,);
    }
    if(this.croppedFeatured2){
      formData.append('cms_featured_partners_logo1', this.featuredPartners2, this.croppedFeatured2,);
    }
    if(this.croppedFeatured3){
      formData.append('cms_featured_partners_logo2', this.featuredPartners3, this.croppedFeatured3,);
    }
    if(this.croppedFeatured4){
      formData.append('cms_featured_partners_logo3', this.featuredPartners4, this.croppedFeatured4,);
    }
    if(this.croppedFeatured5){
      formData.append('cms_featured_partners_logo4', this.featuredPartners5, this.croppedFeatured5,);
    }
    this.userService.updateFeaturedPartners(formData).then(response => {
      if(response['success']==true){
        this.spinner.hide();
        setTimeout(()=>{                           //<<<---using ()=> syntax
          this.ngxSmartModalService.open('success');
        }, 500);
      }
    })
  }
  

  playAudioError(){
    let audio = new Audio();
    audio.src = "../../../assets/audio/fail.mp3";
    audio.load();
    audio.play();
  }

  onChange(event: any){
    console.log(event);
    this.featuredPartnersForm.controls.cms_featured_partners_logo1.setValue('');
  }

  //featured 1
  featuredPartners1Change(event: any) {
    this.isCropping = true;
    this.featuredChange1 = event;
    if( event.target.files[0].type != 'image/jpeg' && event.target.files[0].type != 'image/png'){
      this.playAudioError();
      this.ngxSmartModalService.open('invalid');
      return false;
    }
    this.cms_featured_partners_logo1 = event.target.files[0].name
    this.openCropperModal1();
  }

  invalidFormat(){
    this.ngxSmartModalService.close('invalid');
  }

  imageCropped1(event: ImageCroppedEvent) {
    this.croppedFeatured1 = event.base64;
    this.featuredPartners1=this.b64toBlob(event.base64.replace("data:image/png;base64,", ""), 'image/jpeg', 512);
    console.log('imageType', this.featuredPartners1);
  }
  imageLoaded1() {
  }
  cropperReady1() {
  }
  loadImageFailed1() {
  }
  doneCropping() {
    this.isCropping = false;
  }
  openCropperModal1() {
    this.ngxSmartModalService.open('cropperviewer1');
  }
  dismissCropperModal1() {
    this.ngxSmartModalService.close('cropperviewer1');
  }

  onChange1(event: any){
    console.log(event);
    this.featuredPartnersForm.controls.cms_featured_partners_logo2.setValue('');
  }

  //featured 2
  featuredPartners2Change(event: any){
    this.isCropping = true;
    this.featuredChange2 = event;
    if( event.target.files[0].type != 'image/jpeg' && event.target.files[0].type != 'image/png'){
      this.playAudioError();
      this.ngxSmartModalService.open('invalid1');
      return false;
    }
    this.cms_featured_partners_logo2 = event.target.files[0].name
    this.openCropperModal2();
  }

  invalidFormat1(){
    this.ngxSmartModalService.close('invalid1');
  }

  imageCropped2(event: ImageCroppedEvent) {
    this.croppedFeatured2 = event.base64;
    this.featuredPartners2=this.b64toBlob(event.base64.replace("data:image/png;base64,", ""), 'image/jpeg', 512);
    console.log('imageType', this.featuredPartners2);
  }
  imageLoaded2() {
  }
  cropperReady2() {
  }
  loadImageFailed2() {
  }
  openCropperModal2() {
    this.ngxSmartModalService.open('cropperviewer2');
  }
  dismissCropperModal2() {
    this.ngxSmartModalService.close('cropperviewer2');
  }

  onChange2(event: any){
    console.log(event);
    this.featuredPartnersForm.controls.cms_featured_partners_logo3.setValue('');
  }
  //featured 3
  featuredPartners3Change(event: any){
    this.isCropping = true;
    this.featuredChange3 = event;
    if( event.target.files[0].type != 'image/jpeg' && event.target.files[0].type != 'image/png'){
      this.playAudioError();
      this.ngxSmartModalService.open('invalid2');
      return false;
    }
    this.cms_featured_partners_logo3 = event.target.files[0].name
    this.openCropperModal3();
  }

  invalidFormat2(){
    this.ngxSmartModalService.close('invalid2');
  }

  imageCropped3(event: ImageCroppedEvent) {
    this.croppedFeatured3 = event.base64;
    this.featuredPartners3=this.b64toBlob(event.base64.replace("data:image/png;base64,", ""), 'image/jpeg', 512);
    console.log('imageType', this.featuredPartners3);
  }
  imageLoaded3() {
  }
  cropperReady3() {
  }
  loadImageFailed3() {
  }
  openCropperModal3() {
    this.ngxSmartModalService.open('cropperviewer3');
  }
  dismissCropperModal3() {
    this.ngxSmartModalService.close('cropperviewer3');
  }

  onChange3(event: any){
    console.log(event);
    this.featuredPartnersForm.controls.cms_featured_partners_logo4.setValue('');
  }

  //featured 4
  featuredPartners4Change(event: any){
    this.isCropping = true;
    this.featuredChange4 = event;
    if( event.target.files[0].type != 'image/jpeg' && event.target.files[0].type != 'image/png'){
      this.playAudioError();
      this.ngxSmartModalService.open('invalid3');
      return false;
    }
    this.cms_featured_partners_logo4 = event.target.files[0].name
    this.openCropperModal4();
  }

  invalidFormat3(){
    this.ngxSmartModalService.close('invalid3');
  }

  imageCropped4(event: ImageCroppedEvent) {
    this.croppedFeatured4 = event.base64;
    this.featuredPartners4=this.b64toBlob(event.base64.replace("data:image/png;base64,", ""), 'image/jpeg', 512);
    console.log('imageType', this.featuredPartners4);
  }
  imageLoaded4() {
  }
  cropperReady4() {
  }
  loadImageFailed4() {
  }
  openCropperModal4() {
    this.ngxSmartModalService.open('cropperviewer4');
  }
  dismissCropperModal4() {
    this.ngxSmartModalService.close('cropperviewer4');
  }

  onChange4(event: any){
    console.log(event);
    this.featuredPartnersForm.controls.cms_featured_partners_logo5.setValue('');
  }
  //featured 5
  featuredPartners5Change(event: any){
    this.isCropping = true;
    this.featuredChange5 = event;
    if( event.target.files[0].type != 'image/jpeg' && event.target.files[0].type != 'image/png'){
      this.playAudioError();
      this.ngxSmartModalService.open('invalid4');
      return false;
    }
    this.cms_featured_partners_logo5 = event.target.files[0].name
    this.openCropperModal5();
  }

  invalidFormat4(){
    this.ngxSmartModalService.close('invalid4');
  }

  imageCropped5(event: ImageCroppedEvent) {
    this.croppedFeatured5 = event.base64;
    this.featuredPartners5=this.b64toBlob(event.base64.replace("data:image/png;base64,", ""), 'image/jpeg', 512);
    console.log('imageType', this.featuredPartners5);
  }
  imageLoaded5() {
  }
  cropperReady5() {
  }
  loadImageFailed5() {
  }
  openCropperModal5() {
    this.ngxSmartModalService.open('cropperviewer5');
  }
  dismissCropperModal5() {
    this.ngxSmartModalService.close('cropperviewer5');
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

  closeFeaturedModal(){
    window.location.href = "/admin/admin_cms";
  }
}
