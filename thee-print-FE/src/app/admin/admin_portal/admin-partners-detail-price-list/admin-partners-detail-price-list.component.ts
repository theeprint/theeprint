import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';
import { MainService } from 'src/app/services/main.service';
import { UserService } from 'src/app/services/user.service';
import { EnvService } from 'src/app/lib/env.service';
import { ConfirmedValidator } from 'src/app/confirmed.validator';
@Component({
  selector: 'app-admin-partners-detail-price-list',
  templateUrl: './admin-partners-detail-price-list.component.html',
  styleUrls: ['./admin-partners-detail-price-list.component.scss']
})
export class AdminPartnersDetailPriceListComponent implements OnInit {
  user_id:any;
  partner_details:any;
  partner_profile:any;
  product_prices:any;
  constructor(
    public mainApi: MainService,
    private router: Router,
    private env: EnvService,
    private _router: ActivatedRoute,
    public formBuilder: FormBuilder,
    public userService: UserService,
    private route: ActivatedRoute
  ) { }

  ngOnInit() {
    // this.user_id = this.route.snapshot.paramMap.get('partner_id');
    // this.getProfile(this.user_id);
  }
  // getProfile(user_id){
  //   this.userService.getProfile(user_id).then(response => {
  //     this.partner_details=response['result'][0];
  //     this.getProductPrice(response['result'][0].partner_id);
  //     console.log('eto', this.partner_details);
  //   });
  // }
  // getProductPrice(partner_id){
  //   this.userService.getProductPrice(partner_id).then(response => {
  //     this.product_prices=response['result'];
  //     console.log('eto', this.partner_details);
  //   });
  // }
}
