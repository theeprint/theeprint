import { Injectable, Inject } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { DOCUMENT } from '@angular/common';

import { Jwt } from './Jwt';
import { urls, Url } from './urls';
import { Cookie } from './cookie';
import { environment } from 'src/environments/environment';

import { catchError, map, tap } from 'rxjs/operators';

@Injectable({
    providedIn: 'root'
})
export class token {

    constructor(
        @Inject(DOCUMENT) private document: Document,
        private http: HttpClient,
        private url : Url,
    ) {

    }

    /**
     * token exchange
    */
    tokenExchange() {
        let token = localStorage.getItem('token');
        
        if(!token || token == 'undefined'){
            let httpOptions = this.getHttpOptions();
            let url = this.url.getApiUrl(urls.get_token) + '?device_token=' + environment.device_token;
            return this.http.get<any>(url, httpOptions).subscribe(data => {
                this.setToken(data.data.token)
            });
        }
    }

    /**
     * get header options
    */
    getHttpOptions(){
        let httpOptions = {
            headers: new HttpHeaders({ 
                'Authorization': 'Bearer '+ this.generateToken(),
                'Devicetoken': 'no-device',
                'Deviceid': 'no-device'
            })
        };
        return httpOptions;
    }

    /**
     * token exchange
    */
    generateToken() {
        let token = localStorage.getItem('token');
        // if token is not exist generate new 
        if(!token || token == 'undefined'){
            let tz = Jwt.getTimezone();
            let token = Jwt.setAlgo('HS256')
                .setClaim('token', 'exchange')
                .setClaim('tzoffset', tz.gmt)
                .setClaim('tzname', tz.name)
                .setIssuedAt()
                .setSecret(environment.api_key)
                .getToken();
            return token;
        } else {
            return token;
        }
    }

    setToken(token: any, day: number = 1): any{
        localStorage.removeItem('token');
        localStorage.setItem('token', token);
    }

    removeToken(){
        localStorage.removeItem('token');
    }
    
    
}