import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminPartnersArchiveDetailsComponent } from './admin-partners-archive-details.component';

describe('AdminPartnersArchiveDetailsComponent', () => {
  let component: AdminPartnersArchiveDetailsComponent;
  let fixture: ComponentFixture<AdminPartnersArchiveDetailsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminPartnersArchiveDetailsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminPartnersArchiveDetailsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
