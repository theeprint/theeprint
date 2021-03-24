import { Component, OnInit } from '@angular/core';
import { UserService } from 'src/app/services/user.service';
import { ActivatedRoute, Router, RouterOutlet } from  '@angular/router';

@Component({
  selector: 'app-admin-cms',
  templateUrl: './admin-cms.component.html',
  styleUrls: ['./admin-cms.component.scss']
})
export class AdminCmsComponent implements OnInit {
  aboutTheePrint: any;
  Services: any;
  Service: any;
  productName: any;
  coreValues: any;
  featuredPartners: any;
  termsandcondition: any;
  privacyPolicy: any;
  productsUpdate: any;

  //loading
  aboutTheePrintLoading:boolean=true;
  servicesLoading:boolean=true;
  productNameLoading:boolean=true;
  coreValuesLoading:boolean=true;
  featuredPartnersLoading:boolean=true;
  termsandconditionLoading:boolean=true;
  privacyPolicyLoading:boolean=true;
  constructor(public userService: UserService, private  router:  Router, private  route:  ActivatedRoute,) { }

  ngOnInit() {
    this.viewAboutTheePrint();
    this.viewServices(this.Service);
    this.viewCoreValues(this.coreValues);
    this.viewFeaturedPartners();
    this.viewTermsandConditions();
    this.viewPrivacyPolicy();
    this.viewProductsUpdate(this.productsUpdate);
   
  }

  viewAboutTheePrint(){
    this.userService.viewAboutTheePrint().then(response => {
      this.aboutTheePrint = response['data'];
      this.aboutTheePrintLoading=false;
    })
  }

  viewServices(cms_services_id){
    this.userService.viewServices(cms_services_id).then(response => {
      this.Services = response['data'];
      this.servicesLoading=false;
    })
  }

  viewCoreValues(cms_core_values_id){
    this.userService.viewCoreValues(cms_core_values_id).then(response => {
      this.coreValues = response['data'];
      this.coreValuesLoading=false;
    })
  }

  viewFeaturedPartners(){
    this.userService.viewFeaturedPartners().then(response => {
      this.featuredPartners = response['data'];
      this.featuredPartnersLoading=false;
    })
  }

  viewTermsandConditions(){
    this.userService.viewTermsandConditions('1').then(response => {
      this.termsandcondition = response['data'].updated_at;
      this.termsandconditionLoading=false;
    })
  }

  viewPrivacyPolicy(){
    this.userService.viewPrivacyPolicy('1').then(response => {
      this.privacyPolicyLoading=false;
      this.privacyPolicy =  response['data'].updated_at;
    })
  }

  viewProductsUpdate(cms_products_id){
    this.userService.viewProductsUpdate(cms_products_id).then(response => {
      this.productsUpdate = response['data'];
      this.productNameLoading=false;
    })
  }

 
}
