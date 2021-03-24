import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminAboutTheePrintCmsComponent } from './admin-about-thee-print-cms.component';

describe('AdminAboutTheePrintCmsComponent', () => {
  let component: AdminAboutTheePrintCmsComponent;
  let fixture: ComponentFixture<AdminAboutTheePrintCmsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminAboutTheePrintCmsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminAboutTheePrintCmsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
