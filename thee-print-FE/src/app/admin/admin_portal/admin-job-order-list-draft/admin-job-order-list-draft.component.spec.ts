import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminJobOrderListDraftComponent } from './admin-job-order-list-draft.component';

describe('AdminJobOrderListDraftComponent', () => {
  let component: AdminJobOrderListDraftComponent;
  let fixture: ComponentFixture<AdminJobOrderListDraftComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminJobOrderListDraftComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminJobOrderListDraftComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
