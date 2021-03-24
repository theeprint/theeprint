


export const urls = {
    get_token: '/api/token/get',
    api_auth_login : '/rest/api/main/v/1/ac/login_admin',
    api_get_users : '/rest/api/main/v/1/ac/userget_admin',
    api_user_delete : '/rest/api/main/v/1/ac/userdelete_admin',
    api_user_create : '/rest/api/main/v/1/ac/saveaccount_admin',
    api_roles_get : '/rest/api/main/v/1/ac/rolesget_admin',
    api_roles_create : '/rest/api/main/v/1/ac/rolesadd_admin',
    login: '/login',
};

import { Injectable, Inject } from '@angular/core';
import { environment } from 'src/environments/environment';

@Injectable({
    providedIn: 'root'
})


export class Url {
    constructor(
    ) {
    }

    getUrl( path: string ): any{
        let url = environment.domain;
        /* if(this.secure == true){
            url += this.secureUrl;
        } else {
            url += this.url;
        } */
        url += path;
        return url;
    };

    getApiUrl( path: string ): any{
        let url = environment.api_url;
        url += path;
        return url;
    };

    public createUrlParam(p) {
        let uriStr = '?';
        for (let key of Object.keys(p)) {
          if (p[key]) {
            uriStr += key + '=' + p[key] + '&';
          }
        }
        return uriStr;
    }
}