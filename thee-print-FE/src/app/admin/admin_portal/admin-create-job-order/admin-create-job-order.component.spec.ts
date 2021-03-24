import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminCreateJobOrderComponent } from './admin-create-job-order.component';

describe('AdminCreateJobOrderComponent', () => {
  let component: AdminCreateJobOrderComponent;
  let fixture: ComponentFixture<AdminCreateJobOrderComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminCreateJobOrderComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminCreateJobOrderComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
