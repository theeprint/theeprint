import { Component, OnInit } from '@angular/core';
import { UserService } from 'src/app/services/user.service';

@Component({
  selector: 'app-partners-terms-and-conditions',
  templateUrl: './partners-terms-and-conditions.component.html',
  styleUrls: ['./partners-terms-and-conditions.component.scss']
})
export class PartnersTermsAndConditionsComponent implements OnInit {
  termsandcondition:any;
  
  constructor(public userService: UserService, ) { }

  ngOnInit() {
    this.viewTermsandConditions();
  }

  viewTermsandConditions(){
    this.userService.viewTermsandConditions('1').then(response => {
      let result: any = response;
      this.termsandcondition = result['data'].term_content;
       console.log('sadsa',this.viewTermsandConditions);
    })
  }

}
