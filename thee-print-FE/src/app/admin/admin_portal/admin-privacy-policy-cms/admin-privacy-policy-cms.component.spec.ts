import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminPrivacyPolicyCmsComponent } from './admin-privacy-policy-cms.component';

describe('AdminPrivacyPolicyCmsComponent', () => {
  let component: AdminPrivacyPolicyCmsComponent;
  let fixture: ComponentFixture<AdminPrivacyPolicyCmsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminPrivacyPolicyCmsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminPrivacyPolicyCmsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
