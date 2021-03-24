import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminTermsAndConditionsCmsComponent } from './admin-terms-and-conditions-cms.component';

describe('AdminTermsAndConditionsCmsComponent', () => {
  let component: AdminTermsAndConditionsCmsComponent;
  let fixture: ComponentFixture<AdminTermsAndConditionsCmsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminTermsAndConditionsCmsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminTermsAndConditionsCmsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
