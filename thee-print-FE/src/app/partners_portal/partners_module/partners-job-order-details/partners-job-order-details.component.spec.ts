import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PartnersJobOrderDetailsComponent } from './partners-job-order-details.component';

describe('PartnersJobOrderDetailsComponent', () => {
  let component: PartnersJobOrderDetailsComponent;
  let fixture: ComponentFixture<PartnersJobOrderDetailsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PartnersJobOrderDetailsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PartnersJobOrderDetailsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
