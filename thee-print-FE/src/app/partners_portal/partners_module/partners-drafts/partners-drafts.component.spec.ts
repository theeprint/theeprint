import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PartnersDraftsComponent } from './partners-drafts.component';

describe('PartnersDraftsComponent', () => {
  let component: PartnersDraftsComponent;
  let fixture: ComponentFixture<PartnersDraftsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PartnersDraftsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PartnersDraftsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
