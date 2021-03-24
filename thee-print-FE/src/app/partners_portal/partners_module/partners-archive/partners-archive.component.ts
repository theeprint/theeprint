import { Component, OnInit } from '@angular/core';
import { UserService } from 'src/app/services/user.service';
import {FormArray, FormControl, FormBuilder, FormGroup, Validators} from '@angular/forms';
import { DebounceService } from 'src/app/services/debounce.service';

@Component({
  selector: 'app-partners-archive',
  templateUrl: './partners-archive.component.html',
  styleUrls: ['./partners-archive.component.scss']
})
export class PartnersArchiveComponent implements OnInit {
  searchForm : FormGroup;
  search_keyword:any;
  //sorting
  sort_type="ASC";
  sort_column="job_order_quote_num";
  jobOrdersArchived: any;
  skeleton_loader = [
    { id: '1'},
    { id: '2'},
    { id: '3'},
    { id: '4'}
  ];
  isLoading:boolean = false;

  isEmpty:boolean = false;
  isLoaded: boolean;
  limit=5;
  limits: any = [
    5, 10, 15, 20, 25
  ];
  current_page=1;
  job_order_request_list:any;
  pages_array=[];
  total_pages:any;
  total:any;
  user_data: any;
  user_profile: any;
  job_order_status=6;

  searchKey: any=null;
  
  constructor(
    protected formBuilder : FormBuilder,  
    public userService: UserService,
    public debounce: DebounceService,
  ) 
  { 
    this.searchKey = this.debounce.debounce(() => {
      this.current_page=1;
      this.search_keyword=this.searchForm.value.search;
      this.getJobOderList(this.user_profile.partner_id);
    }, 500);

    this.searchForm = this.formBuilder.group({
      search: [''],
    });
  }


  ngOnInit() {
    this.user_data=JSON.parse(localStorage.getItem('user_id'));
    this.getUserProfile(this.user_data);
  }
  
  searchList(){
    this.current_page=1;
    this.search_keyword=this.searchForm.value.search;
    this.getJobOderList(this.user_profile.partner_id);
  } 
  getJobOderList(partner_id){
    this.isEmpty=false;
    this.pages_array=[];
    this.isLoaded = true;
    let params ={ 
      job_order_user_id: partner_id,
      partner_archived : 1,
      limit : this.limit,
      page : this.current_page,
      search_keyword : this.search_keyword,
      sort_column: this.sort_column,
      sort_type: this.sort_type 
    }
    this.userService.getJobOderList(params).then(response => {
      if(response['success']==true){
        this.jobOrdersArchived=response['result']['datas'];
        console.log('this', this.jobOrdersArchived);
        if(this.current_page % 3 === 0  ){
          this.pages_array=[];
          for(let i=this.current_page-2; i<=response['result']['total_pages'];i++){
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
  getUserProfile(user_id){
    this.isLoading = true;
    this.userService.getProfile(user_id).then(response => {
      this.user_profile=response['result'][0];
      this.getJobOderList(this.user_profile.partner_id);
      this.isLoading = false;
    })
  }
  keyDownFunction(event) {
    if (event.keyCode === 13) {
      this.searchList();
    }
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
    this.getJobOderList(this.user_profile.partner_id);
  }
  setLimit(limits){
    this.limit = limits
    this.current_page=1;
    this.isLoaded = true;
    this.getJobOderList(this.user_profile.partner_id);
  }

  setPage(num){
    this.current_page = num;
    this.isLoaded = true;
    this.getJobOderList(this.user_profile.partner_id);
  }

  nextPage(){
    this.pages_array=[];
    if(this.current_page < Number(this.total_pages)){
         this.current_page++;
         this.isLoaded = true;
      this.getJobOderList(this.user_profile.partner_id);
     }
   }

 prevPage(){
  if(this.current_page <= Number(this.total_pages)){
       this.current_page--;
       this.isLoaded = true;
       this.getJobOderList(this.user_profile.partner_id);
   }
  }
}
