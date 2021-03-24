import { Component, OnInit } from '@angular/core';
import {FormArray, FormControl, FormBuilder, FormGroup, Validators} from '@angular/forms';
import {ImageCroppedEvent} from 'ngx-image-cropper';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { UserService } from 'src/app/services/user.service';
import { NgxUiLoaderService } from "ngx-ui-loader"; 
import { NgxSpinnerService } from "ngx-spinner";
import { InputMaskAngularModule } from 'input-mask-angular';
import { Router, ActivatedRoute, NavigationExtras } from '@angular/router';

@Component({
  selector: 'app-admin-add-partners',
  templateUrl: './admin-add-partners.component.html',
  styleUrls: ['./admin-add-partners.component.scss']
})
export class AdminAddPartnersComponent implements OnInit {
  companyForm : FormGroup;
  userForm: FormGroup;
  addressForm: FormGroup;
  productForm = new FormGroup({
    sqm: new FormArray([
    ]),
    sqf: new FormArray([
    ])
  });
  sort_column="product_item_code";
  sort_type="DESC";
  isloading:any;
  addressList=[];
  limit=200;
  page=1;
  product_list:any;
  userProfileResponse:any;
  generatedId:any;
  company_address=[];
  //export csv
  headerList=[
    'Product Item Code',
    'Machine Print',
    'Product Media',
    'Specs/Description',
    'Price per square inch',
    'Price per square ft.',
  ];
  json:any;
  csv_array=[];
  
  //import csv
  public records: any[] = [];
  fileDropRef: any;

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
  files: any[] = [];
  filename: string = null;
  uploadedEsig:any = false;
  uploadedIdimg:any = false;

  constructor(
    protected formBuilder : FormBuilder,
    public userService: UserService,
    public ngxSmartModalService: NgxSmartModalService,
    private ngxService: NgxUiLoaderService,
    private spinner: NgxSpinnerService,
    private router: Router,
  ) {
      this.companyForm = this.formBuilder.group({
        company_name: ['', Validators.compose([Validators.required,Validators.maxLength(100)])],
        tin_number: ['', Validators.compose([Validators.required,Validators.maxLength(12), Validators.minLength(12)])],
        company_address: ['', Validators.compose([Validators.required,Validators.maxLength(250)])],
        partners_company_profile_photo: ['', Validators.compose([Validators.required])],
        hidden_partners_company_profile_photo: ['', Validators.compose([Validators.required])],
      });

      let emailRe = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
      this.userForm = this.formBuilder.group({
        first_name: ['', Validators.compose([Validators.required,Validators.maxLength(70)])],
        last_name: ['', Validators.compose([Validators.required,Validators.maxLength(70)])],
        email:['', Validators.compose([Validators.required,Validators.pattern(emailRe),Validators.maxLength(50)])],
        phone: ['', Validators.compose([Validators.required,Validators.maxLength(11), Validators.minLength(11)])],
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
    this.getProducts();
  }

  playAudioError(){
    let audio = new Audio();
    audio.src = "../../../assets/audio/fail.mp3";
    audio.load();
    audio.play();
  }

  clickCompany(elCompany: HTMLElement){
    elCompany.click();
  }

  clickUser(elUser: HTMLElement){
    elUser.click();
  }

  /* company_form_modal */
  companyLogoChange(event: any) {
    this.isCropping = true;
    this.imageChangedEvent = event;
    // let a : string = event.target.files[0].type;
    if( event.target.files[0].type != 'image/jpeg' && event.target.files[0].type != 'image/png'){
      this.playAudioError();
      this.ngxSmartModalService.open('invalid');
      return false;
    }
    this.companyLogo = event.target.files[0].name
    this.companyForm.patchValue({
      hidden_partners_company_profile_photo: this.companyLogo,
      
    });
    console.log('hidden_partners_company_profile_photo',this.companyForm.controls.hidden_partners_company_profile_photo);
    this.companyForm.controls.partners_company_profile_photo;
    
    console.log('partners_company_profile_photo',this.companyForm.controls.partners_company_profile_photo);
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
    this.photo_for_upload = this.croppedImage;
  }

  onChange(event: any){
    console.log(event);
    this.companyForm.controls.partners_company_profile_photo.setValue('');
  }

  onChanges(event: any){
    console.log(event);
    this.userForm.controls.user_picture.setValue('');
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
    this.userForm.patchValue({
      hidden_user_picture: this.userAvatar


    });
    this.opencropperModal();
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
 
  invalidFormatUser(){
    this.ngxSmartModalService.close('invalid_user');
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

  proceedPriceList(){
    
    console.log('user',this.userForm);
    console.log('company',this.companyForm);
    if (this.userForm.valid&&this.companyForm.valid) {
      this.show = true;
    }else{ 
      this.userForm.markAllAsTouched();
      this.companyForm.markAllAsTouched();
       // this.playAudioError();
      this.show = false; 
      const invalid = [];
      const controls = this.companyForm.controls;
      for (const name in controls) {
          if (controls[name].invalid) {
              invalid.push(name);
          }
      }
      console.log('invalid',invalid);
    } 
  }

  viewProfile(){
    this.show = false;
  }

  closeModal(){
    window.location.href = "/admin/partners-list";
  }
  
  get sqm(): FormArray {
    return this.productForm.get('sqm') as FormArray;
  }
  get sqf(): FormArray {
    return this.productForm.get('sqf') as FormArray;
  }
  addProductField() {
    this.sqm.push(new FormControl('', Validators.required));
    this.sqf.push(new FormControl('', Validators.required));
  }
  keyPressNumbers(event) {
    var charCode = (event.which) ? event.which : event.keyCode;
    if ((charCode < 48 || charCode > 57 )) {
      event.preventDefault();
      return false;
    } else {
      return true;
    }
  }
  createPartner(){
    if(this.productForm.invalid){
      this.ngxSmartModalService.open('priceadd');
      console.log('invalid');
    }else{
      this.isloading = true;
      this.spinner.show(); 
      let formData = new FormData();
      formData.append('user_profile_first_name', this.userForm.value.first_name);
      formData.append('user_role_id', '2');
      formData.append('user_profile_last_name', this.userForm.value.last_name);
      formData.append('user_profile_phone', this.userForm.value.phone);
      formData.append('user_email', this.userForm.value.email);
      formData.append('user_profile_avatar', this.user_photo, this.croppedImg.type);
      this.userService.createUserProfile(formData).then(res => {
        if(res['success']==true){
          this.userService.sendEmailConfirmation(res['result']['link']);
          let formData = new FormData();
          formData.append('partner_user', res['result']['user_id']);
          formData.append('partner_company', this.companyForm.value.company_name);
          formData.append('partner_tin_number', this.companyForm.value.tin_number.replace('-', ''));
          formData.append('partner_address', this.companyForm.value.company_address);
          formData.append('partner_logo',this.company_photo, this.croppedImage.type);
          this.userService.createPartnersProfile(formData).then(res => {
            for(let i = 0; i < this.product_list.length; i++){
              let param = {
                product_price_partner_id : res['result']['partner_id'], 
                product_id : this.product_list[i].product_id,
                product_price_sqm : this.sqm.at(i).value,
                product_price_sqf : this.sqf.at(i).value
              }
              this.userService.savePriceList(param)
            }

            for(let i=0;i<this.company_address.length;i++){
              let param = {
                partner_id : res['result']['partner_id'],
                company_address_label : this.company_address[i].company_address_label,
                company_address : this.company_address[i].company_address,
                company_address_default : this.company_address[i].company_address_default,
                company_address_person_firstname : this.company_address[i].company_address_person_firstname,
                company_address_person_lastname : this.company_address[i].company_address_person_lastname,
                company_address_contact : this.company_address[i].company_address_contact,
              }
              this.userService.addAddress(param);
              console.log(param);
            }
          });
          this.isloading = false;
          this.spinner.hide();
          setTimeout(()=>{                           //<<<---using ()=> syntax
            this.ngxSmartModalService.open('addpartner');
          }, 500);
        }else{
          this.spinner.hide();
          this.isloading = false;
          this.ngxSmartModalService.open('errorEmail');
         
        }
      });
    }
  }
  getProducts(){
    let params ={ 
      partner_status : "1",
      limit : this.limit,
      page : this.page,
      search_keyword : "",
      sort_column: this.sort_column,
      sort_type: this.sort_type,
    }
    this.userService.productsList(params).then(response => {
      this.product_list=response['result']['datas'];
      for(let i=0; i<this.product_list.length;i++){
        this.addProductField();
      }
    })
  }
  
  addNewAddressesModal(){
    this.ngxSmartModalService.open('addnewaddress');
  }
  closeNewAddressesModal(){
    this.addressForm.reset();
    this.ngxSmartModalService.close('addnewaddress');
  }
  addAddress(){
    if (this.addressForm.valid) {
      let params = {
        company_address_label : this.addressForm.controls.company_address_label.value,
        company_address : this.addressForm.controls.company_address.value,
        company_address_default : this.addressForm.controls.company_address_default.value,
        company_address_person_firstname : this.addressForm.controls.company_address_person_firstname.value,
        company_address_person_lastname : this.addressForm.controls.company_address_person_lastname.value,
        company_address_contact : this.addressForm.controls.company_address_contact.value
      }
      if(this.addressForm.controls.company_address_default.value==1){
        for(let i=0; i<this.company_address.length; i++){
          this.company_address[i].company_address_default='';
        }
      }
      this.company_address.push(params);
      console.log(this.company_address);
      this.addressForm.reset();
      this.ngxSmartModalService.close('addnewaddress');
      console.log(this.company_address);
    }else{
      console.log('false')
      this.addressForm.markAllAsTouched();
    } 
  }
  exportCsv(){
    this.csv_array=[];
    let params ={ 
      partner_status : "1",
      limit : this.limit,
      page : this.page,
      sort_column: this.sort_column,
      sort_type: this.sort_type,
      search_keyword : ""
    }
    this.userService.productsList(params).then(response => {
      console.log(response)
      if(response['success']==true){
        this.json=response['result']['datas'];
        for(let i=0; i<this.json.length;i++){
          let row ={ 
            'Product Item Code' : this.json[i].product_item_code,
            'Machine Print' : this.json[i].machine_print,
            'Product Media' : this.json[i].product_media,
            'Specs/Description' : this.json[i].product_description,
            'Price per square inch': '',
            'Price per square ft.': '',
          }
          this.csv_array.push(row);
        }
        console.log('json', this.json)
        this.downloadFile(this.csv_array);
      }
    })
  }
  ConvertToCSV(objArray, headerList) {
    let array = typeof objArray != 'object' ? JSON.parse(objArray) : objArray;
    let str = '';
    let row = '';
    for (let index in headerList) {
     row += headerList[index] + ',';
    }
    row = row.slice(0, -1);
    str += row + '\r\n';
    for (let i = 0; i < array.length; i++) {
     let line = '';
     for (let index in headerList) {
      let head = headerList[index];
      line += array[i][head]+ ',';
     }
     str += line + '\r\n';
    }
    return str;
   }
  downloadFile(data, filename='Product Price List - '+Date()) {
    let csvData = this.ConvertToCSV(data, this.headerList);
    console.log(csvData)
    let blob = new Blob(['\ufeff' + csvData], { type: 'text/csv;charset=utf-8;' });
    let dwldLink = document.createElement("a");
    let url = URL.createObjectURL(blob);
    let isSafariBrowser = navigator.userAgent.indexOf('Safari') != -1 && navigator.userAgent.indexOf('Chrome') == -1;
    if (isSafariBrowser) {  //if Safari open in new window to save file with random filename.
        dwldLink.setAttribute("target", "_blank");
    }
    dwldLink.setAttribute("href", url);
    dwldLink.setAttribute("download", filename + ".csv");
    dwldLink.style.visibility = "hidden";
    document.body.appendChild(dwldLink);
    dwldLink.click();
    document.body.removeChild(dwldLink);
  }

  fileBrowseHandler(files) {
    this.uploadListener(files.target.files);
    this.prepareFilesList(files.target.files);
  }
  uploadListener($event: any): void {
    let text = [];
    let files = $event;
    if (this.isValidCSVFile(files[0])) {
      let input = $event;
      let reader = new FileReader();
      reader.readAsText(input[0]);
      reader.onload = () => {
        let csvData = reader.result;
        let csvRecordsArray = (<string>csvData).split(/\r\n|\n|\r/);
        csvRecordsArray.forEach((element,index) => {
          let elementArray = element.split(',');
          console.log('price', elementArray)
          if(index > 0 ){
            this.records.push({
              product_price_sqm: elementArray[4],
              product_price_sqf: elementArray[5]
            });
          }
        });
        let sqm_list=[];
        let sqf_list=[];
        for(let i=0; i<this.records.length;i++){
          sqm_list.push(this.records[i].product_price_sqm);
          sqf_list.push(this.records[i].product_price_sqf);
        }
        this.sqm.patchValue(sqm_list)
        this.sqf.patchValue(sqf_list)
      };
      reader.onerror = function () {
        console.log('error is occured while reading file!');
      };

    } else {
      this.fileReset();
    }
  }
  isValidCSVFile(file: any) {
    return file.name.endsWith(".csv");
  }
  fileReset() {
    this.fileDropRef.nativeElement.value = "";
    this.records = [];
  }
  prepareFilesList(files: Array<any>) {
    for (const item of files) {
      item.progress = 0;
      this.files.push(item);
    }
    console.log('items',this.files);
    this.uploadFilesSimulator(0);
  }
  uploadFilesSimulator(index: number) {
    if (index === this.files.length) {
      return;
    } else {
      if (this.files[index].progress === 100) {
        this.uploadFilesSimulator(index + 1);
      } else {
        this.files[index].progress += 5;
      }
    }
  }
}
