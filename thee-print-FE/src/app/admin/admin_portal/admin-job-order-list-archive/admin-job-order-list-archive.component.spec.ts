import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminJobOrderListArchiveComponent } from './admin-job-order-list-archive.component';

describe('AdminJobOrderListArchiveComponent', () => {
  let component: AdminJobOrderListArchiveComponent;
  let fixture: ComponentFixture<AdminJobOrderListArchiveComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminJobOrderListArchiveComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminJobOrderListArchiveComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
