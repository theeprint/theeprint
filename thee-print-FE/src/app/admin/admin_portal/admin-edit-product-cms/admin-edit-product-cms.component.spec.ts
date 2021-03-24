import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminEditProductCmsComponent } from './admin-edit-product-cms.component';

describe('AdminEditProductCmsComponent', () => {
  let component: AdminEditProductCmsComponent;
  let fixture: ComponentFixture<AdminEditProductCmsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminEditProductCmsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminEditProductCmsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
