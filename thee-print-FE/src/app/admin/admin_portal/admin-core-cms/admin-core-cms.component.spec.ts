import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminCoreCmsComponent } from './admin-core-cms.component';

describe('AdminCoreCmsComponent', () => {
  let component: AdminCoreCmsComponent;
  let fixture: ComponentFixture<AdminCoreCmsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminCoreCmsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminCoreCmsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
