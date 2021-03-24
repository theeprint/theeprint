import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminPartnersDetailComponent } from './admin-partners-detail.component';

describe('AdminPartnersDetailComponent', () => {
  let component: AdminPartnersDetailComponent;
  let fixture: ComponentFixture<AdminPartnersDetailComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminPartnersDetailComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminPartnersDetailComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
