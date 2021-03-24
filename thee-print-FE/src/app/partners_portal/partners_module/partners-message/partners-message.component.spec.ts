import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PartnersMessageComponent } from './partners-message.component';

describe('PartnersMessageComponent', () => {
  let component: PartnersMessageComponent;
  let fixture: ComponentFixture<PartnersMessageComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PartnersMessageComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PartnersMessageComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
