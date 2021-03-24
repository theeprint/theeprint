import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminPartnersDetailsPriceCheckListComponent } from './admin-partners-details-price-check-list.component';

describe('AdminPartnersDetailsPriceCheckListComponent', () => {
  let component: AdminPartnersDetailsPriceCheckListComponent;
  let fixture: ComponentFixture<AdminPartnersDetailsPriceCheckListComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminPartnersDetailsPriceCheckListComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminPartnersDetailsPriceCheckListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
