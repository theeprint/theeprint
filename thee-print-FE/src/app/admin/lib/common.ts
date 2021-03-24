import { Injectable } from '@angular/core';

@Injectable({
    providedIn: 'root'
})
export class Common {

    private minimize_header = true;

    constructor() {}

    public setHeaderView(val){
        this.minimize_header = val;
    }

}