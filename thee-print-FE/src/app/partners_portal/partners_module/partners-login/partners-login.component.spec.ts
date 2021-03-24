import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PartnersLoginComponent } from './partners-login.component';

describe('PartnersLoginComponent', () => {
  let component: PartnersLoginComponent;
  let fixture: ComponentFixture<PartnersLoginComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PartnersLoginComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PartnersLoginComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
