import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminPartnersDetailsEditPriceListComponent } from './admin-partners-details-edit-price-list.component';

describe('AdminPartnersDetailsEditPriceListComponent', () => {
  let component: AdminPartnersDetailsEditPriceListComponent;
  let fixture: ComponentFixture<AdminPartnersDetailsEditPriceListComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminPartnersDetailsEditPriceListComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminPartnersDetailsEditPriceListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
