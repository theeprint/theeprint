import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminPriceChecksDetailsComponent } from './admin-price-checks-details.component';

describe('AdminPriceChecksDetailsComponent', () => {
  let component: AdminPriceChecksDetailsComponent;
  let fixture: ComponentFixture<AdminPriceChecksDetailsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminPriceChecksDetailsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminPriceChecksDetailsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
