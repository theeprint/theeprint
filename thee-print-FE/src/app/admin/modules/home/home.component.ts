import { ViewportScroller } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { from } from 'rxjs';
import { Common } from 'src/app/admin/lib/common';
import { UserService } from 'src/app/services/user.service';
import { NgxSmartModalService } from 'ngx-smart-modal';


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss'],

})

export class HomeComponent implements OnInit {
  coreValues: any;
  company_images = [];
  products:any;
  Images = [ 'assets/images/wallmurai.png', 'assets/images/vinyl.png', 'assets/images/clear.png', 'assets/images/sintra.png' ]
  aboutTheePrint: any;
  services: any;
  featuredPartners: any;
  termsandcondition:any;
  privacyPolicy:any;
  sort_column="cms_product_services_category";
  sort_type="DESC";
  public activeSubmenu:string = '';
  constructor(
    private viewportScroller: ViewportScroller,
    public userService: UserService, 
    private common : Common,
    public ngxSmartModalService: NgxSmartModalService,
  ) { }

  public onClick(elementId: string): void { 
    this.viewportScroller.scrollToAnchor(elementId);
  }

  title = 'THEE PRINT';
  lat = 14.280465;
  lng = 120.855025;
  featuredOptions: any = {
    loop: true,
    mouseDrag: true,
    touchDrag: true,
    pullDrag: true,
    dots: false,
    navSpeed: 700,
    nav:false,
    responsive: {
      0: {
        items: 1
      },
      400: {
        items: 2
      },
      740: {
        items: 3
      },
      940: {
        items: 4
      }
    },
  }
  customoptions: any = {
    loop: true,
    mouseDrag: true,
    touchDrag: true,
    pullDrag: true,
    dots: true,
    navSpeed: 700,
    navText: [
      "<div class='nav-button owl-prev'><-</div>",
      "<div class='nav-button owl-next'>-></div>"
    ],
    responsive: {
      0: {
        items: 1
      },
      400: {
        items: 2
      },
      740: {
        items: 3
      },
      940: {
        items: 4
      }
    },
    nav: true
  }

  ngOnInit() {
    this.viewTermsandConditions();
    this.viewPrivacyPolicy();
    this.viewCoreValues(this.coreValues);
    this.viewAboutTheePrint();
    this.viewServices('');
    this.viewCmsProductsList();
    this.viewFeaturedPartners();

   
    // var x = document.getElementById("container");
    
    // var prevScrollpos = x.scrollTop;
    // window.onscroll = function() {
    // var currentScrollPos = x.scrollTop;
    // if (prevScrollpos > currentScrollPos) {
    //   document.getElementById("topnav").style.top = "0";
    // } else {
    //   document.getElementById("topnav").style.top = "-100px";
    // }
    // prevScrollpos = currentScrollPos;
    // }
  }
  prevScrollpos:any = 0;
  currentScrollPos : any = 0;
  scrollTop(e, topnav:HTMLElement){
    this.currentScrollPos = e.target.scrollTop;
    if (this.prevScrollpos > this.currentScrollPos) {
        topnav.style.top = "0";
    } else {
      topnav.style.top = "-100px";
    }
      this.prevScrollpos = this.currentScrollPos;
      // console.log('sadas',e.target.scrollTop);
      // console.log('topnav',topnav.scrollTop);
  }

  tohome(){
    document.getElementById("home").scrollIntoView({behavior:"smooth"});
  }
  toservices(){
    document.getElementById("services").scrollIntoView({behavior:"smooth"});
  }
  toabout(){
    document.getElementById("about").scrollIntoView({behavior:"smooth"});
  }
  toproduct(){
    document.getElementById("product").scrollIntoView({behavior:"smooth"});
  }

  
  
  // totermsandcondition(){
  //   document.getElementById("termsandcondition").scrollIntoView({behavior:"smooth"});
  // }
  // toprivacy(){
  //   document.getElementById("privacy").scrollIntoView({behavior:"smooth"});
  // }

  viewTermsandConditions(){
    this.userService.viewTermsandConditions('1').then(response => {
      let result: any = response;
      this.termsandcondition = result['data'].term_content;
       console.log('sadsa',this.viewTermsandConditions);
    })
  }

  viewPrivacyPolicy(){
    this.userService.viewPrivacyPolicy('1').then(response => {
      let result: any = response;
      this.privacyPolicy =result['data'].privacy_content;
    })
  }
  viewAboutTheePrint(){
    this.userService.viewAboutTheePrint().then(response => {
      this.aboutTheePrint = response['data'];
      console.log('about', response['data']);
    })
  }
  viewServices(cms_services_id){
    this.userService.viewServices(cms_services_id).then(response => {
      this.services = response['data'];
      console.log('services', this.services);
    })
  }
  viewCmsProductsList(){
    let params ={ 
      cms_products_id : "1",
      limit : 20,
      page : 1,
      search_keyword : "",
      sort_column: this.sort_column,
      sort_type: this.sort_type
    }
    this.userService.viewCmsProducts(params).then(response => {
        this.products=response['result']['datas'];
        console.log('products',this.products)
    })
  }
  viewFeaturedPartners(){
    this.userService.viewFeaturedPartners().then(response => {
      this.featuredPartners = response['data'];
      console.log('featured partners', this.featuredPartners);
      this.company_images.push(this.featuredPartners.cms_featured_partners_logo);
      this.company_images.push(this.featuredPartners.cms_featured_partners_logo1);
      this.company_images.push(this.featuredPartners.cms_featured_partners_logo2);
      this.company_images.push(this.featuredPartners.cms_featured_partners_logo3);
      this.company_images.push(this.featuredPartners.cms_featured_partners_logo4);
      console.log(this.company_images);
    })
  }
  viewCoreValues(cms_core_values_id){
    this.userService.viewCoreValues(cms_core_values_id).then(response => {
      this.coreValues = response['data'];
      console.log('core values',this.coreValues)
    })
  }

  public setHeaderView(e){
    this.common.setHeaderView(e.target.checked);
  }

  public setActiveSubmenu(menu){
    if(menu === this.activeSubmenu){
      this.activeSubmenu = '';
    }else{
      this.activeSubmenu = menu;
    }
    
  }



  termsModal(){
    this.ngxSmartModalService.open('terms');
  }
  
  termsCloseModal(){
    this.ngxSmartModalService.close('terms');
  }
  
  privacyModal(){
    this.ngxSmartModalService.open('privacy');
  }
  
  privacyCloseModal(){
    this.ngxSmartModalService.close('privacy');
  }
  contactOpen(){
    window.location.href = "/partners_contact";
  }
}

