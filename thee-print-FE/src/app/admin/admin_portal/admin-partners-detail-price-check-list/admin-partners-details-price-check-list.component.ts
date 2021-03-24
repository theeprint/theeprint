import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-admin-partners-details-price-check-list',
  templateUrl: './admin-partners-details-price-check-list.component.html',
  styleUrls: ['./admin-partners-details-price-check-list.component.scss']
})
export class AdminPartnersDetailsPriceCheckListComponent implements OnInit {

  job_order_list:any;
  job_order_general_details: any;
  job_order_details:any;
  job_order_item_list:any;
  sub_total = 26000
  vat = 3000
  total = 29000

  constructor() { }

  ngOnInit() {
    this.job_order_list = [
      {
        "job_order_request_id":"1",
        "job_order_project_name":"Holiday Promotional Materials",
        "job_order_created_at":"03/25/2020",
        "job_order_total_amount":1000,
      },
    ];

    this.job_order_general_details = [
      {
        "job_order_request_id":"1",
        "job_request_user_id":"2",
        "job_order_quote_num":"20-0001",
        "job_order_created_at":"10/07/2020",
        "job_order_payment_status":1,
        "job_order_status":3,
        "remarks":"“We have to kindly decline this request as we are already fully booked right now and might not hit the due date you provided. We’re sorry.”",
        "company_address_person":"Sean Deseo",
        "job_order_due_date": "11/28/2020",
        "job_order_project_name":"Holiday Promotional Materials",
        "company_address_contact": "09992223333",
        "company_address_label": "HQ",
        "company_address": "Tambo Entertainment City, 1 Aseana Ave, Parañaque, 1701 Metro Manila",
        "job_order_item_list": [
          {
            "job_order_item_product_id": "(ECOSOL)Generic Sticker - Outdoor Whitebacking",
            "job_order_item_width" : "10",
            "job_order_item_length" : "12",
            "job_order_item_unit" : 0,
            "job_order_item_qty" : 100,
            "job_order_item_price" : 12000,
            "total_amount" : 1200000
          },
          {
            "job_order_item_product_id": "(SOLVENT) Trapaulin 10 oz",
            "job_order_item_width" : "10",
            "job_order_item_length" : "12",
            "job_order_item_unit" : 1,
            "job_order_item_qty" : 1,
            "job_order_item_price" : 3000,
            "total_amount" : 3000
          },
          {
            "job_order_item_product_id": "(UV)Premium Sticker - Outdoor Whitebacking",
            "job_order_item_width" : "10",
            "job_order_item_length" : "12",
            "job_order_item_unit" : 0,
            "job_order_item_qty" : 100,
            "job_order_item_price" : 220,
            "total_amount" : 22000
          }
        ],
      },
      {
        "job_order_request_id":"2",
        "job_request_user_id":"2",
        "job_order_quote_num":"20-0002",
        "job_order_created_at":"10/07/2020",
        "job_order_payment_status":1,
        "job_order_status":3,
        "remarks":"“We have to kindly decline this request as we are already fully booked right now and might not hit the due date you provided. We’re sorry.”",
        "company_address_person":"Sean Deseo",
        "job_order_due_date": "11/28/2020",
        "job_order_project_name":"Holiday Promotional Materials",
        "company_address_contact": "09992223333",
        "company_address_label": "HQ",
        "company_address": "Tambo Entertainment City, 1 Aseana Ave, Parañaque, 1701 Metro Manila",
        "job_order_item_list": [
          {
            "job_order_item_product_id": "(ECOSOL)Generic Sticker - Outdoor Whitebacking",
            "job_order_item_width" : "10",
            "job_order_item_length" : "12",
            "job_order_item_unit" : 0,
            "job_order_item_qty" : 100,
            "job_order_item_price" : 12000,
            "total_amount" : 1200000
          },
          {
            "job_order_item_product_id": "(SOLVENT) Trapaulin 10 oz",
            "job_order_item_width" : "10",
            "job_order_item_length" : "12",
            "job_order_item_unit" : 1,
            "job_order_item_qty" : 1,
            "job_order_item_price" : 3000,
            "total_amount" : 3000
          },
          {
            "job_order_item_product_id": "(UV)Premium Sticker - Outdoor Whitebacking",
            "job_order_item_width" : "10",
            "job_order_item_length" : "12",
            "job_order_item_unit" : 0,
            "job_order_item_qty" : 100,
            "job_order_item_price" : 220,
            "total_amount" : 22000
          }
        ],
      }
    ]
    this.job_order_details = this.job_order_general_details[0];

  }
  showingDetails:boolean=false
  viewDetails(){
    this.showingDetails = true
  }
  viewList(){
    this.showingDetails = false
  }
}
