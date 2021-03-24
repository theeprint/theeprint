import { Injectable } from '@angular/core';
import { EnvService } from 'src/app/lib/env.service';
import { Urls } from 'src/app/lib/urls';
import { HttpHeaders } from '@angular/common/http';
import { BehaviorSubject, Observable } from 'rxjs';
@Injectable({
  providedIn: 'root'
})
export class UserService {
private unseen_count = new BehaviorSubject(0);

//production
image_path='https://api.theeprint.com.ph/api/public/app/images';

//staging
// image_path='http://stagingapi.theeprint.com.ph/api/public/app/images';

//beta
// image_path='http://betaapi.theeprint.com.ph/api/public/app/images';

//local
// image_path='http://localhost:8080/app/images/';

  constructor(
    private env: EnvService,
  ) { }
  unseen_count_function(count){
    const newValue = count;
    this.unseen_count.next(newValue)
  }
  getCountObservable(): Observable<number>{
    return this.unseen_count.asObservable();
  }

  login(params) {
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Accept-Encoding' : 'gzip, deflate, br'
            })
        }
        let url = this.env.getUrl(Urls.login);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        });
    });
  }

  addAddress(params) {
    return new Promise(resolve => {
      let token = localStorage.getItem('token');
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.addAddress);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        });
    });
  }

  createUserProfile(params) {
    return new Promise(resolve => {
      let token = localStorage.getItem('token');
        let httpOptions = {
            headers: new HttpHeaders({
              // 'Content-Type': 'multipart/form-data',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.userProfile);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        });
    });
  }

  createPartnersProfile(params) {
    return new Promise(resolve => {
      let token = localStorage.getItem('token');
        let httpOptions = {
            headers: new HttpHeaders({
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.partnerProfile);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        });
    });
  }

  addJob(params) {
    return new Promise(resolve => {
      let token = localStorage.getItem('token');
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.addJob);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        });
    });
  }
  
  partnersList(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Accept-Encoding' : 'gzip, deflate, br',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.partnersList);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'partner'});
        });
    });
  }

  productsList(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Accept-Encoding' : 'gzip, deflate, br',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.productsList);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'products'});
        });
    });
  }
  savePriceList(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Accept-Encoding' : 'gzip, deflate, br',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.priceList);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'products'});
        });
    });
  }
  getPartnerConfirmation(params) {
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Accept-Encoding' : 'gzip, deflate, br'
            })
        }
        let url = this.env.getUrl(Urls.getConfirmation);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getPartnerConfirmation'});
        });
    });
  }
  confirmPartner(params) {
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Accept-Encoding' : 'gzip, deflate, br'
            })
        }
        let url = this.env.getUrl(Urls.confirmPartner);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getPartnerConfirmation'});
        });
    });
  }
  getProfile(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.singlePartner)+'/'+params;
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getPartnerConfirmation'});
        });
    });
  }
  viewPrivacyPolicy(params) {
    let token = localStorage.getItem('token');
    if(token){
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.viewPrivacyPolicy);
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
      });
    });
  }else{
    return new Promise(resolve => {
      let httpOptions = {
          headers: new HttpHeaders({
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          })
      }
      let url = this.env.getUrl(Urls.viewPrivacyPolicy);
      this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
      }, ex => {
        resolve({error: 1, message: ex, request: 'login'}); 
      });
    });
  }
}

  viewTermsandConditions(params) {
    let token = localStorage.getItem('token');
    if(token){
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.viewTermsandConditions);
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        
      });
    });
  }else{
    return new Promise(resolve => {
      let httpOptions = {
          headers: new HttpHeaders({
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          })
      }
      let url = this.env.getUrl(Urls.viewTermsandConditions);
      this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
      }, ex => {
        resolve({error: 1, message: ex, request: 'login'}); 
      });
    });
  }
}

  viewServices(params) {
    let token = localStorage.getItem('token');
    if(token){
      return new Promise(resolve => {
          let httpOptions = {
              headers: new HttpHeaders({
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Auth-Token' : token
              })
          }
          let url = this.env.getUrl(Urls.viewServices);
          this.env.http.get(url, httpOptions).subscribe(data => {
          resolve(data);
          }, ex => {
          resolve({error: 1, message: ex, request: 'login'});
          
          });
      });
    }else{
      return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json'
            })
        }
        let url = this.env.getUrl(Urls.viewServices);
        this.env.http.get(url, httpOptions).subscribe(data => {
          resolve(data);
        }, ex => {
          resolve({error: 1, message: ex, request: 'login'}); 
        });
      });
    }
  }

  viewCoreValues(params) {
    let token = localStorage.getItem('token');
    if(token){
      return new Promise(resolve => {
          let httpOptions = {
              headers: new HttpHeaders({
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Auth-Token' : token
              })
          }
          let url = this.env.getUrl(Urls.viewCoreValues);
          this.env.http.get(url, httpOptions).subscribe(data => {
          resolve(data);
          }, ex => {
          resolve({error: 1, message: ex, request: 'login'});
          
          });
      });
    }else{
      return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            })
        }
        let url = this.env.getUrl(Urls.viewCoreValues);
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        
        });
    });
    }
  }

  viewFeaturedPartners() {
    let token = localStorage.getItem('token');
    if(token){
      return new Promise(resolve => {
          let httpOptions = {
              headers: new HttpHeaders({
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Auth-Token' : token
              })
          }
          let url = this.env.getUrl(Urls.viewFeaturedPartners);
          this.env.http.get(url, httpOptions).subscribe(data => {
          resolve(data);
          }, ex => {
          resolve({error: 1, message: ex, request: 'login'});
          
          });
      });
    }else{
      return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json'
            })
        }
        let url = this.env.getUrl(Urls.viewFeaturedPartners);
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'}) 
        });
      });
    }
  }

  viewCmsProducts(params) {
    let token = localStorage.getItem('token');
    if(token){
      return new Promise(resolve => {
          let httpOptions = {
              headers: new HttpHeaders({
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Auth-token' : token
              })
          }
          let url = this.env.getUrl(Urls.viewCmsProducts);
          this.env.http.post(url,params, httpOptions).subscribe(data => {
          resolve(data);
          }, ex => {
          resolve({error: 1, message: ex, request: 'login'});
          
          });
      });
    }else{
      return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json'
            })
        }
        let url = this.env.getUrl(Urls.viewCmsProducts);
        this.env.http.post(url,params, httpOptions).subscribe(data => {
          resolve(data);
        }, ex => {
          resolve({error: 1, message: ex, request: 'login'});
        });
      });
    }
  }

  viewCmsEditProduct(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-token' : token
            })
        }
        let url = this.env.getUrl(Urls.viewCmsEditProduct+'/'+params);
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        
        });
    });
  }

  viewProductsUpdate(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.viewProductsUpdate);
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        
        });
    });
  }

  viewCmsEditProductCategories(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-token' : token
            })
        }
        let url = this.env.getUrl(Urls.viewCmsEditProductCategories+'/'+params);
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        
        });
    });
  }

  viewCmsProductsCategory() {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.viewCmsProductsCategory);
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        
        });
    });
  }


  viewPartners(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.viewPartners);
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        
        });
    });
  }

  /* view of single partner */
  singlePartner(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.singlePartner+'/'+params);
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        
        });
    });
  }

  updatePrivacyPolicy(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-token' : token
            })
        }
        let url = this.env.getUrl(Urls.updatePrivacyPolicy);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        
        });
    });
  }

  updateTermsandConditions(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-token' : token
            })
        }
        let url = this.env.getUrl(Urls.updateTermsandConditions);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        
        });
    });
  }

  updateCoreValues(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Accept': 'application/json', 
              'Auth-token' : token
            })
        }
        let url = this.env.getUrl(Urls.updateCoreValues);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        
        });
    });
  }

  updateFeaturedPartners(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Accept': 'application/json', 
              'Auth-token' : token
            })
        }
        let url = this.env.getUrl(Urls.updateFeaturedPartners);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        
        });
    });
  }

  updateCompanyProfile(id, params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              // 'Content-Type': 'application/json',
              'Accept': 'application/json', 
              'Auth-token' : token
            })
        }
        let url = this.env.getUrl(Urls.updateCompanyProfile+'/'+id);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        
        });
    });
  }

  updateAboutTheePrint(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Accept': 'application/json', 
              'Auth-token' : token
            })
        }
        let url = this.env.getUrl(Urls.updateAboutTheePrint);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        
        });
    });
  }


  updateServices(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Accept': 'application/json', 
              'Auth-token' : token
            })
        }
        let url = this.env.getUrl(Urls.updateServices);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        
        });
    });
  }


  updateCmsProducts(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Accept': 'application/json', 
              'Auth-token' : token
            })
        }
        let url = this.env.getUrl(Urls.updateCmsProducts);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        
        });
    });
  }


  addCmsNewProducts(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Accept': 'application/json', 
              'Auth-token' : token
            })
        }
        let url = this.env.getUrl(Urls.addCmsNewProducts);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        
        });
    });
  }




  getProductPrice(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getProductPrice);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getProductPrice'});
        });
    });
  }
  updateProductPrice(product_price_id, params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.updateProductPrice)+'/'+params;
        this.env.http.put(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getProductPrice'});
        });
    });
  }
  getCompanyAddress(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getCompanyAddress)+'/'+params;
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getProductPrice'});
        });
    });
  }
  deactivateUser(user_id, params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.deactivateAccount)+'/'+user_id;
        this.env.http.put(url,params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getProductPrice'});
        });
    });
  }

  updateProfile(id, params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Accept': 'application/json', 
              'Auth-token' : token
            })
        }
        let url = this.env.getUrl(Urls.updateProfile)+'/'+id;
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        
        });
    });
  }
  getSingleCompanyAddress(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getSingleCompanyAddress)+'/'+params;
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getProductPrice'});
        });
    });
  }
  updateCompanyAddress(company_address_id, params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getCompanyAddress)+'/'+company_address_id;
        this.env.http.put(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getProductPrice'});
        });
    });
  }
  validatePassword(params) {
    return new Promise(resolve => {
      let token = localStorage.getItem('token');
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.validatePassword);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        });
    });
  }
  getMachinePrints() {
    return new Promise(resolve => {
      let token = localStorage.getItem('token');
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getMachinePrints);
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        });
    });
  }
  addProduct(params) {
    return new Promise(resolve => {
      let token = localStorage.getItem('token');
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.addProduct);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        });
    });
  }
  getSingleProduct(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getSingleProduct)+'/'+params;
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getProductPrice'});
        });
    });
  }
  updateProduct(params) {
    return new Promise(resolve => {
      let token = localStorage.getItem('token');
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.updateProduct);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        });
    });
  }
  updateProductPrices(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.updateProductPrices);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getProductPrice'});
        });
    });
  }
  getProductMediaPerPartner(params) {
    return new Promise(resolve => {
      let token = localStorage.getItem('token');
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getProductMediaPerPartner+'/'+params);
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        });
    });
  }
  getProductMachinePrintPerPartner(params) {
    return new Promise(resolve => {
      let token = localStorage.getItem('token');
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getProductMachinePrintPerPartner+'/'+params);
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        });
    });
  }
  getMachinePrintByMedia(partners_id, param) {
    return new Promise(resolve => {
      let token = localStorage.getItem('token');
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getMachinePrintByMedia+'/'+partners_id+'/'+param);
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        });
    });
  }
  getProductPartners(params) {
    return new Promise(resolve => {
      let token = localStorage.getItem('token');
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getProductPartners);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        });
    });
  }
  getJobOderdetails(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.jobOrderDetails+'/'+params);
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        
        });
    });
  }
  updateJobOrder(job_order_id,params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.addJob+'/'+job_order_id);
        this.env.http.put(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        
        });
    });
  }
  getJobOderList(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Accept-Encoding' : 'gzip, deflate, br',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getJobOderList);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'job order list'});
        });
    });
  }
  getPartnersDashboard(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getPartnersDashboard)+'/'+params;
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getPartnerConfirmation'});
        });
    });
  }
  adminGetJobOderList(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Accept-Encoding' : 'gzip, deflate, br',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.adminGetJobOderList);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'job order list'});
        });
    });
  }
  getPriceCheckList(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Accept-Encoding' : 'gzip, deflate, br',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getPriceCheckList);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'job order list'});
        });
    });
  }
  getJobOrderLog(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Accept-Encoding' : 'gzip, deflate, br',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getJobOrderLog);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'job order list'});
        });
    });
  }
  sendEmailConfirmation(link) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.sendEmailConfirmation)+link;
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getPartnerConfirmation'});
        });
    });
  }
  sendEmailFirstLogin(partner_id) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.sendEmailFirstLogin)+partner_id;
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getPartnerConfirmation'});
        });
    });
  }
  sendEmailPriceCheck(partner_id, job_id) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.sendEmailPriceCheck+partner_id+'&&job_order_request_id='+job_id);
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getPartnerConfirmation'});
        });
    });
  }
  sendEmailNewJobOrder(partner_id, job_id) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.sendEmailNewJobOrder+partner_id+'&&job_order_request_id='+job_id);
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getPartnerConfirmation'});
        });
    });
  }
  viewAboutTheePrint() {
    let token = localStorage.getItem('token');
    if(token){
      return new Promise(resolve => {
          let httpOptions = {
              headers: new HttpHeaders({
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Auth-Token' : token
              })
          }
          let url = this.env.getUrl(Urls.viewAboutTheePrint);
          this.env.http.get(url, httpOptions).subscribe(data => {
          resolve(data);
          }, ex => {
          resolve({error: 1, message: ex, request: 'login'});
          });
      });
    }else{
      return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json'
            })
        }
        let url = this.env.getUrl(Urls.viewAboutTheePrint);
        this.env.http.get(url, httpOptions).subscribe(data => {
          resolve(data);
        }, ex => {
          resolve({error: 1, message: ex, request: 'login'});
        });
      });
    }
  }
  staffList(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Accept-Encoding' : 'gzip, deflate, br',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.staffList);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'staff'});
        });
    });
  }
  getNotificationMessage() {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Accept-Encoding' : 'gzip, deflate, br',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getNotificationMessage);
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'notification message'});
        });
    });
  }
  updateNotificationMessage(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Accept-Encoding' : 'gzip, deflate, br',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.updateNotificationMessage);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'notification message'});
        });
    });
  }
  getAdminDashboard() {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getAdminDashboard);
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getPartnerConfirmation'});
        });
    });
  }
  forgotPassword(params) {
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            })
        }
        let url = this.env.getUrl(Urls.forgotPassword);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'forgot-password'});
        });
    });
  }
  sendEmailForgotPassword(link) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            })
        }
        let url = this.env.getUrl(Urls.sendEmailForgotPassword)+link;
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getPartnerConfirmation'});
        });
    });
  }
  validateResetToken(params) {
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Accept-Encoding' : 'gzip, deflate, br'
            })
        }
        let url = this.env.getUrl(Urls.validateResetToken);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'validate reset token'});
        });
    });
  }
  resetPassword(params) {
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Accept-Encoding' : 'gzip, deflate, br'
            })
        }
        let url = this.env.getUrl(Urls.resetPassword);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'validate reset token'});
        });
    });
  }

  getPendingDashboard() {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getPendingDashboard);
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        });
    });
  }
  getGraphAdminDashboard(year=null) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
     let url = this.env.getUrl(Urls.getGraphAdminDashboard);
        if(year){
          url += '?year=' + year;
        }
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        });
    });
  }
  getConversation(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getConversation);
        this.env.http.post(url,params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getConversation'});
        });
    });
  }
  getConversationMessage(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getConversationMessage);
        this.env.http.post(url,params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getConversation'});
        });
    });
  }
  getConversationUser(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getConversationUser);
        this.env.http.post(url,params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getConversation'});
        });
    });
  }

  sendEmailContactUs(params) {
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            })
        }
        let url = this.env.getUrl(Urls.sendEmailContactUs);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'contact_us'});
        });
    });
  }
  updateConversation(params) {
    return new Promise(resolve => {
      let token = localStorage.getItem('token');
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.updateConversation);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        });
    });
  }
  deleteConversation(params) {
    return new Promise(resolve => {
      let token = localStorage.getItem('token');
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.deleteConversation);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        });
    });
  }
  getConversationCount(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getConversationCount);
        this.env.http.post(url,params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getConversation'});
        });
    });
  }
  updateMessage(params) {
    return new Promise(resolve => {
      let token = localStorage.getItem('token');
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.updateMessage);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        });
    });
  }
  getAdminAccounts() {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getAdminAccounts);
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        });
    });
  }
  notificationList(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Accept-Encoding' : 'gzip, deflate, br',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.notificationList);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'partner'});
        });
    });
  }
  partnerNotitificationEmail(partner_id) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.partnerNotitificationEmail)+partner_id;
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getPartnerConfirmation'});
        });
    });
  }
  updateJob(params) {
    return new Promise(resolve => {
      let token = localStorage.getItem('token');
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.updateJob);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'login'});
        });
    });
  }
  seeNotification(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Accept-Encoding' : 'gzip, deflate, br',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.seeNotification);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'partner'});
        });
    });
  }
  seeAllNotification(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Accept-Encoding' : 'gzip, deflate, br',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.seeAllNotification);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'partner'});
        });
    });
  }
  getNewProductPrice(params) {
    let token = localStorage.getItem('token');
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Auth-Token' : token
            })
        }
        let url = this.env.getUrl(Urls.getNewProductPrice);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'getProductPrice'});
        });
    });
  }
  sendEmailChangeEmail(params) {
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            })
        }
        let url = this.env.getUrl(Urls.sendEmailChangeEmail+'?old='+params.old_email+'&&new='+params.new_email);
        this.env.http.get(url, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'contact_us'});
        });
    });
  }
  resendCredentials(params) {
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            })
        }
        let url = this.env.getUrl(Urls.resendCredentials);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'forgot-password'});
        });
    });
  }
  validateToken(params) {
    return new Promise(resolve => {
        let httpOptions = {
            headers: new HttpHeaders({
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Accept-Encoding' : 'gzip, deflate, br',
            })
        }
        let url = this.env.getUrl(Urls.validateToken);
        this.env.http.post(url, params, httpOptions).subscribe(data => {
        resolve(data);
        }, ex => {
        resolve({error: 1, message: ex, request: 'partner'});
        });
    });
  }
}

