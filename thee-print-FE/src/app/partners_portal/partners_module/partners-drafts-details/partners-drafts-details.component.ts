import { AnimationMetadataType } from '@angular/animations';
import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';
import { MainService } from 'src/app/services/main.service';
import { UserService } from 'src/app/services/user.service';
import { EnvService } from 'src/app/lib/env.service';
import { NgxUiLoaderService } from "ngx-ui-loader"; // Import NgxUiLoaderService
import { NgxSmartModalService } from 'ngx-smart-modal';
import { NgxSpinnerService } from "ngx-spinner";

@Component({
  selector: 'app-partners-drafts-details',
  templateUrl: './partners-drafts-details.component.html',
  styleUrls: ['./partners-drafts-details.component.scss']
})
export class PartnersDraftsDetailsComponent implements OnInit {
  job_order_request_id:any;
  vat:any;
  isloading:boolean = true;
  gross:any;
  subTotal=0;
  order_items:any;
  link:any;

  constructor(
    private ngxService: NgxUiLoaderService,
    public mainApi: MainService,
    private env: EnvService,
    private router: Router,
    private _router: ActivatedRoute,
    public formBuilder: FormBuilder,
    public userService: UserService,
    private route: ActivatedRoute,
    private spinner: NgxSpinnerService,
    public ngxSmartModalService: NgxSmartModalService,
    ) { }

  ngOnInit() {
    console.log('link', this.urlify('this is my link https://www.youtube.com/watch?v=lSrpmK1nxow'));
    this.job_order_request_id = this.route.snapshot.paramMap.get('job_order_request_id');
    this.getJobOrders(this.job_order_request_id);
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
  }
  getJobOrders(job_order_request_id){
    this.userService.getJobOderdetails(job_order_request_id).then(response => {
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
      this.vat=this.subTotal*0;
      this.gross=this.subTotal+this.vat;
      console.log('vat', this.vat)
    })
  }
  saveAsDraft(){  
    this.spinner.show();
    let params = {
      job_order_status: 1,
    }
    this.userService.updateJobOrder(this.job_order_request_id, params).then(response => {
    // this.router.navigate(['/partners/partners_drafts']);
    console.log(response);
    if(response['success']==true){
      this.spinner.hide();
      setTimeout(()=>{
        this.ngxSmartModalService.open('saveAsDraftsSuccess');
      }, 500);
        }else{
          this.spinner.hide();
        }
    });
  }

  closeModalDraflist(){
    window.location.href = "/partners/partners_drafts";
  }

  confirmJobOrder(){
    this.router.navigate(['/partners/partners_confirm_job_order/'+this.job_order_request_id]);
  }
  urlify(text){
    var urlRegex = /(https?:\/\/[^\s]+)|(www[^\s]+)/g;   
    return text.replace(urlRegex, function(url) {  
        return '<a href="http://' + url + '" target = "_blank">' + url + '</a>';    
    }).replace("http://http://", "http://").replace("https:/", "http://");
  }
}