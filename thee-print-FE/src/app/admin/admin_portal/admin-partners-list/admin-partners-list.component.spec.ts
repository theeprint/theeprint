import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminPartnersListComponent } from './admin-partners-list.component';

describe('AdminPartnersListComponent', () => {
  let component: AdminPartnersListComponent;
  let fixture: ComponentFixture<AdminPartnersListComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminPartnersListComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminPartnersListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
