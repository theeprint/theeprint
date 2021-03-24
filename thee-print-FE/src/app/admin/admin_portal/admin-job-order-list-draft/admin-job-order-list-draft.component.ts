import { Component, OnInit } from '@angular/core';
import { UserService } from 'src/app/services/user.service';
import {FormArray, FormControl, FormBuilder, FormGroup, Validators} from '@angular/forms';
import { DebounceService } from 'src/app/services/debounce.service';

@Component({
  selector: 'app-admin-job-order-list-draft',
  templateUrl: './admin-job-order-list-draft.component.html',
  styleUrls: ['./admin-job-order-list-draft.component.scss']
})
export class AdminJobOrderListDraftComponent implements OnInit {


  limit=10;
  current_page=1;
  job_order_request_list:any;
  pages_array=[];
  total_pages:any;
  total:any;
  user_data: any;
  user_profile: any;
  job_order_list:any;   
  job_order_status=6;
  limits: any = [
    10, 15, 20, 25
  ];

  skeleton_loader = [
    { id: '1'},
    { id: '2'},
    { id: '3'},
    { id: '4'},
    { id: '5'},
    { id: '6'},
    { id: '7'},
    { id: '8'},
    { id: '9'},
    { id: '10'}
  ];

  isLoaded: boolean=false;
  isEmpty: boolean=false;

  searchKey: any=null;
  //sorting
  sort_type="ASC";
  sort_column="job_order_quote_num";

  // date filter
  dateFilterForm : FormGroup;
  date_filter: any;

  //search filter
  searchForm : FormGroup;
  search_keyword='';
  constructor(
    public userService: UserService, 
    protected formBuilder : FormBuilder, 
    public debounce: DebounceService,)
   {
    this.searchKey = this.debounce.debounce(() => {
      this.current_page=1;
      this.search_keyword=this.searchForm.value.search;
      this.getJobOderList();
    }, 500);

    this.searchForm = this.formBuilder.group({
      search: [''],
    });
   }

  ngOnInit() {
    this.getJobOderList();
  }

  keyDownFunction(event) {
    if (event.keyCode === 13) {
      this.searchList();
    }
  }

  searchList(){
    this.date_filter=""
    this.current_page=1;
    this.search_keyword=this.searchForm.value.search;
    this.getJobOderList();
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
    this.getJobOderList();
  }

  getJobOderList(){
    this.pages_array=[];
    this.isEmpty=false;
    this.isLoaded = true;
    let params ={ 
      job_order_status : this.job_order_status,
      limit : this.limit,
      page : this.current_page,
      date_filter : this.date_filter,
      search_keyword : this.search_keyword,
      sort_column: this.sort_column,
      sort_type: this.sort_type
    }
    this.userService.adminGetJobOderList(params).then(response => {
      if(response['success']==true){
        this.job_order_list=response['result']['datas'];
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

  setLimit(limits){
    this.date_filter=""
    this.limit = limits
    this.current_page=1;
    this.isLoaded = true;
    this.getJobOderList();
  }

  setPage(num){
    this.date_filter=""
    this.current_page = num;
    this.isLoaded = true;
    this.getJobOderList();
  }

  nextPage(){
    this.pages_array=[];
    if(this.current_page < Number(this.total_pages)){
         this.current_page++;
         this.isLoaded = true;
         this.getJobOderList()
     }
   }

 prevPage(){
  this.date_filter=""
  if(this.current_page <= Number(this.total_pages)){
       this.current_page--;
       this.isLoaded = true;
       this.getJobOderList()
   }
  }

}
