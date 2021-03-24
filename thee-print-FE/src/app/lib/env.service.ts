import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders, HttpErrorResponse, HttpClientModule } from '@angular/common/http';
import { Router, ActivatedRoute } from '@angular/router';
import { Location } from '@angular/common';
import { Urls } from './urls';
import * as moment from 'moment';
// import { ToastrService } from 'ngx-toastr';

@Injectable({
    providedIn: 'root'
})
export class EnvService {
  /* For Server */
 private secure = true;

    /* For Local */
    // private secure = false;
    private payload: any;

    /* LIVE Production */
    private domain = 'api.theeprint.com.ph';
    private url = 'https://api.theeprint.com.ph';
    private secureUrl = 'https://api.theeprint.com.ph';

    /* LIVE Staging */
    // private domain = 'stagingapi.theeprint.com.ph';
    // private url = 'https://stagingapi.theeprint.com.ph';
    // private secureUrl = 'https://stagingapi.theeprint.com.ph';

    /* LIVE Beta */
    // private domain = 'betaapi.theeprint.com.ph';
    // private url = 'https://betaapi.theeprint.com.ph';
    // private secureUrl = 'https://betaapi.theeprint.com.ph';

    /* Local */
    // private domain = 'localhost';                                      
    // private url = 'http://localhost:8080';
    // private secureUrl = 'http://localhost:8080';


    public token: any = null;

    public production_mode: boolean = false;
    data: string;
    public userData: any;

    constructor(
        public http: HttpClient,
        public httpClient: HttpClientModule,
        public router: Router,
        public activatedRoute: ActivatedRoute,
        public location: Location,
        // private toastr: ToastrService
    ) {
        this.data = '';
    }

  

  

  getUserHttpOptions() {
    return new Promise(resolve => {
        let token = localStorage.getItem('token');
        if (token) {
          let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/x-www-form-urlencoded',
              'Accept': 'application/json',
              'Authorization': 'Bearer ' + token,
            })
          };
          resolve(httpOptions);
        }
    });
  }
  getUrl( path: string, params: any = null):any{
    let url = '';
    if(this.secure === true){
        url += this.secureUrl;
    } else {
        url += this.url;
    }
    url += path;
    if(params){
      url += this.createUrlParam(params)
    }
    return url;
  }

  createUrlParam(p){
    let uriStr = '?';
    for (let key of Object.keys(p)) {
      if(p[key]){
        uriStr += key + '=' + p[key] + '&';
      }
    }
    return uriStr;
  }

  redirect(path: string = '/', navParams?) {
	  if (navParams) {
	    this.router.navigate([path], navParams);
	  }else{
	    this.router.navigate([path]);
	  }
  }

  getMomentFormat(date, format?, isIos?) {
    if (format) {
			return moment(date).format(format);
		}
		else {
			return moment(date, 'YYYYMMDD+-HH:mm').format();
    }
  }

  getMomentAgo(date) {
    if (date) {
      return moment(date, 'YYYYMMDD+-HH:mm').fromNow();
    }
    else {
      return false;
    }
  }

  getHttpOptions(){
    let httpOptions = {
        headers: new HttpHeaders({ 
            'Authorization': 'Bearer '+localStorage.getItem('token'),
            'Devicetoken': 'no-device',
            'Deviceid': 'no-device'
        })
    };
    return httpOptions;
  }

  // showMessage(title, description, type, timeOut=null) {
  //   let tmptimeOut;
  //   if(timeOut == null) {
  //     tmptimeOut = 4000;
  //   } else {
  //     tmptimeOut = timeOut;
  //   }
  //   switch(type) {
  //     case "success": this.toastr.success(description, title, {
  //       timeOut: tmptimeOut,
  //       easeTime: 200,
  //       positionClass: 'toast-top-center',
  //       enableHtml: true
  //     });
  //     break;
  //     case "info": this.toastr.info(description, title, {
  //       timeOut: tmptimeOut,
  //       easeTime: 200,
  //       positionClass: 'toast-top-center',
  //       enableHtml: true
  //     });
  //     break; 
  //     case "warning":this.toastr.warning(description, title, {
  //       timeOut: tmptimeOut,
  //       easeTime: 200,
  //       positionClass: 'toast-top-center',
  //       enableHtml: true
  //     });
  //     break;
  //     case "error": this.toastr.error(description, title, {
  //       timeOut: tmptimeOut,
  //       easeTime: 200,
  //       positionClass: 'toast-top-center',
  //       enableHtml: true
  //     });
  //     break;
  //     default: this.toastr.success(description, title, {
  //       timeOut: tmptimeOut,
  //       easeTime: 200,
  //       positionClass: 'toast-top-center',
  //       enableHtml: true
  //     });
  //   }
  // }
}
