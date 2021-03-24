import { Component, OnInit } from '@angular/core';
import {FormArray, FormControl, FormBuilder, FormGroup, Validators} from '@angular/forms';
import { UserService } from 'src/app/services/user.service';
import { runInThisContext } from 'vm';
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
  selector: 'app-admin-job-order-list',
  templateUrl: './admin-job-order-list.component.html',
  styleUrls: ['./admin-job-order-list.component.scss'],
  providers: [
    {
      provide: DateAdapter,
      useClass: MomentDateAdapter,
      deps: [MAT_DATE_LOCALE, MAT_MOMENT_DATE_ADAPTER_OPTIONS]
    },

    { provide: MAT_DATE_FORMATS, useValue: MY_FORMATS },
  ],
})
export class AdminJobOrderListComponent implements OnInit {
  // date filter
  dateFilterForm : FormGroup;
  isLoading:boolean = false;
  date_filter: any;
  //status filter
  statusFilterForm : FormGroup;
  status_filter:any;
  //search filter
  searchForm : FormGroup;
  search_keyword='';
  //sorting
  sort_type="DESC";
  sort_column="created_at";

  searchKey: any=null;

  //download csv
  json:any;
  headerList=['J.O No','Project Name','Partner','Account Owner','Order Status','Payment Status','Date Created','Due Date','Total Amount'];
  csv_array=[];
  status:any;
  payment_status:any;

  pending_jo_request = [];

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

  job_order_list:any;
  
  constructor(
    protected formBuilder : FormBuilder,  
    public userService: UserService,
    public debounce: DebounceService,
    private dateAdapter: DateAdapter<Date>
  ) 
  { 
    
    this.searchKey = this.debounce.debounce(() => {
      this.current_page=1;
      this.search_keyword=this.searchForm.value.search;
      this.adminGetJobOrderList();
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
    this.pendingDashboard();
    if(JSON.parse(localStorage.getItem('job_order_status'))){
      this.current_page=1;
      this.job_order_status="2";
      this.isLoaded = true;
      localStorage.removeItem('job_order_status');
      this.adminGetJobOrderList();
    }else{
      this.adminGetJobOrderList();
    }
  }
  
  filterDate(){
    console.log(this.dateFilterForm.controls.created_at.value);
    this.current_page=1;
    this.search_keyword='';
    let moment_date=this.dateFilterForm.controls.created_at.value;
    console.log(moment_date);
    let due_date= moment_date._i['year']+'-'+(parseInt(moment_date._i['month'])+1)+'-'+moment_date._i['date'];
    this.date_filter=due_date;
    this.isLoaded = true;
    this.adminGetJobOrderList();
  }
  removeDateFilter(){
    this.current_page=1;
    this.search_keyword='';
    this.date_filter='';
    this.isLoaded = true;
    this.dateFilterForm.reset();
    this.adminGetJobOrderList();
  }
  filterStatus(){
    this.current_page=1;
    this.job_order_status=this.statusFilterForm.controls.filter_status.value
    this.isLoaded = true;
    this.adminGetJobOrderList();
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
    this.adminGetJobOrderList();
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
    this.adminGetJobOrderList();
  }
  adminGetJobOrderList(){
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
    this.adminGetJobOrderList();
  }

  setPage(num){
    this.date_filter=""
    this.current_page = num;
    this.isLoaded = true;
    this.adminGetJobOrderList();
  }

  nextPage(){
    this.pages_array=[];
    if(this.current_page < Number(this.total_pages)){
         this.current_page++;
         this.isLoaded = true;
         this.adminGetJobOrderList()
     }
   }

 prevPage(){
  this.date_filter=""
  if(this.current_page <= Number(this.total_pages)){
       this.current_page--;
       this.isLoaded = true;
       this.adminGetJobOrderList()
   }
  }
  exportCsv(){
    let params ={ 
      job_order_status : this.job_order_status,
    }
    this.userService.adminGetJobOderList(params).then(response => {
      if(response['success']==true){
        this.json=response['result']['datas'];
        for(let i=0; i<this.json.length;i++){
          if(this.json[i].job_order_status=='2'){
            this.status="Submitted";
          }else if(this.json[i].job_order_status=='3'){
            this.status="Processed";
          }else if(this.json[i].job_order_status=='4'){
            this.status="Delivered";
          }else{
            this.status="Declined";
          }

          if(this.json[i].job_order_payment_status=='0'){
            this.payment_status="Pending";
          }else{
            this.payment_status="Paid";
          }
          let row ={ 
            'J.O No' : this.json[i].job_order_quote_num,
            'Project Name' : this.json[i].job_order_project_name,
            'Partner' : this.json[i].partner_company,
            'Account Owner' : this.json[i].user_profile_first_name +' '+this.json[i].user_profile_last_name,
            'Order Status' : this.status,
            'Payment Status' : this.payment_status,
            'Date Created': this.json[i].created_at,
            'Due Date': this.json[i].job_order_due_date,
            'Total Amount' : this.json[i].job_order_total,
          }
          this.csv_array.push(row);
        }
        console.log('json', this.csv_array)
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
  downloadFile(data, filename='Job Order List - '+Date()) {
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

  pendingDashboard(){
    this.isLoading = true;
    this.userService.getPendingDashboard().then(response => {
      console.log(response['result']['pendingJO'][0].total);
      this.pending_jo_request=response['result']['pendingJO'][0].total;
    })
  }

}
