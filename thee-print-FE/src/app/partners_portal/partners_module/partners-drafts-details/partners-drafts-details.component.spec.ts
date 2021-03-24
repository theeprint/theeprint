import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PartnersDraftsDetailsComponent } from './partners-drafts-details.component';

describe('PartnersDraftsDetailsComponent', () => {
  let component: PartnersDraftsDetailsComponent;
  let fixture: ComponentFixture<PartnersDraftsDetailsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PartnersDraftsDetailsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PartnersDraftsDetailsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
