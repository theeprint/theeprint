import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PartnersQuotationComponent } from './partners-quotation.component';

describe('PartnersQuotationComponent', () => {
  let component: PartnersQuotationComponent;
  let fixture: ComponentFixture<PartnersQuotationComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PartnersQuotationComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PartnersQuotationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
