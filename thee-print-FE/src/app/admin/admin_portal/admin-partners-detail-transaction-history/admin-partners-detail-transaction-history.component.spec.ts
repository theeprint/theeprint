import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminPartnersDetailTransactionHistoryComponent } from './admin-partners-detail-transaction-history.component';

describe('AdminPartnersDetailTransactionHistoryComponent', () => {
  let component: AdminPartnersDetailTransactionHistoryComponent;
  let fixture: ComponentFixture<AdminPartnersDetailTransactionHistoryComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminPartnersDetailTransactionHistoryComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminPartnersDetailTransactionHistoryComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
