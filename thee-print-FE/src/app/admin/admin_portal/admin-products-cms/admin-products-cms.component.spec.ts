import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminProductsCmsComponent } from './admin-products-cms.component';

describe('AdminProductsCmsComponent', () => {
  let component: AdminProductsCmsComponent;
  let fixture: ComponentFixture<AdminProductsCmsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminProductsCmsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminProductsCmsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
