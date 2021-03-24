import { Component, OnInit } from '@angular/core';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { FormGroup, FormBuilder, Validators, FormArray } from '@angular/forms';
import { UserService } from 'src/app/services/user.service';
import { NgxSpinnerService } from "ngx-spinner";
import { Router, ActivatedRoute, NavigationExtras } from '@angular/router';
import {MomentDateAdapter, MAT_MOMENT_DATE_ADAPTER_OPTIONS} from '@angular/material-moment-adapter';
import {DateAdapter, MAT_DATE_FORMATS, MAT_DATE_LOCALE} from '@angular/material/core';
import * as _moment from 'moment';
// import { default as _rollupMoment } from 'moment';
export const MY_FORMATS = {
  parse: {
    dateInput: 'LL',
  },
  display: {
    dateInput: 'YYYY-MM-DD',
    monthYearLabel: 'YYYY',
    dateA11yLabel: 'LL',
    monthYearA11yLabel: 'YYYY',
  },
};
@Component({
  selector: 'app-admin-create-job-order',
  templateUrl: './admin-create-job-order.component.html',
  styleUrls: ['./admin-create-job-order.component.scss'],
  providers: [
    {
      provide: DateAdapter,
      useClass: MomentDateAdapter,
      deps: [MAT_DATE_LOCALE, MAT_MOMENT_DATE_ADAPTER_OPTIONS]
    },

    { provide: MAT_DATE_FORMATS, useValue: MY_FORMATS },
  ],
})
export class AdminCreateJobOrderComponent implements OnInit {

  user_id:any;
  partner_details:any
  public addressForm: FormGroup;
  public addJobForm: FormGroup;
  public addItemForm: FormGroup;
  public editJobForm: FormGroup;
  partnersList: any;
  company_address=[];
  machine_print_list:any;
  product_media_list:any;
  job_order_item=[];
  item_product_description:any;
  item_product_description_edit:any;
  item:any;
  item_edit:any;
  subTotal=0;
  vat=0;
  gross=0;
  edit_product_index:any;
  measurements: any = [
    "inches","feet"
  ];
  measurement = "inches";
  partner_id: any;
  partner_company: any;
  partners_id: any;
  machine_print_list_edit:any;
  today = new Date();
  addProductHidden:boolean=false;
  constructor(
    public ngxSmartModalService: NgxSmartModalService,
    public formBuilder: FormBuilder,
    private spinner: NgxSpinnerService,
    public userService: UserService,
    private route: Router,
    private dateAdapter: DateAdapter<Date>
    ) { 


    this.addJobForm = this.formBuilder.group({
      job_order_user_id:['', Validators.compose([Validators.required,Validators.maxLength(300)])],
      job_order_project_name: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
      job_order_due_date: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
      job_order_delivery_address: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
    
    })

    this.addressForm = this.formBuilder.group({
      company_address_label: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
      company_address: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
      company_address_default: [''],
      company_address_person_firstname: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
      company_address_person_lastname: ['', Validators.compose([Validators.required,Validators.maxLength(300)])],
      company_address_contact: ['', Validators.compose([Validators.required])],
    })

    this.addItemForm = this.formBuilder.group({
      items: this.formBuilder.array([]),
      product_media: ['', Validators.compose([Validators.required])],
      machine_print: ['', Validators.compose([Validators.required])],
      job_order_item_length: ['', Validators.compose([Validators.required])],
      job_order_item_width: ['', Validators.compose([Validators.required])],
      job_order_item_qty: ['', Validators.compose([Validators.required])],
      product_description: ['']
    })
    this.editJobForm = this.formBuilder.group({
      items: this.formBuilder.array([]),
      product_media: ['', Validators.compose([Validators.required])],
      machine_print: ['', Validators.compose([Validators.required])],
      job_order_item_length: ['', Validators.compose([Validators.required])],
      job_order_item_width: ['', Validators.compose([Validators.required])],
      job_order_item_qty: ['', Validators.compose([Validators.required])],
      product_description: ['']
    })
  }

  ngOnInit() {
    // this.singlePartner(JSON.parse(localStorage.getItem('user_id')));
    this.dateAdapter.setLocale('PST'); 
    this.viewPartners(this.partnersList);
  }

  playAudioError(){
    let audio = new Audio();
    audio.src = "../../../assets/audio/fail.mp3";
    audio.load();
    audio.play();
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
  items(): FormArray {
    return this.addItemForm.get("items") as FormArray
  }

  newItems(): FormGroup {
    return this.formBuilder.group({
      product_media: '',
      machine_print: '',
      job_order_item_length: '',
      job_order_item_width: '',
      job_order_item_qty: '',
      product_description: ''
    })
  }

  addItems() {
    if (this.addItemForm.valid) {
      let params = {
        job_order_item_product_id : this.item.product_id,
        job_order_item_length : this.addItemForm.controls.job_order_item_length.value,
        job_order_item_width : this.addItemForm.controls.job_order_item_width.value,
        job_order_item_qty : this.addItemForm.controls.job_order_item_qty.value,
        job_order_item_remark : this.addItemForm.controls.product_description.value,
        job_order_item_price : '',
        job_order_item_unit : '',
        product_media : this.item.product_media,
        product_machine_print : this.item.machine_print,
        product_machine_print_id : this.item.machine_print_id,
        product_description:this.item.product_description
      }
      if(this.measurement=='inches'){
        params.job_order_item_price =this.item.product_price_sqm;
        params.job_order_item_unit = '0';
      }else{
        params.job_order_item_price=this.item.product_price_sqf
        params.job_order_item_unit='1';
      }
      this.job_order_item.push(params);
      console.log('params', params)
      this.addItemForm.reset();
    }else{
      this.addItemForm.markAllAsTouched();
    }
    
  }
 
  removeItems(item_index) {
    this.job_order_item.splice(item_index, 1); 
    console.log(this.job_order_item)
  }

  openCancelJobOrder(){
    this.ngxSmartModalService.open('cancelOrder');
  }
  closeCancelJobOrder(){
    this.ngxSmartModalService.close('cancelOrder');
    window.location.href = "/admin/job-order-list";
  }

  addNewAddressesModal(){
    this.ngxSmartModalService.open('addnewaddress');
  }
  closeNewAddressesModal(){
    this.addressForm.reset();
    this.ngxSmartModalService.close('addnewaddress');
  }

  openEditProductModal(index){
    this.machine_print_list_edit=this.machine_print_list;
    this.edit_product_index=index;
    this.editJobForm.controls.job_order_item_qty.setValue(this.job_order_item[index].job_order_item_qty);
    this.editJobForm.controls.job_order_item_width.setValue(this.job_order_item[index].job_order_item_width);
    this.editJobForm.controls.job_order_item_length.setValue(this.job_order_item[index].job_order_item_length);
    this.editJobForm.controls.product_description.setValue(this.job_order_item[index].job_order_item_remark);
    this.editJobForm.controls.machine_print.setValue(this.job_order_item[index].product_machine_print_id.toString());
    this.editJobForm.controls.product_media.setValue(this.job_order_item[index].product_media);
    if (this.job_order_item[index].job_order_item_unit==0){
      this.measurements = [
        "inches","feet"
      ];
    }else{
      this.measurements = [
        "feet","inches"
      ];
    }
    this.ngxSmartModalService.open('editProduct');
  }

  closeEditProductModal(){
    this.ngxSmartModalService.close('editProduct');
  }
  closeWrong(){
    this.ngxSmartModalService.close('wrong');
  }

  addAddress(partner_id){
    this.spinner.show();
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
      this.userService.addAddress(params).then(response => {
        console.log(response);
        if(response['success']==true){
          setTimeout(()=>{   
            this.spinner.hide();                        //<<<---using ()=> syntax
            this.ngxSmartModalService.close('addnewaddress');
            this.getAddresses(this.partner_details.partner_id);
            this.addressForm.reset();
          }, 500);
        }else{
          this.ngxSmartModalService.open('wrong');
        }
      });
    }else{
      this.addressForm.markAllAsTouched();
      this.spinner.hide();
      this.playAudioError();
    }
  }

  isSelected:any;
  selectAddress(id){
    this.isSelected = id;
    this.addJobForm.controls.job_order_delivery_address.setValue(id);
  }
  
  addJob(){
    this.spinner.show();
    if (this.addItemForm.valid && this.addJobForm.valid) {
      if(this.item){
        let items = {
          job_order_item_product_id : this.item.product_id,
          job_order_item_length : this.addItemForm.controls.job_order_item_length.value,
          job_order_item_width : this.addItemForm.controls.job_order_item_width.value,
          job_order_item_qty : this.addItemForm.controls.job_order_item_qty.value,
          job_order_item_remark : this.addItemForm.controls.product_description.value,
          job_order_item_price : '',
          job_order_item_unit : '',
          product_media : this.item.product_media,
          product_machine_print : this.item.machine_print
        }
        if(this.measurement=='inches'){
          items.job_order_item_price =this.item.product_price_sqm;
          items.job_order_item_unit = '0';
        }else{
          items.job_order_item_price=this.item.product_price_sqf
          items.job_order_item_unit='1';
        }
        this.job_order_item.push(items);
        this.hideAddProduct();
      }
      for(let i=0; i<this.job_order_item.length; i++){
        this.job_order_item[i].area=this.job_order_item[i].job_order_item_width*this.job_order_item[i].job_order_item_length;
        this.job_order_item[i].total_price=(this.job_order_item[i].area*this.job_order_item[i].job_order_item_qty)*this.job_order_item[i].job_order_item_price;
        this.subTotal=this.subTotal+this.job_order_item[i].total_price;
        if(this.job_order_item[i].job_order_item_unit==0){
          this.job_order_item[i].unit_words='in';
        }else{
          this.job_order_item[i].unit_words='ft';
        }
      }
      this.vat=this.subTotal*0.12;
      this.gross=this.subTotal+this.vat;
      let moment_date=this.addJobForm.controls.job_order_due_date.value;
      console.log(moment_date);
      let due_date= moment_date._i['year']+'-'+(parseInt(moment_date._i['month'])+1)+'-'+moment_date._i['date'];
      let params = {
        sender:this.partner_details.partner_user,
        sender_role: JSON.parse(localStorage.getItem('user_role_id')),  
        job_order_user_id : this.partner_details.partner_id,
        job_order_status : '6',
        job_order_project_name : this.addJobForm.controls.job_order_project_name.value,
        job_order_due_date : due_date,
        job_order_delivery_address : this.addJobForm.controls.job_order_delivery_address.value,
        order_items : this.job_order_item,
        job_order_total : this.gross,
        updated_by: JSON.parse(localStorage.getItem('user_id'))
      }
      console.log('job order request',params);
      this.userService.addJob(params).then(response => {
        let job_id=response["result"].job_order_request_id
        this.route.navigate(['/admin/admin-partners-quotation/'+job_id]);
      })
    }else{
      this.spinner.hide();
      this.addJobForm.markAllAsTouched();
      this.addItemForm.markAllAsTouched();
      this.playAudioError();
    }
  }

  setMeasurement(measurements){
    this.measurement = measurements
  }
  
  singlePartner(user_id){
    this.userService.singlePartner(user_id).then(response => {
      this.partner_details = response['result'][0];
      this.partner_company=this.partner_details.partner_company;
      this.partners_id=this.partner_details.partner_id;
      this.getAddresses(this.partner_details.partner_id);
      this.getProductMediaPerPartner(this.partner_details.partner_id);
    })
  }

  getAddresses(user_id){
    this.userService.getCompanyAddress(user_id).then(response => {
      this.company_address=response['result']['data']
      this.isSelected=this.company_address[0].company_address_id;
      this.addJobForm.controls.job_order_delivery_address.setValue(this.company_address[0].company_address_id);
    })
  }

  getProductMediaPerPartner(partner_id){
    this.userService.getProductMediaPerPartner(partner_id).then(response => {
      this.product_media_list=response['result']['data'];
    });
  }

  mediaChange(productMedia): void {
    this.spinner.show();
    // this.singlePartner(this.partner_id);
    this.userService.getMachinePrintByMedia(this.partners_id, productMedia).then(response => {
      if(response['success']==true){
        this.machine_print_list=response['result']['data'];
        this.spinner.hide();
      }else{
        this.spinner.hide();
        setTimeout(()=>{ 
          this.ngxSmartModalService.open('wrong');
        }, 500);
      }
    });
  }

  machinePrintChange(machine_print): void {
    let params = {
      product_media : this.addItemForm.controls.product_media.value,
      machine_print : machine_print,
      product_price_partner_id:this.partner_details.partner_id
    }
    // console.log('value', params)
    this.userService.getProductPartners(params).then(response => {
      if(response['success']==true){
        this.item=response['result']['data'][0];
        this.item_product_description=this.item.product_description
        console.log(this.item);
      }
    });
  }

  viewPartners(params){
    this.userService.viewPartners(params).then(response => {
      this.partnersList = response['result'];
      console.log('Partners List:',this.partnersList);
    })
  }

  setPartners(partner_company) {
    this.partner_id=partner_company;
    this.singlePartner(this.partner_id);
  }

  editJobOrderProduct(){
    this.spinner.show();
    this.job_order_item[this.edit_product_index].job_order_item_length=this.editJobForm.controls.job_order_item_length.value;
    if (this.editJobForm.valid) {
      this.job_order_item.splice(this.edit_product_index, 1)
      let params = {
        job_order_item_product_id : this.item_edit.product_id,
        job_order_item_length : this.editJobForm.controls.job_order_item_length.value,
        job_order_item_width : this.editJobForm.controls.job_order_item_width.value,
        job_order_item_qty : this.editJobForm.controls.job_order_item_qty.value,
        job_order_item_remark : this.editJobForm.controls.product_description.value,
        job_order_item_price : '',
        job_order_item_unit : '',
        product_media : this.item_edit.product_media,
        product_machine_print : this.item_edit.machine_print,
        product_machine_print_id : this.item_edit.machine_print_id,
        machine_print : this.item_edit.machine_print_id
      }
      if(this.measurement=='inches'){
        params.job_order_item_price =this.item_edit.product_price_sqm;
        params.job_order_item_unit = '0';
      }else{
        params.job_order_item_price=this.item_edit.product_price_sqf
        params.job_order_item_unit='1';
      }
      this.job_order_item.push(params);
      console.log('params', params)
      this.spinner.hide();
      this.ngxSmartModalService.close('editProduct');
      this.editJobForm.reset();
    }else{
      this.spinner.hide();
      this.editJobForm.markAllAsTouched();
    }
  }

  editMediaChange(product_media): void {
    this.spinner.show();
    this.userService.getMachinePrintByMedia(this.partners_id, product_media).then(response => {
      if(response['success']==true){        
        this.machine_print_list_edit=response['result']['data'];
        this.spinner.hide();
      }else{
        this.spinner.hide();
        setTimeout(()=>{ 
          this.ngxSmartModalService.open('wrong');
        }, 500);
      }
    });
  }

  editMachinePrintChange(machine_print): void {
    let params = {
      product_media : this.editJobForm.controls.product_media.value,
      machine_print : machine_print,
      product_price_partner_id:this.partner_details.partner_id
    }
    // console.log('value', params)
    this.userService.getProductPartners(params).then(response => {
      if(response['success']==true){
        this.item_edit=response['result']['data'][0];
        this.item_product_description_edit=this.item.product_description
        console.log(this.item);
      }
    });
  }

  hideAddProduct(){
    this.addProductHidden=true
    this.addItemForm = this.formBuilder.group({
      items: this.formBuilder.array([]),
      product_media: [''],
      machine_print: [''],
      job_order_item_length: [''],
      job_order_item_width: [''],
      job_order_item_qty: [''],
      product_description: ['']
    })
  }

  showAddItem(){
    this.addProductHidden=false
    this.addItemForm = this.formBuilder.group({
      items: this.formBuilder.array([]),
      product_media: ['', Validators.compose([Validators.required])],
      machine_print: ['', Validators.compose([Validators.required])],
      job_order_item_length: ['', Validators.compose([Validators.required])],
      job_order_item_width: ['', Validators.compose([Validators.required])],
      job_order_item_qty: ['', Validators.compose([Validators.required])],
      product_description: ['']
    })
  }
  
}
