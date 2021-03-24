import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminJobOrderDetailsComponent } from './admin-job-order-details.component';

describe('AdminJobOrderDetailsComponent', () => {
  let component: AdminJobOrderDetailsComponent;
  let fixture: ComponentFixture<AdminJobOrderDetailsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminJobOrderDetailsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminJobOrderDetailsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
