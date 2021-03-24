import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DashboardPdfComponent } from './dashboard-pdf.component';

describe('DashboardPdfComponent', () => {
  let component: DashboardPdfComponent;
  let fixture: ComponentFixture<DashboardPdfComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DashboardPdfComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DashboardPdfComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
