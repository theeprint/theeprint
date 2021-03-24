import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminAccountProfileComponent } from './admin-account-profile.component';

describe('AdminAccountProfileComponent', () => {
  let component: AdminAccountProfileComponent;
  let fixture: ComponentFixture<AdminAccountProfileComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminAccountProfileComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminAccountProfileComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
