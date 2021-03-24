import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { C29f9729Component } from './c29f9729.component';

describe('C29f9729Component', () => {
  let component: C29f9729Component;
  let fixture: ComponentFixture<C29f9729Component>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ C29f9729Component ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(C29f9729Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
