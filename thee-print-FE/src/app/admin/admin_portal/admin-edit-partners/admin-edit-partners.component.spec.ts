import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminEditPartnersComponent } from './admin-edit-partners.component';

describe('AdminEditPartnersComponent', () => {
  let component: AdminEditPartnersComponent;
  let fixture: ComponentFixture<AdminEditPartnersComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminEditPartnersComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminEditPartnersComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
