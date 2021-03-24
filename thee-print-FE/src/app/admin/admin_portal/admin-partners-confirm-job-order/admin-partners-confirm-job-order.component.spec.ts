import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminPartnersConfirmJobOrderComponent } from './admin-partners-confirm-job-order.component';

describe('AdminPartnersConfirmJobOrderComponent', () => {
  let component: AdminPartnersConfirmJobOrderComponent;
  let fixture: ComponentFixture<AdminPartnersConfirmJobOrderComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminPartnersConfirmJobOrderComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminPartnersConfirmJobOrderComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
