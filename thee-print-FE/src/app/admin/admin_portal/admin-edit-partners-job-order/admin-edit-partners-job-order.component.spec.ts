import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminEditPartnersJobOrderComponent } from './admin-edit-partners-job-order.component';

describe('AdminEditPartnersJobOrderComponent', () => {
  let component: AdminEditPartnersJobOrderComponent;
  let fixture: ComponentFixture<AdminEditPartnersJobOrderComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminEditPartnersJobOrderComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminEditPartnersJobOrderComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
