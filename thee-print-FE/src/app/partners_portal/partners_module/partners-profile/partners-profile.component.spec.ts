import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PartnersProfileComponent } from './partners-profile.component';

describe('PartnersProfileComponent', () => {
  let component: PartnersProfileComponent;
  let fixture: ComponentFixture<PartnersProfileComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PartnersProfileComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PartnersProfileComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
