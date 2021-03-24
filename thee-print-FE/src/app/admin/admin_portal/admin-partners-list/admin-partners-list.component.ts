import { Component, OnInit } from '@angular/core';
import {FormArray, FormControl, FormBuilder, FormGroup, Validators} from '@angular/forms';
import { UserService } from 'src/app/services/user.service';
import { DebounceService } from 'src/app/services/debounce.service';

@Component({
  selector: 'app-admin-partners-list',
  templateUrl: './admin-partners-list.component.html',
  styleUrls: ['./admin-partners-list.component.scss']
})
export class AdminPartnersListComponent implements OnInit {
  searchForm : FormGroup;
  search_keyword='';
  sort_column="created_at";
  sort_type="DESC";
  partners_list_details:any;
  partners_list:any;
  limit=10;
  page=1;

  searchKey: any=null;

  triggerPrev: any;
  triggerNext: any;
  total:any;
  total_pages:any;
  current_page = 1;
  pages_array=[

  ];
  limits: any = [
    10, 15, 20, 25
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
    protected formBuilder : FormBuilder,
    public userService: UserService,
    public debounce: DebounceService,
  ) 
  {
    this.searchKey = this.debounce.debounce(() => {
      this.current_page=1;
      this.search_keyword=this.searchForm.value.search;
      this.getPartnersList();
    }, 500);

    this.searchForm = this.formBuilder.group({
      search:['']
    });
  }

  ngOnInit() {
    this.getPartnersList();
  }
  searchList(){
    this.current_page=1;
    this.search_keyword=this.searchForm.value.search;
    this.getPartnersList();
  }
  keyDownFunction(event) {
    if (event.keyCode === 13) {
      this.searchList();
    }
  }
  sortList(sort_column){
    this.sort_column=sort_column;
    if(this.sort_type=="ASC"){
      this.sort_type="DESC";
    }else{
      this.sort_type="ASC";
    }
    this.getPartnersList();
  }
  getPartnersList(){
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
    this.userService.partnersList(params).then(response => {
      if(response['success']==true){
        this.partners_list_details=response['result']['datas'];
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
        console.log('pages',this.pages_array);
        console.log(response);
        this.isLoaded = false;
      }else{
        this.isEmpty=true;
      }
    })
  }

  setLimit(limits){
    this.limit = limits
    this.page=1;
    this.getPartnersList();
  }

  setPage(num){
    this.current_page = num;
    this.getPartnersList();
  }

  nextPage(){
    if(this.current_page < Number(this.total_pages)){
         this.current_page++;
         this.getPartnersList()
     }
   }

 prevPage(){
  if(this.current_page <= Number(this.total_pages)){
       this.current_page--;
       this.getPartnersList()
   }
  }

}
