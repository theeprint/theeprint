import { Component, OnInit } from '@angular/core';
import {ImageCroppedEvent} from 'ngx-image-cropper';
import * as ClassicEditor from '@ckeditor/ckeditor5-build-classic';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { UserService } from 'src/app/services/user.service';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { Router, ActivatedRoute, NavigationExtras } from '@angular/router';
import { NgxSpinnerService } from "ngx-spinner";



@Component({
  selector: 'app-admin-core-cms',
  templateUrl: './admin-core-cms.component.html',
  styleUrls: ['./admin-core-cms.component.scss']
})
export class AdminCoreCmsComponent implements OnInit {

  public Editor = ClassicEditor;
  public coreValuesForm: FormGroup;
  coreValues: any;
  isCropping = false;
  //core icon 1
  core_icon_name1: any;
  core_icon_blob1: any;
  core_icon_change1 : any = '';
  core_icon_cropped1 : any = '';

  //core icon 2
  core_icon_name2: any;
  core_icon_blob2: any;
  core_icon_change2 : any = '';
  core_icon_cropped2 : any = '';

  //core icon 3
  core_icon_name3: any;
  core_icon_blob3: any;
  core_icon_change3 : any = '';
  core_icon_cropped3 : any = '';

  //core icon 4
  core_icon_name4: any;
  core_icon_blob4: any;
  core_icon_change4 : any = '';
  core_icon_cropped4 : any = '';

  constructor(
    public formBuilder: FormBuilder,
    public userService: UserService, 
    public ngxSmartModalService: NgxSmartModalService, 
    private route: Router,
    private spinner: NgxSpinnerService,
  ) 
  {

   this.coreValuesForm = this.formBuilder.group({
     cms_core_values_title: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
     cms_core_values_description: ['', Validators.compose([Validators.required])],
     cms_core_values_title1: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
     cms_core_values_description1: ['', Validators.compose([Validators.required])],
     cms_core_values_title2: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
     cms_core_values_description2: ['', Validators.compose([Validators.required])],
     cms_core_values_title3: ['', Validators.compose([Validators.required, Validators.maxLength(300)])],
     cms_core_values_description3: ['', Validators.compose([Validators.required])],
     cms_core_values_icon1: [''],
     cms_core_values_icon2: [''],
     cms_core_values_icon3: [''],
     cms_core_values_icon4: [''],
   })

  }

  ngOnInit() {
    this.viewCoreValues(this.coreValues);
  }

   set_core_value(){
    this.coreValuesForm.controls.cms_core_values_title.setValue(this.coreValues.cms_core_values_title);
    this.coreValuesForm.controls.cms_core_values_description.setValue(this.coreValues.cms_core_values_description);
    this.coreValuesForm.controls.cms_core_values_title1.setValue(this.coreValues.cms_core_values_title1);
    this.coreValuesForm.controls.cms_core_values_description1.setValue(this.coreValues.cms_core_values_description1);
    this.coreValuesForm.controls.cms_core_values_title2.setValue(this.coreValues.cms_core_values_title2);
    this.coreValuesForm.controls.cms_core_values_description2.setValue(this.coreValues.cms_core_values_description2);
    this.coreValuesForm.controls.cms_core_values_title3.setValue(this.coreValues.cms_core_values_title3);
    this.coreValuesForm.controls.cms_core_values_description3.setValue(this.coreValues.cms_core_values_description3);
  }

  viewCoreValues(cms_core_values_id){
    this.userService.viewCoreValues(cms_core_values_id).then(response => {
      this.coreValues = response['data'];
      console.log(this.coreValues)
      this.set_core_value();
    })
  }

  updateCoreValues(){
    this.spinner.show();
    if(this.coreValuesForm.valid){
    let formData = new FormData();
      formData.append('cms_core_values_id','1');
      formData.append('cms_core_values_update', JSON.parse(localStorage.getItem('user_id')));
      formData.append('cms_core_values_title', this.coreValuesForm.value.cms_core_values_title);
      formData.append('cms_core_values_description', this.coreValuesForm.value.cms_core_values_description);
      formData.append('cms_core_values_title1', this.coreValuesForm.value.cms_core_values_title1);
      formData.append('cms_core_values_description1', this.coreValuesForm.value.cms_core_values_description1);
      formData.append('cms_core_values_title2', this.coreValuesForm.value.cms_core_values_title2);
      formData.append('cms_core_values_description2', this.coreValuesForm.value.cms_core_values_description2);
      formData.append('cms_core_values_title3', this.coreValuesForm.value.cms_core_values_title3);
      formData.append('cms_core_values_description3', this.coreValuesForm.value.cms_core_values_description3);
      if(this.core_icon_cropped1){
        formData.append('cms_core_values_icon', this.core_icon_blob1, this.core_icon_cropped1,);
      }
      if(this.core_icon_cropped2){
        formData.append('cms_core_values_icon1', this.core_icon_blob2, this.core_icon_cropped2,);
      }
      if(this.core_icon_cropped3){
        formData.append('cms_core_values_icon2', this.core_icon_blob3, this.core_icon_cropped3,);
      }
      if(this.core_icon_cropped4){
        formData.append('cms_core_values_icon3', this.core_icon_blob4, this.core_icon_cropped4,);
      }
      this.userService.updateCoreValues(formData).then(response => {
        if(response['success']==true){
          this.spinner.hide();
          setTimeout(()=>{                           //<<<---using ()=> syntax
            this.ngxSmartModalService.open('success');
          }, 500);
        }
      })
    }else{
      this.spinner.hide();
      this.coreValuesForm.markAllAsTouched();
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


  playAudioError(){
    let audio = new Audio();
    audio.src = "../../../assets/audio/fail.mp3";
    audio.load();
    audio.play();
  }

  onChange(event: any){
    console.log(event);
    this.coreValuesForm.controls.cms_core_values_icon1.setValue('');
  }

  //core icon 1
  coreIconChangeEvent1(event: any){
    this.isCropping = true;
    this.core_icon_change1 = event;
    if( event.target.files[0].type != 'image/jpeg' && event.target.files[0].type != 'image/png'){
      this.playAudioError();
      this.ngxSmartModalService.open('invalid');
      return false;
    }
    this.core_icon_name1 = event.target.files[0].name
    this.openCropperModal1();
  }

  invalidFormat(){
    this.ngxSmartModalService.close('invalid');
  }

  imageCropped1(event: ImageCroppedEvent) {
    this.core_icon_cropped1 = event.base64;
    this.core_icon_blob1=this.b64toBlob(event.base64.replace("data:image/png;base64,", ""), 'image/jpeg', 512);
    console.log('imageType', this.core_icon_blob1);
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
    this.coreValuesForm.controls.cms_core_values_icon2.setValue('');
  }

  //core icon 2
  coreIconChangeEvent2(event: any){
    this.isCropping = true;
    this.core_icon_change2 = event;
    if( event.target.files[0].type != 'image/jpeg' && event.target.files[0].type != 'image/png'){
      this.playAudioError();
      this.ngxSmartModalService.open('invalid1');
      return false;
    }
    this.core_icon_name2 = event.target.files[0].name
    this.openCropperModal2();
  }

  invalidFormat1(){
    this.ngxSmartModalService.close('invalid1');
  }

  imageCropped2(event: ImageCroppedEvent) {
    this.core_icon_cropped2 = event.base64;
    this.core_icon_blob2=this.b64toBlob(event.base64.replace("data:image/png;base64,", ""), 'image/jpeg', 512);
    console.log('imageType', this.core_icon_blob2);
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
    this.coreValuesForm.controls.cms_core_values_icon3.setValue('');
  }

  //core icon 3
  coreIconChangeEvent3(event: any) {
    this.isCropping = true;
    this.core_icon_change3 = event;
    if( event.target.files[0].type != 'image/jpeg' && event.target.files[0].type != 'image/png'){
      this.playAudioError();
      this.ngxSmartModalService.open('invalid2');
      return false;
    }
    this.core_icon_name3 = event.target.files[0].name
    this.openCropperModal3();
  }
  
  invalidFormat2(){
    this.ngxSmartModalService.close('invalid2');
  }

  imageCropped3(event: ImageCroppedEvent) {
    this.core_icon_cropped3 = event.base64;
    this.core_icon_blob3=this.b64toBlob(event.base64.replace("data:image/png;base64,", ""), 'image/jpeg', 512);
    console.log('imageType', this.core_icon_blob3);
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
    this.coreValuesForm.controls.cms_core_values_icon4.setValue('');
  }

  //core icon 4
  coreIconChangeEvent4(event: any) {
    this.isCropping = true;
    this.core_icon_change4 = event;
    if( event.target.files[0].type != 'image/jpeg' && event.target.files[0].type != 'image/png'){
      this.playAudioError();
      this.ngxSmartModalService.open('invalid3');
      return false;
    }
    this.core_icon_name4 = event.target.files[0].name
    this.openCropperModal4();
  }

  invalidFormat3(){
    this.ngxSmartModalService.close('invalid3');
  }

  imageCropped4(event: ImageCroppedEvent) {
    this.core_icon_cropped4 = event.base64;
    this.core_icon_blob4=this.b64toBlob(event.base64.replace("data:image/png;base64,", ""), 'image/jpeg', 512);
    console.log('imageType', this.core_icon_blob4);
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

  closeCoreModal(){
    window.location.href = "/admin/admin_cms";
  }
}
