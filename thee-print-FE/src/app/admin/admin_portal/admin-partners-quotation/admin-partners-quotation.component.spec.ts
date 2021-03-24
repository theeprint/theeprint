import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminPartnersQuotationComponent } from './admin-partners-quotation.component';

describe('AdminPartnersQuotationComponent', () => {
  let component: AdminPartnersQuotationComponent;
  let fixture: ComponentFixture<AdminPartnersQuotationComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminPartnersQuotationComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminPartnersQuotationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
