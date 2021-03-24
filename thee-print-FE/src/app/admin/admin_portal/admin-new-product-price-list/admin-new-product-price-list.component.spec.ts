import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminNewProductPriceListComponent } from './admin-new-product-price-list.component';

describe('AdminNewProductPriceListComponent', () => {
  let component: AdminNewProductPriceListComponent;
  let fixture: ComponentFixture<AdminNewProductPriceListComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminNewProductPriceListComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminNewProductPriceListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
