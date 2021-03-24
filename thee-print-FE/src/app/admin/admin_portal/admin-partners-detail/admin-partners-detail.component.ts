import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';
import { MainService } from 'src/app/services/main.service';
import { UserService } from 'src/app/services/user.service';
import { EnvService } from 'src/app/lib/env.service';
import { ConfirmedValidator } from 'src/app/confirmed.validator';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { DebounceService } from 'src/app/services/debounce.service';
import { CodeSharp } from '@material-ui/icons';
import { NgxSpinnerService } from "ngx-spinner";
import { Socket } from 'ngx-socket-io';

@Component({
  selector: 'app-admin-partners-detail',
  templateUrl: './admin-partners-detail.component.html',
  styleUrls: ['./admin-partners-detail.component.scss']
})
export class AdminPartnersDetailComponent implements OnInit {
  searchKey: any=null;
  searchPriceKey: any=null;
  searchJOKey: any=null;
  partner_id:any;
  order_skeleton_loader = [
    { id: '1'},
    { id: '2'},
    { id: '3'},
    { id: '4'},
    { id: '5'}
  ];
  //order empty state
  jobOrderIsLoaded = false;
  jobOrderIsEmpty=false;
  //price check empty state
  priceCheckIsLoaded = false;
  priceCheckIsEmpty=false;
  // order pagination
  job_order_total_page:any;
  job_order_pages=[];
  job_order_total:any;
  job_order_status:any;
  job_order_limit=5;
  job_order_limits=[5,10,15,20,25]
  job_order_current_page=1;
  // price check pagination
  price_check_total_page:any;
  price_check_pages=[];
  price_check_total:any;
  price_check_status:any;
  price_check_limit=5;
  price_check_limits=[5,10,15,20,25]
  price_check_current_page=1;
  price_check_date_filter:any;
  //price list pagination
  priceListDetails:boolean = false;
  price_list_total_page:any;
  price_list_pages=[];
  price_list_total:any;
  price_list_limit=5;
  price_list_limits=[5,10,15,20,25]
  price_list_current_page=1;
  priceListIsLoaded = false;
  priceListIsEmpty = false;
  //show order details
  showOrderDetails:boolean = false;
  job_order_details:any;
  order_items:any;
  job_order_submitted:any;
  job_order_processed:any;
  job_order_delivered;
  job_order_subTotal=0;
  job_order_gross=0;
  job_order_vat=0;
  remarks:any;
  public declineForm: FormGroup;
  public updateForm: FormGroup;
  public orderSearchForm: FormGroup;
  public priceCheckSearchForm: FormGroup;
  public priceListSearchForm: FormGroup;
  //show price check details
  showPriceCheckDetails:boolean = false;
  price_check_details:any;
  price_check_item_list:any;
  price_check_subTotal=0;
  price_check_gross=0;
  price_check_vat=0;
  //order search
  order_search_keyword='';
  //price check search
  price_check_search_keyword='';
  //product price search
  product_price_search_keyword='';

  price_check_list:any;
  total_paid:any;
  total_transaction:any;
  total_price_check:any;
  user_id:any;
  partner_details:any;
  partner_profile:any;
  tin_number:any;
  product_prices:any;
  company_address:any;
  job_order_list:any;
  job_order_item_list:any;
 
  job_order_request_id:any;
  limittt=0;
  notification_receiver:any;
  emailnotif:any;
  userStatus:any;
  //sorting
  sort_type="DESC";
  sort_column="created_at";

  skeleton_loader = [
    { id: '1'},
    { id: '2'},
    { id: '3'},
    { id: '4'},
    { id: '5'},
    { id: '6'}
  ];
  isEmpty: boolean=false;
  constructor(
    public debounce: DebounceService,
    public mainApi: MainService,
    private router: Router,
    private env: EnvService,
    private _router: ActivatedRoute,
    public formBuilder: FormBuilder,
    public userService: UserService,
    private route: ActivatedRoute,
    private spinner: NgxSpinnerService,
    private socket: Socket,
    public ngxSmartModalService: NgxSmartModalService,
  ) 
  { 

    this.searchJOKey = this.debounce.debounce(() => {
      this.job_order_current_page=1;
      this.order_search_keyword=this.orderSearchForm.value.search;
      this.getJobOderList(this.partner_id);
    }, 500);

    this.searchKey = this.debounce.debounce(() => {
      this.price_check_current_page=1;
      this.price_check_search_keyword=this.priceCheckSearchForm.value.search;
      this.getPriceCheckList();
    }, 500);
    
    this.searchPriceKey = this.debounce.debounce(() => {
      this.price_list_current_page=1;
      this.product_price_search_keyword=this.priceListSearchForm.value.search;
      this.getProductPrice(this.partner_id);
    }, 500);

    this.declineForm = this.formBuilder.group({
      decline_message: ['', Validators.compose([Validators.required])],
    });
    this.updateForm = this.formBuilder.group({
      order_status: [''],
      payment_status: [''],
    });
    this.orderSearchForm = this.formBuilder.group({
      search: [''],
    });
    this.priceCheckSearchForm = this.formBuilder.group({
      search: [''],
    });
    this.priceListSearchForm = this.formBuilder.group({
      search: [''],
    });
   
  }

  ngOnInit() {
    this.user_id = this.route.snapshot.paramMap.get('partner_id');
    this.getProfile(this.user_id);
    this.job_order_request_id = this.route.snapshot.paramMap.get('job_order_request_id');
    this.getJobOrders(this.job_order_request_id);   
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
    this.getJobOderList(this.partner_id);
    this.getPriceCheckList();
    this.getProductPrice(this.partner_id);
  }
  
  activetab = 1;
  changeTab(num=1){
    this.activetab = num;
    console.log(this.activetab);
  }
  getProfile(user_id){
  	this.userService.getProfile(user_id).then(response => {
      this.partner_details=response['result'][0];
      this.total_transaction=response['total_transaction'][0].total;
      this.price_check_total=response['total_price_check'][0].total;
      this.total_paid=response['total_paid'][0].total;
      this.partner_id=response['result'][0].partner_id;
      this.getPriceCheckList();
      this.getJobOderList(response['result'][0].partner_id)
      this.getProductPrice(response['result'][0].partner_id);
      this.getCompanyAddress(response['result'][0].partner_id);
      console.log('eto', this.partner_details);
  	});
  }


  getProductPrice(partner_id){
    this.price_list_pages=[];
    this.priceListIsLoaded = true;
    this.priceListIsEmpty = false;
    let params ={ 
      partner_id: partner_id,
      limit : this.price_list_limit,
      page : this.price_list_current_page,
      search_keyword : this.product_price_search_keyword,
      sort_column: this.sort_column,
      sort_type: this.sort_type
    }
    this.userService.getProductPrice(params).then(response => {
      if(response['success']==true){
        this.product_prices=response['result']['datas'];
        console.log('Price List', this.product_prices);
        if(this.price_list_current_page % 3 === 0){
          this.price_list_pages=[];
          for(let i=this.price_list_current_page; i<=response['result']['total_pages']; i++){
            this.price_list_pages.push(i);
          };
        }else if(this.price_list_current_page==1){
          for(let i=1; i<=response['result']['total_pages'];i++){
            this.price_list_pages.push(i);
          };
        }else{
          for(let i=this.price_list_current_page-1; i<=response['result']['total_pages'];i++){
            this.price_list_pages.push(i);
          };
        }
        this.price_list_total_page=response['result']['total_pages'];
        this.price_list_current_page=response['result']['page'];
        this.price_list_total=response['result']['total'];
        this.priceListIsLoaded = false;
      }else{
        this.price_list_pages=[];
        this.price_list_total_page=0;
        this.price_list_current_page=1;
        this.price_list_total=0;
        this.product_prices=[];
        this.priceListIsEmpty=true;
      }
      
    });
  }
  getCompanyAddress(partner_id){
    this.userService.getCompanyAddress(partner_id).then(response => {
      this.company_address=response['result']['data'];
      console.log('this', this.company_address);
    });
  }
  getJobOderList(partner_id){
    this.job_order_pages=[];
    this.jobOrderIsLoaded = true;
    this.jobOrderIsEmpty=false;
    let params ={ 
      job_order_user_id: partner_id,
      job_order_status : this.job_order_status,
      limit : this.job_order_limit,
      page : this.job_order_current_page,
      search_keyword : this.order_search_keyword,
      sort_column: this.sort_column,
      sort_type: this.sort_type
    }
    this.userService.getJobOderList(params).then(response => {
      if(response['success']==true){
        this.job_order_list=response['result']['datas'];
        if(this.job_order_current_page % 3 === 0  ){
          this.job_order_pages=[];
          for(let i=this.job_order_current_page; i<=response['result']['total_pages'];i++){
            this.job_order_pages.push(i);
          };
        }else if(this.job_order_current_page==1){
          for(let i=1; i<=response['result']['total_pages'];i++){
            this.job_order_pages.push(i);
          };
        }else{
          for(let i=this.job_order_current_page-1; i<=response['result']['total_pages'];i++){
            this.job_order_pages.push(i);
          };
        }
        this.job_order_total_page=response['result']['total_pages'];
        this.job_order_current_page=response['result']['page'];
        this.job_order_total=response['result']['total'];
        this.jobOrderIsLoaded = false;
      }else{
        this.jobOrderIsEmpty=true;
      }
    })
  }
  viewPriceCheckDetails(job_order_request_id){
    // alert(job_order_request_id);
    this.getPriceCheckDetails(job_order_request_id);
    this.showPriceCheckDetails = true;
  }
  viewPriceList(){
    this.price_check_subTotal=0;
    this.price_check_gross=0;
      this.price_check_vat=0;
      this.showPriceCheckDetails = false;
  }
  viewOrderDetails(job_order_request_id){
    this.getJobOrders(job_order_request_id);
    this.showOrderDetails = true;
  }

  viewList(){
    this.job_order_subTotal=0;
    this.job_order_gross=0;
    this.job_order_vat=0;
    this.showOrderDetails = false;
    window.location.href = "/admin/partners-details/"+this.job_order_details.partner_user;
  }

  orderSetLimit(limits){
    this.job_order_pages=[];
    this.job_order_limit = limits
    this.getJobOderList(this.partner_id);
  }

  orderSetPage(num){
    this.job_order_pages=[];
    this.job_order_current_page = num;
    this.getJobOderList(this.partner_id);
  }

  orderNextPage(){
    this.job_order_pages=[];
    if(this.job_order_current_page < Number(this.job_order_total_page)){
         this.job_order_current_page++;
         this.getJobOderList(this.partner_id);
     }
   }

  orderPrevPage(){
    this.job_order_pages=[];
    if(this.job_order_current_page <= Number(this.job_order_total_page)){
         this.job_order_current_page--;
         this.getJobOderList(this.partner_id);
     }
  }

  getPriceCheckList(){
    this.price_check_pages=[];
    this.priceCheckIsEmpty=false;
    this.priceCheckIsLoaded  = true;
    
    let params ={ 
      partner_id : this.partner_id,
      limit : this.price_check_limit,
      page : this.price_check_current_page,
      search_keyword : this.price_check_search_keyword,
      sort_column: this.sort_column,
      sort_type: this.sort_type
    }
    this.userService.getPriceCheckList(params).then(response => {
      console.log('reponse',response)
      if(response['success']==true){
        this.price_check_list=response['result']['datas'];
        this.price_check_total_page=response['result']['total_pages'];
        this.price_check_current_page=response['result']['page'];
        this.price_check_total=response['result']['total'];
        console.log('pricechecktotoal',this.price_check_total)
        this.priceCheckIsLoaded = false;
        this.priceCheckIsEmpty=false;
        if(this.price_check_current_page % 3 === 0  ){
          this.price_check_pages=[];
          for(let i=this.price_check_current_page; i<=response['result']['total_pages'];i++){
            this.price_check_pages.push(i);
          };
        }else if(this.price_check_current_page==1){
          for(let i=1; i<=response['result']['total_pages'];i++){
            this.price_check_pages.push(i);
          };
        }else{
          for(let i=this.price_check_current_page-1; i<=response['result']['total_pages'];i++){
            this.price_check_pages.push(i);
          };
        }
       
      }else{
        this.priceCheckIsEmpty=true;
      }
    })
  }

  priceCheckSetLimit(limits){
    this.price_check_pages=[];
    this.price_check_limit = limits
    this.getPriceCheckList();
  }

  priceCheckSetPage(num){
    this.price_check_pages=[];
    this.price_check_current_page = num;
    this.getPriceCheckList();
  }

  priceCheckNextPage(){
    this.price_check_pages=[];
    if(this.price_check_current_page < Number(this.price_check_total_page)){
         this.price_check_current_page++;
         this.getPriceCheckList();
     }
   }

  priceCheckPrevPage(){
    this.price_check_pages=[];
    if(this.price_check_current_page <= Number(this.price_check_total_page)){
         this.price_check_current_page--;
         this.getPriceCheckList();
    }
  }

  getJobOrders(job_order_request_id){
    this.job_order_pages=[];
    this.userService.getJobOderdetails(job_order_request_id).then(response => {
      this.job_order_details=response['result'].job_order_details[0];
      console.log('details', this.job_order_details);
      this.order_items=response['result'].order_items;
      for(let i=0; i<this.order_items.length; i++){
      this.order_items[i].area=this.order_items[i].job_order_item_width*this.order_items[i].job_order_item_length;
        this.order_items[i].total_price=(this.order_items[i].area*this.order_items[i].job_order_item_qty)*this.order_items[i].job_order_item_price;
        this.job_order_subTotal=this.job_order_subTotal+this.order_items[i].total_price;
        if(this.order_items[i].job_order_item_unit==0){
          this.order_items[i].unit_words='in';
        }else{
          this.order_items[i].unit_words='ft';
        }
      }
      console.log('order_items', this.order_items)
      if(this.job_order_details.job_order_status=='2'){
        let params = {
          job_order_status:'2',
          job_order_request_id:this.job_order_details.job_order_request_id
        }
        this.userService.getJobOrderLog(params).then(response => {
          this.job_order_submitted=response['result']['datas'][0].updated_at;
        });
      }
      if(this.job_order_details.job_order_status=='3'){
        this.updateForm.patchValue({order_status: this.job_order_details.job_order_status});
        this.updateForm.patchValue({payment_status: this.job_order_details.job_order_payment_status});
        let submitted = {
          job_order_status:'2',
          job_order_request_id:this.job_order_details.job_order_request_id
        }
        this.userService.getJobOrderLog(submitted).then(response => {
          this.job_order_submitted=response['result']['datas'][0].updated_at;
        });
        let processed = {
          job_order_status:'3',
          job_order_request_id:this.job_order_details.job_order_request_id
        }
        this.userService.getJobOrderLog(processed).then(response => {
          this.job_order_processed=response['result']['datas'][0].updated_at;
        });
      }
      if(this.job_order_details.job_order_status=='4'){
        this.updateForm.patchValue({order_status: this.job_order_details.job_order_status});
        this.updateForm.patchValue({payment_status: this.job_order_details.job_order_payment_status});
        let submitted = {
          job_order_status:'2',
          job_order_request_id:this.job_order_details.job_order_request_id
        }
        this.userService.getJobOrderLog(submitted).then(response => {
          this.job_order_submitted=response['result']['datas'][0].updated_at;
        });
        let processed = {
          job_order_status:'3',
          job_order_request_id:this.job_order_details.job_order_request_id
        }
        this.userService.getJobOrderLog(processed).then(response => {
          this.job_order_processed=response['result']['datas'][0].updated_at;
        });
        let delivered = {
          job_order_status:'4',
          job_order_request_id:this.job_order_details.job_order_request_id
        }
        this.userService.getJobOrderLog(delivered).then(response => {
          this.job_order_delivered=response['result']['datas'][0].updated_at;
        });
      }
      if(this.job_order_details.job_order_status=='5'){
        let submitted = {
          job_order_status:'2',
          job_order_request_id:this.job_order_details.job_order_request_id
        }
        this.userService.getJobOrderLog(submitted).then(response => {
          this.job_order_submitted=response['result']['datas'][0].updated_at;
        });
        let declined = {
          job_order_status:'5',
          job_order_request_id:this.job_order_details.job_order_request_id
        }
        this.userService.getJobOrderLog(declined).then(response => {
          this.job_order_submitted=response['result']['datas'][0].updated_at;
          this.remarks=response['result']['datas'][0].job_order_request_remark;
        });
      }
      this.job_order_vat=this.job_order_subTotal*0;
      this.job_order_gross=this.job_order_subTotal+this.job_order_vat;
    })
  }
  declineMessageModal(){
    this.ngxSmartModalService.open('declineMessage');
  }
  closeDeclineMessageModal(){
    this.ngxSmartModalService.close('declineMessage');
  }

  closeModal(){
    window.location.href = "/admin/partners-details/"+this.job_order_details.partner_user;
  }

  declineRequest(job_order_request_id){
    this.spinner.show();
    if(this.declineForm.valid){
      this.ngxSmartModalService.close('declineMessage');
      let params = {
        job_order_status:5,
        remarks: this.declineForm.controls.decline_message.value,
        updated_by: JSON.parse(localStorage.getItem('user_id')),
      }
      this.userService.updateJobOrder(job_order_request_id, params).then(response => {
        if(response['success']==true){
          this.getJobOrders(this.job_order_request_id);
          this.spinner.hide();
          setTimeout(()=>{             
            this.ngxSmartModalService.open('successDecline');
          }, 500);
        }
      });
    }else{
      this.spinner.hide();
      this.declineForm.markAllAsTouched();
    }
  }
  processRequest(job_order_request_id){
    this.spinner.show();
    console.log(job_order_request_id)
    let params = {
      job_order_status:3,
      receiver:this.job_order_details.partner_user,
      updated_by: JSON.parse(localStorage.getItem('user_id'))
    }
    this.userService.updateJobOrder(job_order_request_id, params).then(response => {
      console.log('response ngayon', response)
      if(response['success']==true){
        if(response['result']['notification']!='false'){
          if(this.emailnotif==1&&this.userStatus==1){
            this.userService.partnerNotitificationEmail(response['result']['notification'].notification_id);
          }
        }
        this.spinner.hide();
        this.notification_receiver=response['result']['partner_details'][0];
        this.limittt++;
        this.sendNotification(response['result']['partner_details'][0].partner_user);
        this.getJobOrders(this.job_order_request_id);
        this.ngxSmartModalService.open('successUpdate');
      }else{
        this.spinner.hide();
        this.ngxSmartModalService.open('successUpdate');
      }
    });
  }
  moveToArchived(job_order_request_id){
    console.log(job_order_request_id)
    let params = {
      job_order_status:6  
    }
    this.userService.updateJobOrder(job_order_request_id, params)
    this.getJobOrders(this.partner_id);
    this.ngxSmartModalService.open('successUpdate');
  }
  updateRequest(job_order_request_id){
    this.spinner.show();
    let params = { 
      receiver:this.job_order_details.partner_user,
      updated_by: JSON.parse(localStorage.getItem('user_id')),
    }
    if(this.updateForm.controls.order_status.value!=this.job_order_details.job_order_status){
      params['job_order_status'] = this.updateForm.controls.order_status.value;
      this.limittt++;
    }
    if(this.updateForm.controls.payment_status.value!=this.job_order_details.job_order_payment_status){
      params['job_order_payment_status'] = this.updateForm.controls.payment_status.value;; 
      this.limittt++;
      if(params['job_order_payment_status']==0){
        this.limittt--;
      }
    }
    this.userService.updateJobOrder(job_order_request_id, params).then(response => {
      if(response['success']==true){
          if(response['result']['notification']!='false'){
            if(this.emailnotif==1&&this.userStatus==1){
              this.userService.partnerNotitificationEmail(response['result']['notification'].notification_id);
            }
          }
          if(response['result']['notification_payment']!='false'){
            if(this.emailnotif==1&&this.userStatus==1){
  
              this.userService.partnerNotitificationEmail(response['result']['notification_payment'].notification_id);
            }
          }
        this.spinner.hide();
        this.notification_receiver=response['result']['partner_details'][0];
        this.sendNotification(response['result']['partner_details'][0].partner_user);
        this.limittt=0;
        this.getJobOrders(this.job_order_request_id);
        setTimeout(()=>{
          this.ngxSmartModalService.open('successUpdate');
        }, 500);
      }
    });
  }

  sendNotification(user_id){
    console.log('test emit', user_id);
    let notification={ 
      notification_receiver: user_id,
      limit:this.limittt
    }
    console.log(notification);
    this.socket.emit("notification", notification);
  }

  getPriceCheckDetails(job_order_request_id){
    this.userService.getJobOderdetails(job_order_request_id).then(response => {
      this.price_check_details=response['result'].job_order_details[0];
      console.log('details', this.price_check_details);
      this.price_check_item_list=response['result'].order_items;
      for(let i=0; i<this.price_check_item_list.length; i++){
      this.price_check_item_list[i].area=this.price_check_item_list[i].job_order_item_width*this.price_check_item_list[i].job_order_item_length;
      this.price_check_item_list[i].total_price=(this.price_check_item_list[i].area*this.price_check_item_list[i].job_order_item_qty)*this.price_check_item_list[i].job_order_item_price;
      this.price_check_subTotal=this.price_check_subTotal+this.price_check_item_list[i].total_price;
      if(this.price_check_item_list[i].job_order_item_unit==0){
        this.price_check_item_list[i].unit_words='in';
      }else{
        this.price_check_item_list[i].unit_words='ft';
      }
      }
      this.price_check_vat=this.price_check_subTotal*0;
      this.price_check_gross=this.price_check_subTotal+this.price_check_vat;
    })
  }
  orderSearchList(){
    this.job_order_current_page=1;
    this.order_search_keyword=this.orderSearchForm.value.search;
    this.getJobOderList(this.partner_id);
  }
  orderKeyDownFunction(event) {
    if (event.keyCode === 13) {
      this.orderSearchList();
    }
  }
  priceCheckSearchList(){
    this.price_check_current_page=1;
    this.price_check_search_keyword=this.priceCheckSearchForm.value.search;
    console.log('keyword', this.price_check_search_keyword)
    this.getPriceCheckList();
  }
  priceCheckKeyDownFunction(event) {
    if (event.keyCode === 13) {
      this.priceCheckSearchList();
    }
  }

  priceListSetPage(num){
    this.price_list_pages=[];
    this.price_list_current_page = num;
    this.getProductPrice(this.partner_id);
  }



  priceListNextPage(){
    this.price_list_pages=[];
    if(this.price_list_current_page < Number(this.price_list_total_page)){
         this.price_list_current_page++;
         this.getProductPrice(this.partner_id);
     }
   }

  priceListPrevPage(){
    this.price_check_pages=[];
    if(this.price_check_current_page <= Number(this.price_list_total_page)){
         this.price_list_current_page--;
         this.getProductPrice(this.partner_id);
    }
  }

  priceListSetLimit(limits){
    this.price_list_pages=[];
    this.price_list_limit = limits
    this.getProductPrice(this.partner_id);
  }

  priceListSearch(){
    this.price_list_current_page=1;
    this.product_price_search_keyword=this.priceListSearchForm.value.search;
    console.log('keyword price list', this.product_price_search_keyword)
    this.getProductPrice(this.partner_id);
  }

  priceListKeyDownFunction(event){
    if(event.keyCode === 13){
      this.getProductPrice(this.partner_id);
    }
  }

  sendMessage(partner_message){
    localStorage.setItem('partner_message', partner_message);
    localStorage.setItem('partner_company', this.partner_details.partner_company);
    localStorage.setItem('user_profile_first_name', this.partner_details.user_profile_first_name);
    localStorage.setItem('user_profile_last_name', this.partner_details.user_profile_last_name);
    localStorage.setItem('partner_logo', this.partner_details.partner_logo);
    this.env.redirect('admin/messages');
  }

  goToLink(url){
    window.open(url, "_blank");
  } 

 
}
