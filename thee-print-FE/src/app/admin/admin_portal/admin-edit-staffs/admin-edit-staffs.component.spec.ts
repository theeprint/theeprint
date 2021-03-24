import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminEditStaffsComponent } from './admin-edit-staffs.component';

describe('AdminEditStaffsComponent', () => {
  let component: AdminEditStaffsComponent;
  let fixture: ComponentFixture<AdminEditStaffsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminEditStaffsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminEditStaffsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
