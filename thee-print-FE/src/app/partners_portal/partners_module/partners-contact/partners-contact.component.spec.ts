import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PartnersContactComponent } from './partners-contact.component';

describe('PartnersContactComponent', () => {
  let component: PartnersContactComponent;
  let fixture: ComponentFixture<PartnersContactComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PartnersContactComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PartnersContactComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
