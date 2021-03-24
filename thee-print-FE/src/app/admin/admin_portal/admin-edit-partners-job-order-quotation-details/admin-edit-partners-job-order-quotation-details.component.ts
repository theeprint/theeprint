import { Component, OnInit } from '@angular/core';
import { NgxSmartModalService } from 'ngx-smart-modal';
import { NgxUiLoaderService } from 'ngx-ui-loader';

@Component({
  selector: 'app-admin-edit-partners-job-order-quotation-details',
  templateUrl: './admin-edit-partners-job-order-quotation-details.component.html',
  styleUrls: ['./admin-edit-partners-job-order-quotation-details.component.scss']
})
export class AdminEditPartnersJobOrderQuotationDetailsComponent implements OnInit {

  getQuotation:any;
  isloading:boolean = true;
  getSubtotal:any;
  getJONumber:any;
  JoNumber:any;
  getConfirmJobOrder:any;


  constructor(
    private ngxService: NgxUiLoaderService,
    public ngxSmartModalService: NgxSmartModalService
    ) { }

    //modal for submitjoborder
    ngAfterViewInit() {
      const pen: Object = {
        prop1: 'test',
        prop2: true,
        prop3: [{ a: 'a', b: 'b' }, { c: 'c', d: 'd' }],
        prop4: 327652175423
      };
      this.ngxSmartModalService.setModalData(pen, 'submitjoborder');
    }

  ngOnInit() {
    
    var elmnt = document.getElementById("navbar_container");
    var height =  elmnt.clientHeight;
    var screen_height = innerHeight;
    console.log('calculated', screen_height-height);

    var elmnt2 = document.getElementById("container_fix");
    elmnt2.style.maxHeight =  screen_height-height - 20 + 'px';


    this.ngxService.start(); // start foreground spinner of the master loader with 'default' taskId
    // Stop the foreground loading after 5s
    setTimeout(() => {
      this.ngxService.stop(); // stop foreground spinner of the master loader with 'default' taskId
    }, 5000);
    // OR
    this.ngxService.startBackground("do-background-things");
    // Do something here...
    this.ngxService.stopBackground("do-background-things");

    this.ngxService.startLoader("loader-01"); // start foreground spinner of the loader "loader-01" with 'default' taskId
    // Stop the foreground loading after 5s
    setTimeout(() => {
      this.ngxService.stopLoader("loader-01"); // stop foreground spinner of the loader "loader-01" with 'default' taskId
      this.isloading = false;
    },3000);
  


    this.getQuotation = [
    {
      "job_order_item_product_id" : "(ECOSOL) Generic Sticker",
      "product_item_dimensions" : "10 in x 12 in",
      "job_order_item_qty" : "10",
      "job_order_item_price" : "Php 50.00",
      "job_order_amount" : "Php 500.00"
    },
    {
      "job_order_item_product_id" : "(SOLVENT) Tarpaulin 10oz",
      "product_item_dimensions" : "72 in x 184 in",
      "job_order_item_qty" : "1",
      "job_order_item_price" : "Php 780.00",
      "job_order_amount" : "Php 780.00"
    },
    {
      "job_order_item_product_id" : "(UL) Premium Sticker",
      "product_item_dimensions" : "10 in x 12 in",
      "job_order_item_qty" : "5",
      "job_order_item_price" : "Php 90.00",
      "job_order_amount" : "Php 450.00"
    }
  ]

  this.getSubtotal = [
    {
      "sub_total" : "Php 1,730.00",
      "vat" : "Php 208.00",
      "total" : "Php 1,938.00"
    }
  ]

  this.getJONumber = [
    {
      "job_order_quote_num" : "21-0001"
    }
  ]
    this.JoNumber = this.getJONumber[0];
  }
}