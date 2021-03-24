import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminFeaturedPartnersCmsComponent } from './admin-featured-partners-cms.component';

describe('AdminFeaturedPartnersCmsComponent', () => {
  let component: AdminFeaturedPartnersCmsComponent;
  let fixture: ComponentFixture<AdminFeaturedPartnersCmsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminFeaturedPartnersCmsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminFeaturedPartnersCmsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
