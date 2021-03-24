import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PartnersTermsAndConditionsComponent } from './partners-terms-and-conditions.component';

describe('PartnersTermsAndConditionsComponent', () => {
  let component: PartnersTermsAndConditionsComponent;
  let fixture: ComponentFixture<PartnersTermsAndConditionsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PartnersTermsAndConditionsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PartnersTermsAndConditionsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
