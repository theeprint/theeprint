import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class DebounceService {

  constructor() { }

  debounce(func, wait, immediate: boolean = false) {
    var timeout;
    return function() {
      var context = this, args = arguments;
      var later = function() {
        timeout = null;
        if (!immediate) func.apply(context, args);
      };
      var callNow = immediate && !timeout;
      clearTimeout(timeout);
      timeout = setTimeout(later, wait);
      if (callNow) func.apply(context, args);
    };
  };
  
}


