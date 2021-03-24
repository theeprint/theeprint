import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminPartnersDraftsDetailsComponent } from './admin-partners-drafts-details.component';

describe('AdminPartnersDraftsDetailsComponent', () => {
  let component: AdminPartnersDraftsDetailsComponent;
  let fixture: ComponentFixture<AdminPartnersDraftsDetailsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminPartnersDraftsDetailsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminPartnersDraftsDetailsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
