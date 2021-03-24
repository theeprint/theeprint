import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PartnersCreateJobOrderComponent } from './partners-create-job-order.component';

describe('PartnersCreateJobOrderComponent', () => {
  let component: PartnersCreateJobOrderComponent;
  let fixture: ComponentFixture<PartnersCreateJobOrderComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PartnersCreateJobOrderComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PartnersCreateJobOrderComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
