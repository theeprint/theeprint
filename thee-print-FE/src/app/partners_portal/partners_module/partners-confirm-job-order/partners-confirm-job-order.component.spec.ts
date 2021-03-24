import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PartnersConfirmJobOrderComponent } from './partners-confirm-job-order.component';

describe('PartnersConfirmJobOrderComponent', () => {
  let component: PartnersConfirmJobOrderComponent;
  let fixture: ComponentFixture<PartnersConfirmJobOrderComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PartnersConfirmJobOrderComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PartnersConfirmJobOrderComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
