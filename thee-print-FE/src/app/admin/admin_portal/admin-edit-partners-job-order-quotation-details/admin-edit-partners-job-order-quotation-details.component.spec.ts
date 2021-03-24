import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminEditPartnersJobOrderQuotationDetailsComponent } from './admin-edit-partners-job-order-quotation-details.component';

describe('AdminEditPartnersJobOrderQuotationDetailsComponent', () => {
  let component: AdminEditPartnersJobOrderQuotationDetailsComponent;
  let fixture: ComponentFixture<AdminEditPartnersJobOrderQuotationDetailsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminEditPartnersJobOrderQuotationDetailsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminEditPartnersJobOrderQuotationDetailsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
