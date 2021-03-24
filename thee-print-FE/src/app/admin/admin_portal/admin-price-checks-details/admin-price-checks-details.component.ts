import { AnimationMetadataType } from '@angular/animations';
import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';
import { MainService } from 'src/app/services/main.service';
import { UserService } from 'src/app/services/user.service';
import { EnvService } from 'src/app/lib/env.service';
import { NgxUiLoaderService } from "ngx-ui-loader"; // Import NgxUiLoaderService
import { NgxSmartModalService } from 'ngx-smart-modal';

@Component({
  selector: 'app-admin-price-checks-details',
  templateUrl: './admin-price-checks-details.component.html',
  styleUrls: ['./admin-price-checks-details.component.scss']
})
export class AdminPriceChecksDetailsComponent implements OnInit {

  job_order_general_details:any;
  job_order_details:any;
  job_order_request_id:any;
  job_order_item_list:any;
  subTotal=0;
  vat=0;
  gross=0;

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
  ) { }

  ngOnInit() {
    this.job_order_request_id = this.route.snapshot.paramMap.get('job_order_request_id');
    this.getJobOrders(this.job_order_request_id);
  }
  
  getJobOrders(job_order_request_id){
    this.userService.getJobOderdetails(job_order_request_id).then(response => {
      this.job_order_details=response['result'].job_order_details[0];
      console.log('details', this.job_order_details);
      this.job_order_item_list=response['result'].order_items;
      for(let i=0; i<this.job_order_item_list.length; i++){
      this.job_order_item_list[i].area=this.job_order_item_list[i].job_order_item_width*this.job_order_item_list[i].job_order_item_length;
      this.job_order_item_list[i].total_price=(this.job_order_item_list[i].area*this.job_order_item_list[i].job_order_item_qty)*this.job_order_item_list[i].job_order_item_price;
      this.subTotal=this.subTotal+this.job_order_item_list[i].total_price;
      if(this.job_order_item_list[i].job_order_item_unit==0){
        this.job_order_item_list[i].unit_words='in';
      }else{
        this.job_order_item_list[i].unit_words='ft';
      }
      }
      this.vat=this.subTotal*0;
      this.gross=this.subTotal+this.vat;
      console.log('vat', this.vat)
    })
  }

}
