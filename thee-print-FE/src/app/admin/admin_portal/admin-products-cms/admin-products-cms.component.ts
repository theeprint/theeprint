import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { UserService } from 'src/app/services/user.service';
import { DebounceService } from 'src/app/services/debounce.service';
@Component({
  selector: 'app-admin-products-cms',
  templateUrl: './admin-products-cms.component.html',
  styleUrls: ['./admin-products-cms.component.scss']
})
export class AdminProductsCmsComponent implements OnInit {

  public cmsProductForm: FormGroup;
  productListCMS: any;
  product_list_details:any;
  searchKey: any=null;
  limit=5;
  page=1;
  isEmpty:boolean=false;
  triggerPrev: any;
  triggerNext: any;
  total:any;
  total_pages:any;
  searchForm : FormGroup;
  dateFilterForm : FormGroup;
  search_keyword='';
  date_filter:any;
  sort_column="cms_products_name";
  sort_type="DESC";
  current_page = 1;
  pages_array=[];
  skeleton_loader = [
    { id: '1'},
    { id: '2'},
    { id: '3'},
    { id: '4'},
    { id: '5'}
  ];
  limits: any = [
    5, 10, 15, 20, 25
  ];
  isLoaded: boolean=false;
  constructor(
    public formBuilder: FormBuilder, 
    public userService: UserService, 
    public debounce: DebounceService
  ) 
  {
    this.searchKey = this.debounce.debounce(() => {
      this.current_page=1;
      this.search_keyword=this.searchForm.value.search;
      this.viewCmsProductsList();
    }, 500);

    this.dateFilterForm = this.formBuilder.group({
      created_at: [''],
    });
    this.searchForm = this.formBuilder.group({
      search: [''],
    });
  }

  ngOnInit() {
    this.viewCmsProductsList();
  } 

  searchList(){
    this.date_filter=""
    this.current_page=1;
    this.search_keyword=this.searchForm.value.search;
    this.viewCmsProductsList();
  }
  keyDownFunction(event) {
    if (event.keyCode === 13) {
      this.searchList();
    }
  }

  viewCmsProductsList(){
    this.pages_array=[];
    this.isEmpty=false;
    this.isLoaded = true;
    let params ={ 
      cms_products_id : "1",
      limit : this.limit,
      page : this.current_page,
      search_keyword : this.search_keyword,
      date_filter : this.date_filter,
      sort_column: this.sort_column,
      sort_type: this.sort_type
    }
    this.userService.viewCmsProducts(params).then(response => {
      console.log('sadas',response);
      if(response['success']==false){
        this.isEmpty=true;
        this.isLoaded = false;
      }else{
        this.product_list_details=response['result']['datas'];
        for(let i=1; i<=response['result']['total_pages'];i++){
          this.pages_array.push(i);  
        };
        this.total_pages=response['result']['total_pages'];
        this.current_page=response['result']['page'];
        this.total=response['result']['total'];
        this.isLoaded = false;
      }
    })
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
    this.viewCmsProductsList();
  }
  
  setLimit(limits){
    this.pages_array=[];
    this.limit = limits;
    this.current_page=1;
    this.viewCmsProductsList();
  }

  setPage(num){
    this.pages_array=[];
    this.current_page = num;
    this.viewCmsProductsList();
  }

  nextPage(){
    this.pages_array=[];
    if(this.current_page < Number(this.total_pages)){
        this.current_page++;
        this.viewCmsProductsList()
    }
  }

  prevPage(){
    this.pages_array=[];
    if(this.current_page >= Number(this.total_pages)){
        this.current_page--;
        this.viewCmsProductsList()
    }
  }
}
