import { Component, OnInit } from '@angular/core';
import { UserService } from 'src/app/services/user.service';
import { DebounceService } from 'src/app/services/debounce.service';
import {FormArray, FormControl, FormBuilder, FormGroup, Validators} from '@angular/forms';
import {MomentDateAdapter, MAT_MOMENT_DATE_ADAPTER_OPTIONS} from '@angular/material-moment-adapter';
import {DateAdapter, MAT_DATE_FORMATS, MAT_DATE_LOCALE} from '@angular/material/core';
import { TransformDatePipe } from 'src/app/services/transform-date/transform-date.pipe'


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
  selector: 'app-partners-dashboard',
  templateUrl: './partners-dashboard.component.html',
  styleUrls: ['./partners-dashboard.component.scss'],
  providers: [
    {
      provide: DateAdapter,
      useClass: MomentDateAdapter,
      deps: [MAT_DATE_LOCALE, MAT_MOMENT_DATE_ADAPTER_OPTIONS]
    },

    { provide: MAT_DATE_FORMATS, useValue: MY_FORMATS },
  ],
})
export class PartnersDashboardComponent implements OnInit {

  // date filter
  dateFilterForm : FormGroup;
  isLoading:boolean = false;
  date_filter: any;
  //status filter
  statusFilterForm : FormGroup;
  status_filter:any;
  //search filter
  //sorting
  sort_type="DESC";
  sort_column="created_at";

  searchKey: any=null;

  searchForm : FormGroup;
  search_keyword='';
  

  job_order_list:any;
  skeleton_loader = [
    { id: '1'},
    { id: '2'},
    { id: '3'},
    { id: '4'},
    { id: '5'}
  ];
  limits: any = [
    10, 15, 20, 25
  ];
  isEmpty:boolean=false;
  isLoaded: boolean;
  limit=10;
  current_page=1;
  job_order_request_list:any;
  pages_array=[];
  total_pages:any;
  total:any;
  user_data: any;
  user_profile: any;
  job_order_status:any;
  partners_dashboard: any;
  pending_job_orders=0;
  pending_payment_job_orders=0;
  processing_job_orders=0;
  today = new Date()
  constructor(
    protected formBuilder : FormBuilder,  
    public userService: UserService,
    public debounce: DebounceService,
    private dateAdapter: DateAdapter<Date>,
  
  )
    { 
    this.searchKey = this.debounce.debounce(() => {
      this.current_page=1;
      this.search_keyword=this.searchForm.value.search;
      this.getJobOderList(this.user_profile.partner_id);
    }, 500);

    this.dateFilterForm = this.formBuilder.group({
      created_at: [''],
    });
    this.statusFilterForm = this.formBuilder.group({
      filter_status: [''],
    });
    this.searchForm = this.formBuilder.group({
      search: [''],
    });
  }

  ngOnInit() {
    this.dateAdapter.setLocale('PST'); 
    this.user_data=JSON.parse(localStorage.getItem('user_id'));
    this.getUserProfile(this.user_data);
  }
  filterStatus(){
    this.current_page=1;
    this.job_order_status=this.statusFilterForm.controls.filter_status.value
    this.isLoaded = true;
    this.getJobOderList(this.user_profile.partner_id);
  }
  searchList(){
    this.date_filter=""
    this.current_page=1;
    this.search_keyword=this.searchForm.value.search;
    this.getJobOderList(this.user_profile.partner_id);
  }
  keyDownFunction(event) {
    if (event.keyCode === 13) {
      this.searchList();
    }
  }

  filterDate(){
    this.current_page=1;
    this.search_keyword='';
    let moment_date=this.dateFilterForm.controls.created_at.value;
    console.log(moment_date);
    let due_date= moment_date._i['year']+'-'+(parseInt(moment_date._i['month'])+1)+'-'+moment_date._i['date'];
    this.date_filter=due_date;
    this.isLoaded = true;
    this.getJobOderList(this.user_profile.partner_id);
    console.log('dateesss', this.getJobOderList);
  }

  removeDateFilter(){
    this.current_page=1;
    this.search_keyword='';
    this.date_filter='';
    this.isLoaded = true;
    this.dateFilterForm.reset();
    this.getJobOderList(this.user_profile.partner_id);
    console.log('dateesss', this.getJobOderList);
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
  getJobOderList(partner_id){
    this.isEmpty=false;
    this.pages_array=[];
    this.isLoaded = true;
    let params ={ 
      job_order_user_id: partner_id,
      job_order_status : this.job_order_status,
      limit : this.limit,
      date_filter : this.date_filter,
      page : this.current_page,
      search_keyword : this.search_keyword,
      sort_column: this.sort_column,
      sort_type: this.sort_type
    }
    this.userService.getJobOderList(params).then(response => {
      if(response['success']==true){
        this.job_order_list=response['result']['datas'];
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
      console.log(this.user_profile);
      this.getJobOderList(this.user_profile.partner_id);
      this.partnersDashboard(this.user_profile.partner_id);
      this.isLoading = false;
    })
  }
  partnersDashboard(user_id){
    this.isLoading = true;
    this.userService.getPartnersDashboard(user_id).then(response => {
      console.log(response);
      this.pending_job_orders=response['result'].pending_job_orders;
      this.pending_payment_job_orders=response['result'].pending_payment_job_orders;
      this.processing_job_orders=response['result'].processing_job_orders;
    })
  }
  setLimit(limits){
    this.date_filter=""
    this.limit = limits
    this.current_page=1;
    this.isLoaded = true;
    this.getJobOderList(this.user_profile.partner_id);
  }

  setPage(num){
    this.date_filter=""
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
  this.date_filter=""
  if(this.current_page <= Number(this.total_pages)){
       this.current_page--;
       this.isLoaded = true;
       this.getJobOderList(this.user_profile.partner_id);
   }
  }
}
