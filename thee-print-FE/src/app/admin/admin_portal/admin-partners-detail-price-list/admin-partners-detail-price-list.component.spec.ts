import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminPartnersDetailPriceListComponent } from './admin-partners-detail-price-list.component';

describe('AdminPartnersDetailPriceListComponent', () => {
  let component: AdminPartnersDetailPriceListComponent;
  let fixture: ComponentFixture<AdminPartnersDetailPriceListComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminPartnersDetailPriceListComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminPartnersDetailPriceListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
