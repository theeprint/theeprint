import { AnimationMetadataType } from '@angular/animations';
import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';
import { MainService } from 'src/app/services/main.service';
import { UserService } from 'src/app/services/user.service';
import { EnvService } from 'src/app/lib/env.service';
import { NgxUiLoaderService } from "ngx-ui-loader";
import { NgxSmartModalService } from 'ngx-smart-modal';
import { NgxSpinnerService } from "ngx-spinner";
@Component({
  selector: 'app-archive-details',
  templateUrl: './archive-details.component.html',
  styleUrls: ['./archive-details.component.scss']
})
export class ArchivesDetailsComponent implements OnInit {
  job_order_request_id:any;
  job_order_general_details: any;
  job_order_details:any;
  job_order_item_list:any;
  order_items:any;
  subTotal=0;
  job_order_submitted:any;
  job_order_processed:any;
  job_order_delivered:any;
  remarks:any;
  vat=0;
  gross=0;
  sub_total = 26000
  total = 29000
  constructor(
  	private ngxService: NgxUiLoaderService,
    public mainApi: MainService,
    private env: EnvService,
    private router: Router,
    private _router: ActivatedRoute,
    public formBuilder: FormBuilder,
    public userService: UserService,
    private route: ActivatedRoute,
    public ngxSmartModalService: NgxSmartModalService,
    private spinner: NgxSpinnerService,
  ) { }

  ngOnInit() {
  	this.job_order_request_id = this.route.snapshot.paramMap.get('job_order_request_id');
    this.getJobOrders(this.job_order_request_id);
  }
  getJobOrders(job_order_request_id){
    this.userService.getJobOderdetails(job_order_request_id).then(response => {
      this.job_order_details=response['result'].job_order_details[0];
      console.log('details', this.job_order_details);
      this.order_items=response['result'].order_items;
      for(let i=0; i<this.order_items.length; i++){
        this.order_items[i].area=this.order_items[i].job_order_item_width*this.order_items[i].job_order_item_length;
        this.order_items[i].total_price=(this.order_items[i].area*this.order_items[i].job_order_item_qty)*this.order_items[i].job_order_item_price;
        this.subTotal=this.subTotal+this.order_items[i].total_price;
        if(this.order_items[i].job_order_item_unit==0){
          this.order_items[i].unit_words='in';
        }else{
          this.order_items[i].unit_words='ft';
        }
      }
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
      if(this.job_order_details.job_order_status=='4'||this.job_order_details.job_order_status=='6'){
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
          console.log('processed', this.job_order_processed);
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
      this.vat=this.subTotal*0;
      this.gross=this.subTotal+this.vat;
    })
  }
}
