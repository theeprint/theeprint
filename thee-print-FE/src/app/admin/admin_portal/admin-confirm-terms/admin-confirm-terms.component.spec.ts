import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminConfirmTermsComponent } from './admin-confirm-terms.component';

describe('AdminConfirmTermsComponent', () => {
  let component: AdminConfirmTermsComponent;
  let fixture: ComponentFixture<AdminConfirmTermsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminConfirmTermsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminConfirmTermsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
