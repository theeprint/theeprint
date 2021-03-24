import { Component, OnInit } from '@angular/core';
import { UserService } from 'src/app/services/user.service';
import {FormArray, FormControl, FormBuilder, FormGroup, Validators} from '@angular/forms';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { DebounceService } from 'src/app/services/debounce.service';
import { NgxSpinnerService } from "ngx-spinner";
import { Router, ActivatedRoute, NavigationExtras } from '@angular/router';
@Component({
  selector: 'app-admin-staffs',
  templateUrl: './admin-staffs.component.html',
  styleUrls: ['./admin-staffs.component.scss']
})
export class AdminStaffsComponent implements OnInit {
  searchKey: any=null;

  //search filter
  searchForm : FormGroup;
  search_keyword='';
  //sorting
  sort_type="DESC";
  sort_column="created_at";

  staffs_list:any;
  staffs_details:any;
  staff_detail:any;
  limit=5;
  page=1;
  triggerPrev: any;
  triggerNext: any;
  total:any;
  total_pages:any;
  current_page = 1;
  pages_array=[

  ];
  limits: any = [
    5, 10, 15, 20,25
  ];
  skeleton_loader = [
    { id: '1'},
    { id: '2'},
    { id: '3'},
    { id: '4'}
  ];
  isLoaded: boolean=false;
  isEmpty: boolean=false;
  constructor(
    public userService: UserService,
    protected formBuilder : FormBuilder,
    public ngxSmartModalService: NgxSmartModalService,
    public debounce: DebounceService,
    private spinner: NgxSpinnerService,
    public route: Router
  ) 
  {
    this.searchKey = this.debounce.debounce(() => {
      this.current_page=1;
      this.search_keyword=this.searchForm.value.search;
      this.getStaffList();
    }, 500);  

    this.searchForm = this.formBuilder.group({
      search:['']
    });
  }

  ngOnInit() {
    this.getStaffList();

  }

  closeViewProfile(){
    this.ngxSmartModalService.close('viewProfile');
  }
  openViewProfile(idx){
    this.staffs_details= this.staffs_list[idx];
    console.log('opendetail',this.staffs_details);
    this.ngxSmartModalService.open('viewProfile');
  }

  setLimit(limits){
    this.limit = limits
    this.page=1;
    this.getStaffList();
  }

  setPage(num){
    this.current_page = num;
    this.getStaffList();
  }

  nextPage(){
    if(this.current_page < Number(this.total_pages)){
         this.current_page++;
         this.getStaffList()
     }
   }

 prevPage(){
  if(this.current_page <= Number(this.total_pages)){
       this.current_page--;
       this.getStaffList()
   }
  }
  keyDownFunction(event) {
    if (event.keyCode === 13) {
      this.searchList();
    }
  }
  searchList(){
    this.current_page=1;
    this.search_keyword=this.searchForm.value.search;
    this.getStaffList();
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
    this.getStaffList();
  }
  getStaffList(){
    this.isEmpty=false;
    this.pages_array=[];
    this.isLoaded = true;
    let params ={ 
      partner_status : "1",
      limit : this.limit,
      page : this.current_page,
      search_keyword : this.search_keyword,
      sort_column: this.sort_column,
      sort_type: this.sort_type
    }
    this.userService.staffList(params).then(response => {
      if(response['success']==true){
        this.staffs_list=response['result']['datas'];
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
        console.log('staff', this.staffs_list)
        this.total_pages=response['result']['total_pages'];
        this.current_page=response['result']['page'];
        this.total=response['result']['total'];
        console.log('pages',this.pages_array);
        console.log(response);
        this.isLoaded = false;
      }else{
        this.isEmpty=true;
      }
    })
  }

  editBtn(user_id){
    this.spinner.show();
    setTimeout(()=>{                           //<<<---using ()=> syntax
      window.location.href ='/admin/edit-staff/'+user_id;
    }, 500);
  }
}