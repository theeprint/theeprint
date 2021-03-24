import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminStaffsComponent } from './admin-staffs.component';

describe('AdminStaffsComponent', () => {
  let component: AdminStaffsComponent;
  let fixture: ComponentFixture<AdminStaffsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminStaffsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminStaffsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
