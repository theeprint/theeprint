import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminEditJobOrderComponent } from './admin-edit-job-order.component';

describe('AdminEditJobOrderComponent', () => {
  let component: AdminEditJobOrderComponent;
  let fixture: ComponentFixture<AdminEditJobOrderComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminEditJobOrderComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminEditJobOrderComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
