import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminAddNewProductsCmsComponent } from './admin-add-new-products-cms.component';

describe('AdminAddNewProductsCmsComponent', () => {
  let component: AdminAddNewProductsCmsComponent;
  let fixture: ComponentFixture<AdminAddNewProductsCmsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminAddNewProductsCmsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminAddNewProductsCmsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
