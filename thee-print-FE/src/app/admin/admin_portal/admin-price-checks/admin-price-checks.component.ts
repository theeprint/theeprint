import { Component, OnInit } from '@angular/core';
import { UserService } from 'src/app/services/user.service';
import {FormArray, FormControl, FormBuilder, FormGroup, Validators} from '@angular/forms';
import { NgxPaginationModule } from 'ngx-pagination';
import { DebounceService } from 'src/app/services/debounce.service';
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
  selector: 'app-admin-price-checks',
  templateUrl: './admin-price-checks.component.html',
  styleUrls: ['./admin-price-checks.component.scss'],
  providers: [
    {
      provide: DateAdapter,
      useClass: MomentDateAdapter,
      deps: [MAT_DATE_LOCALE, MAT_MOMENT_DATE_ADAPTER_OPTIONS]
    },

    { provide: MAT_DATE_FORMATS, useValue: MY_FORMATS },
  ],
})
export class AdminPriceChecksComponent implements OnInit {
  searchKey: any=null;
  dateFilterForm : FormGroup;
  searchForm : FormGroup;
  search_keyword='';
  sort_column="created_at";
  sort_type="DESC";
  limit = 5;
  limits = [
    5,10,15,20,25
  ];
  skeleton_loader = [
    { id: '1'},
    { id: '2'},
    { id: '3'},
    { id: '4'},
    { id: '5'}
  ];
  price_list:any;
  pages_array=[];
  total_pages:any;
  total:any;
  isLoaded: boolean = false;
  isEmpty:boolean = false;  
  current_page=1;
  date_filter:any;

  
  constructor(
    public userService: UserService,
    protected formBuilder : FormBuilder,  
    public debounce: DebounceService,
    private dateAdapter: DateAdapter<Date>)
  { 
    this.searchKey = this.debounce.debounce(() => {
      this.current_page=1;
      this.search_keyword=this.searchForm.value.search;
      this.getPriceCheckList();
    }, 500);

    this.dateFilterForm = this.formBuilder.group({
        created_at: [''],
    });
    this.searchForm = this.formBuilder.group({
      search: [''],
    });
  }

  ngOnInit() {
    this.dateAdapter.setLocale('PST');
    this.getPriceCheckList();
  }
  searchList(){
    this.date_filter=""
    this.current_page=1;
    this.search_keyword=this.searchForm.value.search;
    this.getPriceCheckList();
  }
  keyDownFunction(event) {
    if (event.keyCode === 13) {
      this.searchList();
    }
  }
  getPriceCheckList(){
    this.pages_array=[];
    this.isEmpty=false;
    this.isLoaded = true;
    let params ={ 
      limit : this.limit,
      page : this.current_page,
      search_keyword : this.search_keyword,
      date_filter : this.date_filter,
      sort_column: this.sort_column,
      sort_type: this.sort_type
    }
    this.userService.getPriceCheckList(params).then(response => {
      console.log('reponse',response)
      if(response['success']==true){
        this.price_list=response['result']['datas'];
        this.total_pages=response['result']['total_pages'];
        this.current_page=response['result']['page'];
        this.total=response['result']['total'];
        this.isLoaded = false;
        this.isEmpty=false;
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
      }else{
        this.isEmpty=true;
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
    this.getPriceCheckList();
  }
  filterDate(){
    this.current_page=1;
    this.search_keyword='';
    let moment_date=this.dateFilterForm.controls.created_at.value;
    console.log(moment_date);
    let due_date= moment_date._i['year']+'-'+(parseInt(moment_date._i['month'])+1)+'-'+moment_date._i['date'];
    this.date_filter=due_date;
    this.isLoaded = true;
    this.getPriceCheckList();
  }

  removeDateFilter(){
    this.current_page=1;
    this.search_keyword='';
    this.date_filter='';
    this.isLoaded = true;
    this.dateFilterForm.reset();
    this.getPriceCheckList();
  }

  setLimit(limits){
    // this.date_filter=""
    this.limit = limits
    this.current_page=1;
    this.isLoaded = true;
    this.getPriceCheckList();
  }

  setPage(num){
    // this.date_filter=""
    this.current_page = num;
    this.isLoaded = true;
    this.getPriceCheckList();
  }

  nextPage(){
    this.pages_array=[];
    if(this.current_page < Number(this.total_pages)){
         this.current_page++;
         this.isLoaded = true;
         this.getPriceCheckList()
     }
   }

  prevPage(){
    console.log(this.current_page)
    console.log(this.total_pages)
    if(this.current_page <= Number(this.total_pages)){
        this.current_page--;
        this.isLoaded = true;
        this.getPriceCheckList()
    }
  }  
}
