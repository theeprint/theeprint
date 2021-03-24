import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminServicesCmsComponent } from './admin-services-cms.component';

describe('AdminServicesCmsComponent', () => {
  let component: AdminServicesCmsComponent;
  let fixture: ComponentFixture<AdminServicesCmsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminServicesCmsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminServicesCmsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
