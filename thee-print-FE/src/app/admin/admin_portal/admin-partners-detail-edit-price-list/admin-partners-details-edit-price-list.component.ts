import { Component, OnInit } from '@angular/core';
import { FormArray, FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';
import { MainService } from 'src/app/services/main.service';
import { UserService } from 'src/app/services/user.service';
import { EnvService } from 'src/app/lib/env.service';
import { ConfirmedValidator } from 'src/app/confirmed.validator';
import { NgxSpinnerService } from "ngx-spinner";
import { NgxSmartModalService } from 'ngx-smart-modal';
@Component({
  selector: 'app-admin-partners-details-edit-price-list',
  templateUrl: './admin-partners-details-edit-price-list.component.html',
  styleUrls: ['./admin-partners-details-edit-price-list.component.scss']
})
export class AdminPartnersDetailsEditPriceListComponent implements OnInit {
  partner_details:any;
  product_list:any;
  new_product_list:any;
  product_prices:any;
  user_id:any;
  json:any;
  //import csv
  public records: any[] = [];
  fileDropRef: any;
  files: any[] = [];
  headerList=[
    'Product Item Code',
    'Machine Print',
    'Product Media',
    'Specs/Description',
    'Price per square inch',
    'Price per square ft.',
  ];
  csv_array=[];
  productForm = new FormGroup({
    sqm: new FormArray([
    ]),
    sqf: new FormArray([
    ]),
    product_price_id: new FormArray([
    ])
  });
  newProductForm = new FormGroup({
    sqm1: new FormArray([
    ]),
    sqf1: new FormArray([
    ]),
  });
  newProductIsEmpty:boolean=true;
  constructor(
    public mainApi: MainService,
    private router: Router,
    private env: EnvService,
    private _router: ActivatedRoute,
    public formBuilder: FormBuilder,
    public userService: UserService,
    private spinner: NgxSpinnerService,
    private route: ActivatedRoute,
    public ngxSmartModalService: NgxSmartModalService,
  ) { }

  ngOnInit() {
    this.user_id = this.route.snapshot.paramMap.get('partner_id');
    this.getProfile(this.user_id);
  }
  get sqm1(): FormArray {
    return this.newProductForm.get('sqm1') as FormArray;
  }
  get sqf1(): FormArray {
    return this.newProductForm.get('sqf1') as FormArray;
  }
  get sqm(): FormArray {
    return this.productForm.get('sqm') as FormArray;
  }
  get sqf(): FormArray {
    return this.productForm.get('sqf') as FormArray;
  }
  get product_price_id(): FormArray {
    return this.productForm.get('product_price_id') as FormArray;
  }
  addProductField() {
    this.sqm.push(new FormControl('', Validators.required));
    this.sqf.push(new FormControl('', Validators.required));
    this.product_price_id.push(new FormControl('', Validators.required));
  }
  addProductField1() {
    this.sqm1.push(new FormControl('', Validators.required));
    this.sqf1.push(new FormControl('', Validators.required));
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
  getProfile(user_id){
    this.userService.getProfile(user_id).then(response => {
      this.partner_details=response['result'][0];
      this.getProductPrice(response['result'][0].partner_id);
      this.getNewProductPrice(response['result'][0].partner_id);
      console.log('eto', this.partner_details);
    });
  }
  getProductPrice(partner_id){
    let product_price_id_list=[];
    let sqm_list=[];
    let sqf_list=[];
    let params ={ 
      partner_id: partner_id,
      limit : 150,
      page : 1,
      search_keyword : '',
    }
    this.userService.getProductPrice(params).then(response => {
      console.log(response)
      for(let i=0; i<response['result']['datas'].length;i++){
        this.addProductField();
        product_price_id_list.push(response['result']['datas'][i].product_price_id);
        sqm_list.push(response['result']['datas'][i].product_price_sqm);
        sqf_list.push(response['result']['datas'][i].product_price_sqf);
      }
      this.product_price_id.patchValue(product_price_id_list)
      this.sqm.patchValue(sqm_list)
      this.sqf.patchValue(sqf_list)
      console.log(product_price_id_list)
      this.product_prices=response['result']['datas'];
    });
  }
  updateProductPrice(){
    this.spinner.show();
    if (this.productForm.valid) {
      console.log('lenght', this.product_prices.length);
      for(let i = 0; i < this.product_prices.length; i++){
        let param = {
          product_price_sqm : this.sqm.at(i).value,
          product_price_sqf : this.sqf.at(i).value,
          product_price_id : this.product_price_id.at(i).value
        }
        this.userService.updateProductPrices(param)
        if(i==this.product_prices.length-1){
          this.getProfile(this.user_id); 
          this.spinner.hide();
          setTimeout(()=>{  
            this.ngxSmartModalService.open('success');
          }, 500);
        }
      }
    }else{
      this.spinner.hide();
      setTimeout(()=>{  
        this.ngxSmartModalService.open('priceadd');
      }, 500);
    }
  }


s

  getNewProductPrice(partner_id){
    let params ={ 
      partner_id: partner_id
    }
    this.userService.getNewProductPrice(params).then(response => {
      if(response['success']==true){
        this.newProductIsEmpty=false;
        console.log('new',response)
        this.new_product_list=response['result']['data'];
        for(let i=0; i<this.new_product_list.length;i++){
          this.addProductField1();
        }
      }else{
        this.newProductIsEmpty=true;
      }
    });
  }
  
  activetab = 1;
  changeTab(num=1){
    this.activetab = num;
    console.log(this.activetab);
  }
  addNewProductPrice(){
    this.spinner.show();
    if (this.newProductForm.valid) {
      for(let i = 0; i < this.new_product_list.length; i++){
        let param = {
          product_price_partner_id :  this.partner_details.partner_id, 
          product_id : this.new_product_list[i].product_id,
          product_price_sqm : this.sqm1.at(i).value,
          product_price_sqf : this.sqf1.at(i).value
        }
        this.userService.savePriceList(param).then(response => {
          if(response['success']==true){
            this.spinner.hide();
            setTimeout(()=>{  
              this.ngxSmartModalService.open('success');
            }, 500);
          }
        });
      }
    }else{
      this.spinner.hide();
      this.ngxSmartModalService.open('priceadd');
    }
  }
  exportCsv(){
    this.csv_array=[];
    let params ={ 
      partner_id: this.partner_details.partner_id,
    }
    this.userService.getNewProductPrice(params).then(response => {
      if(response['success']==true){
        this.json=response['result']['data'];
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
    });
  }
  downloadFile(data, filename='New Product Price List - '+Date()) {
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
          if(index > 0){
            this.records.push({
              product_price_sqm: elementArray[4],
              product_price_sqf: elementArray[5]
            });
           console.log('price', this.records)
          }
        });
        let sqm_list=[];
        let sqf_list=[];
        for(let i=0; i<this.records.length;i++){
          sqm_list.push(this.records[i].product_price_sqm);
          sqf_list.push(this.records[i].product_price_sqf);
        }
        this.sqm1.patchValue(sqm_list)
        this.sqf1.patchValue(sqf_list)
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
  closeModal(){
    window.location.href = "admin/partners-details/"+this.partner_details.user_id;
  }
} 