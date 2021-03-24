import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminJobOrderListComponent } from './admin-job-order-list.component';

describe('AdminJobOrderListComponent', () => {
  let component: AdminJobOrderListComponent;
  let fixture: ComponentFixture<AdminJobOrderListComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminJobOrderListComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminJobOrderListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
