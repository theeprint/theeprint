import { Component, OnInit } from '@angular/core';
import {FormBuilder, FormGroup, Validators} from '@angular/forms';
import {ImageCroppedEvent} from 'ngx-image-cropper';
import { UserService } from 'src/app/services/user.service';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';
import { NgxSpinnerService } from "ngx-spinner";
import { DebounceService } from 'src/app/services/debounce.service';
@Component({
  selector: 'app-admin-products-list',
  templateUrl: './admin-products-list.component.html',
  styleUrls: ['./admin-products-list.component.scss']
})
export class AdminProductsListComponent implements OnInit {
  searchKey: any=null

  //status filter
  statusFilterForm : FormGroup;
  status_filter:any;

  public productForm: FormGroup;
  public deleteForm: FormGroup;
  passType = 'password';
  showPassword : boolean = false;
  product_list:any;
  machine_print_list:any;
  limit=5;
  limits = [ 10, 15, 20, 25]
  page=1;
  triggerPrev: any;
  triggerNext: any;
  total:any;
  total_pages:any;
  current_page = 1;
  pages_array=[
  ];
  skeleton_loader = [
    { id: '1'},
    { id: '2'},
    { id: '3'},
    { id: '4'}
  ];
  isLoaded: boolean=false;
  isEmpty: boolean=false;
  updateProductForm: FormGroup;
  errorMessage:any;
  searchForm : FormGroup;
  search_keyword='';
  sort_column="created_at";
  sort_type="DESC";

  constructor(
    protected formBuilder : FormBuilder,
    private route: ActivatedRoute,
    public userService: UserService,  
    private spinner: NgxSpinnerService,
    public ngxSmartModalService: NgxSmartModalService,
    public debounce: DebounceService,
  ) 
  { 
    this.searchKey = this.debounce.debounce(() => {
      this.current_page=1;
      this.search_keyword=this.searchForm.value.search;
      this.getProducts();
    }, 500);

    this.deleteForm = this.formBuilder.group({
      password: ['',[Validators.required]],
      product_id: ['',[Validators.required]],
    })
    this.productForm = this.formBuilder.group({
      product_item_code: ['',[Validators.required]],
      product_machine_print: ['',[Validators.required]],
      product_media: ['',[Validators.required]],
      product_description: ['',[Validators.required]],
      product_status: [''],
    })
    this.updateProductForm = this.formBuilder.group({
      product_item_code: ['',[Validators.required]],
      product_machine_print: ['',[Validators.required]],
      product_media: ['',[Validators.required]],
      product_description: ['',[Validators.required]],
      product_status: [''],
      product_id: [''],
    })
    this.searchForm = this.formBuilder.group({
      search: [''],
    });
    this.statusFilterForm = this.formBuilder.group({
      filter_status: [''],
    });
  }

  ngOnInit() {
    this.getMachinePrint();
    this.getProducts();
  }
  getMachinePrint(){
    this.userService.getMachinePrints().then(response => {
      this.machine_print_list=response['result']['datas'];
   
    });
  }
  keyDownFunction(event) {
    if (event.keyCode === 13) {
      this.searchList();
    }
  }
  searchList(){
    this.current_page=1;
    this.search_keyword=this.searchForm.value.search;
    this.getProducts();
  }

  filterStatus(){
    this.current_page=1;
    this.status_filter=this.statusFilterForm.controls.filter_status.value
    this.isLoaded = true;
    this.getProducts();
  }
  
  sortList(sort_column, sort_type){
    if(sort_type=="ASC"&&this.sort_column!=sort_column&&this.sort_type==sort_type){
      this.sort_type="DESC";
      this.sort_column=sort_column;
    }else if(sort_type=="ASC"&&this.sort_column==sort_column&&this.sort_type!=sort_type){
      this.sort_type="ASC";
      this.sort_column=sort_column;
    }else if(sort_type=="ASC"&&this.sort_column==sort_column&&this.sort_type==sort_type){
      this.sort_type="DESC";
      this.sort_column=sort_column;
    }else if(sort_type=="DESC"&&this.sort_column!=sort_column&&this.sort_type==sort_type){
      this.sort_type="DESC";
      this.sort_column=sort_column;
    }else if(sort_type=="DESC"&&this.sort_column==sort_column&&this.sort_type!=sort_type){
      this.sort_type="DESC";
      this.sort_column=sort_column;
    }else if(sort_type=="DESC"&&this.sort_column==sort_column&&this.sort_type==sort_type){
      this.sort_type="ASC";
      this.sort_column=sort_column;
    }
    this.getProducts();
  }

  getProducts(){
    this.isEmpty=false;
    this.isLoaded=false;
    this.pages_array=[];
    let params ={ 
      limit : this.limit,
      page : this.current_page,
      search_keyword : this.search_keyword,
      sort_column: this.sort_column,
      sort_type: this.sort_type,
      partner_status : this.status_filter
    }
    this.isLoaded = true;
    this.userService.productsList(params).then(response => {
      if(response['success']==true){
        this.product_list=response['result']['datas'];
        if(this.current_page % 3 === 0  ){
          this.pages_array=[];
          for(let i=this.current_page; i<=response['result']['total_pages'];i++){
            this.pages_array.push(i);
          };
        }else if(this.current_page==1){
          for(let i=1; i<=response['result']['total_pages'];i++){
            this.pages_array.push(i);
          };
        }else{
          for(let i=this.current_page-1; i<=response['result']['total_pages'];i++){
            this.pages_array.push(i);
          };
        }
        this.total_pages=response['result']['total_pages'];
        this.current_page=response['result']['page'];
        this.total=response['result']['total'];
        this.isLoaded = false;
      }else{
        this.isEmpty=true;
      }
    })
  }
  addNewProductModal(){
    this.ngxSmartModalService.open('addnewproduct');
  }
  closeNewProductModal(){
  	this.productForm.reset();
    this.ngxSmartModalService.close('addnewproduct');
  }

  deleteModal(product_id){
  	this.deleteForm.controls.product_id.setValue(product_id);
    this.ngxSmartModalService.open('deleteProductModal');
  }
  closeModal(){
    this.ngxSmartModalService.close('deleteProductModal');
    this.ngxSmartModalService.close('successadd');
    this.ngxSmartModalService.close('successupdate');
  }

  showPass() {
    this.passType = "text";
    this.showPassword = true;
  }

  hidePass() {
    this.passType = "password";
    this.showPassword = false;
  }

  playAudioError(){
    let audio = new Audio();
    audio.src = "../../../assets/audio/fail.mp3";
    audio.load();
    audio.play();
  }


  addProduct(){
    this.spinner.show();
    if (this.productForm.valid) {
      this.ngxSmartModalService.close('addnewproduct');
      let params = {
        product_item_code : this.productForm.controls.product_item_code.value,
        product_machine_print : this.productForm.controls.product_machine_print.value,
        product_media : this.productForm.controls.product_media.value,
        product_description : this.productForm.controls.product_description.value,
        product_status : this.productForm.controls.product_status.value,
      }
      this.userService.addProduct(params).then(response => {
        if(response['success']==true){
          this.getProducts();
          this.productForm.reset();
          this.spinner.hide();
          setTimeout(()=>{                           //<<<---using ()=> syntax
            this.ngxSmartModalService.open('successadd');
          }, 500);
        }
      });
    }else{
      this.spinner.hide();
      this.productForm.markAllAsTouched();
      this.playAudioError();
    }
  }
  setLimit(limits){
    this.limit = limits
    this.current_page=1;
    this.isLoaded = true;
    this.getProducts();
  }

  setPage(num){
    console.log('set page',  num)
    this.current_page = num;
    this.isLoaded = true;
    this.getProducts();
  }

  nextPage(){
    this.pages_array=[];
    if(this.current_page < Number(this.total_pages)){
        this.current_page++;
        this.isLoaded = true;
        this.getProducts()
     }
  }

  prevPage(){
    if(this.current_page <= Number(this.total_pages)){
      this.current_page--;
      this.isLoaded = true;
      this.getProducts()
    }
  }
  updateProductModal(product_id){
    this.userService.getSingleProduct(product_id).then(response => {
      console.log(response);
      this.updateProductForm.controls.product_item_code.setValue(response['result'][0].product_item_code);
      this.updateProductForm.controls.product_id.setValue(response['result'][0].product_id);
      if(response['result'][0].product_status==1){
        this.updateProductForm.patchValue({product_status:true});
      }else{
        this.updateProductForm.patchValue({product_status:false});
      }
      this.updateProductForm.controls.product_media.setValue(response['result'][0].product_media);
      this.updateProductForm.controls.product_description.setValue(response['result'][0].product_description);
      this.updateProductForm.patchValue({product_machine_print:response['result'][0].product_machine_print});
    })
    this.ngxSmartModalService.open('updateproduct');
  }
  closeUpdateProductModal(){
    this.ngxSmartModalService.close('updateproduct');
  }
  updateProduct(){
    this.spinner.show();
    if (this.updateProductForm.valid) {
      this.ngxSmartModalService.close('updateproduct');
      let params = {
        product_id: this.updateProductForm.controls.product_id.value,
        product_item_code : this.updateProductForm.controls.product_item_code.value,
        product_machine_print : this.updateProductForm.controls.product_machine_print.value,
        product_media : this.updateProductForm.controls.product_media.value,
        product_description : this.updateProductForm.controls.product_description.value,
        product_status : this.updateProductForm.controls.product_status.value,
      }
      this.userService.updateProduct(params).then(response => {
        if(response['success']==true){
          this.updateProductForm.reset();
          this.getProducts(); 
          this.spinner.hide();
          setTimeout(()=>{                           //<<<---using ()=> syntax
            this.ngxSmartModalService.open('successupdate');
          }, 500);
        }
      });
    }else{
      this.productForm.markAllAsTouched();
      this.playAudioError();
      this.spinner.hide();
    }
  }
  deleteProduct(){
    this.spinner.show();
    let params = {
      password:this.deleteForm.controls.password.value,
      user_id: JSON.parse(localStorage.getItem('user_id'))
    }
    this.userService.validatePassword(params).then(response => {
    	console.log(response)
      if(response['success']==true){
        let params = {
        	product_id:this.deleteForm.controls.product_id.value,
          isDeleted:1
        }
        this.userService.updateProduct(params).then(response => {
          console.log('response', response)
          if(response['success']==true){
            this.getProducts();
            this.spinner.hide();
            setTimeout(()=>{                           //<<<---using ()=> syntax
              this.ngxSmartModalService.close('deleteProductModal');
            }, 500);
          }
        })
      }else{
        this.spinner.hide();
        this.errorMessage=response['results'].message;
      }
    });
  }
}
