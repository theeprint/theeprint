import { Component, OnInit } from '@angular/core';
import { FormArray, FormControl, FormGroup, FormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';
import { MainService } from 'src/app/services/main.service';
import { UserService } from 'src/app/services/user.service';
import { EnvService } from 'src/app/lib/env.service';
import { ConfirmedValidator } from 'src/app/confirmed.validator';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { NgxSpinnerService } from "ngx-spinner";

@Component({
  selector: 'app-admin-new-product-price-list',
  templateUrl: './admin-new-product-price-list.component.html',
  styleUrls: ['./admin-new-product-price-list.component.scss']
})
export class AdminNewProductPriceListComponent implements OnInit {
  
  companyForm : FormGroup;
  userForm: FormGroup;
  show:boolean = false;
  partner_details:any;
  product_list:any;
  product_prices:any;
  limit=50;
  page=1;
  user_id:any;
  productForms = new FormGroup({
    sqm: new FormArray([
    ]),
    sqf: new FormArray([
    ]),
    product_price_id: new FormArray([
    ])
  });

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
  files: any[] = [];
  constructor(
    public mainApi: MainService,
    private router: Router,
    private env: EnvService,
    private _router: ActivatedRoute,
    public formBuilder: FormBuilder,
    public userService: UserService,
    private route: ActivatedRoute,
    public ngxSmartModalService: NgxSmartModalService,
    private spinner: NgxSpinnerService,
  ) { }

  ngOnInit() {
    this.user_id = this.route.snapshot.paramMap.get('partner_id');
    console.log('user',this.user_id);
    this.getProfile(this.user_id);
    this.getProducts();
  }
  
  goToNppl(){
    this.router.navigate(['/admin/partners-details/'+this.user_id+'/edit-price-list']);
  }

  
  get sqm1(): FormArray {
    return this.productForms.get('sqm1') as FormArray;
  }
  get sqf1(): FormArray {
    return this.productForms.get('sqf1') as FormArray;
  }
  get product_price_id1(): FormArray {
    return this.productForms.get('product_price_id1') as FormArray;
  }
  addProductField() {
    this.sqm1.push(new FormControl('', Validators.required));
    this.sqf1.push(new FormControl('', Validators.required));
    this.product_price_id1.push(new FormControl('', Validators.required));
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
      console.log('eto', this.partner_details);
    });
  }
  getProductPrice(partner_id){
    // let product_price_id_list=[];
    // let sqm_list=[];
    // let sqf_list=[];
    this.userService.getProductPrice(partner_id).then(response => {
      // for(let i=0; i<response['result'].length;i++){
      //   this.addProductField();
      //   product_price_id_list.push(response['result'][i].product_price_id);
      //   sqm_list.push(response['result'][i].product_price_sqm);
      //   sqf_list.push(response['result'][i].product_price_sqf);
      // }
      // this.product_price_id.patchValue(product_price_id_list)
      // this.sqm.patchValue(sqm_list)
      // this.sqf.patchValue(sqf_list)
      // console.log(product_price_id_list)
      this.product_prices=response['result'];
    });
  }


  getProducts(){
    let params ={ 
      partner_status : "1",
      limit : this.limit,
      page : this.page,
      search_keyword : ""
    }
    this.userService.productsList(params).then(response => {
      this.product_list=response['result']['datas'];
      for(let i=0; i<this.product_list.length;i++){
        this.addProductField();
        console.log('qw', this.product_list);
      }
    })
  }
}
