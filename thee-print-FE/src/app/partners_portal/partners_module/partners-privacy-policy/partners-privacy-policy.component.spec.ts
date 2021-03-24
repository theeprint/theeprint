import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PartnersPrivacyPolicyComponent } from './partners-privacy-policy.component';

describe('PartnersPrivacyPolicyComponent', () => {
  let component: PartnersPrivacyPolicyComponent;
  let fixture: ComponentFixture<PartnersPrivacyPolicyComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PartnersPrivacyPolicyComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PartnersPrivacyPolicyComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
