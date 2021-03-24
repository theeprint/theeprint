import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PartnersConfirmationComponent } from './partners-confirmation.component';

describe('PartnersConfirmationComponent', () => {
  let component: PartnersConfirmationComponent;
  let fixture: ComponentFixture<PartnersConfirmationComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PartnersConfirmationComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PartnersConfirmationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
