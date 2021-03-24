import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminAddPartnersComponent } from './admin-add-partners.component';

describe('AdminAddPartnersComponent', () => {
  let component: AdminAddPartnersComponent;
  let fixture: ComponentFixture<AdminAddPartnersComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminAddPartnersComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminAddPartnersComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
