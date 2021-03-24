import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminNotificationSettingsComponent } from './admin-notification-settings.component';

describe('AdminNotificationSettingsComponent', () => {
  let component: AdminNotificationSettingsComponent;
  let fixture: ComponentFixture<AdminNotificationSettingsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminNotificationSettingsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminNotificationSettingsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
