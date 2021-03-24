import { Injectable } from '@angular/core';
import { CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot, UrlTree } from '@angular/router';
import { Observable } from 'rxjs';

import { Router } from '@angular/router'


@Injectable({
  providedIn: 'root'
})
export class AdminGuard implements CanActivate {

  constructor(
    private router: Router,
  ) {}

  canActivate(): any {
    // let payload = this.userService.isLoggedIn();
    
    // if(!payload){
    //   this.router.navigate(['/partners_login']);
    
    // }else{
    //   return true;
    // }
  }

  
}
