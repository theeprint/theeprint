import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminPriceChecksComponent } from './admin-price-checks.component';

describe('AdminPriceChecksComponent', () => {
  let component: AdminPriceChecksComponent;
  let fixture: ComponentFixture<AdminPriceChecksComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminPriceChecksComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminPriceChecksComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
