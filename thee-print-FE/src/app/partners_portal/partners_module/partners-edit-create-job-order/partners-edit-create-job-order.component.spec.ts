import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PartnersEditCreateJobOrderComponent } from './partners-edit-create-job-order.component';

describe('PartnersEditCreateJobOrderComponent', () => {
  let component: PartnersEditCreateJobOrderComponent;
  let fixture: ComponentFixture<PartnersEditCreateJobOrderComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PartnersEditCreateJobOrderComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PartnersEditCreateJobOrderComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
