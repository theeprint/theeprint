import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PartnersArchiveComponent } from './partners-archive.component';

describe('PartnersArchiveComponent', () => {
  let component: PartnersArchiveComponent;
  let fixture: ComponentFixture<PartnersArchiveComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PartnersArchiveComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PartnersArchiveComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
