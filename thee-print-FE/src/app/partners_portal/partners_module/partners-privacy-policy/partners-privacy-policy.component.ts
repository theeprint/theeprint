import { Component, OnInit } from '@angular/core';
import { UserService } from 'src/app/services/user.service';

@Component({
  selector: 'app-partners-privacy-policy',
  templateUrl: './partners-privacy-policy.component.html',
  styleUrls: ['./partners-privacy-policy.component.scss']
})
export class PartnersPrivacyPolicyComponent implements OnInit {
  privacyPolicy:any;
  constructor(public userService: UserService, ) { }

  ngOnInit() 
  {
    this.viewPrivacyPolicy();
  }

  viewPrivacyPolicy(){
    this.userService.viewPrivacyPolicy('1').then(response => {
      let result: any = response;
      this.privacyPolicy =result['data'].privacy_content;
    })
  }

}
