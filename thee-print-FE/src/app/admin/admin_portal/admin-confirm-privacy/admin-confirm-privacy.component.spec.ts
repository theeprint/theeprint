import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminConfirmPrivacyComponent } from './admin-confirm-privacy.component';

describe('AdminConfirmPrivacyComponent', () => {
  let component: AdminConfirmPrivacyComponent;
  let fixture: ComponentFixture<AdminConfirmPrivacyComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminConfirmPrivacyComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminConfirmPrivacyComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
