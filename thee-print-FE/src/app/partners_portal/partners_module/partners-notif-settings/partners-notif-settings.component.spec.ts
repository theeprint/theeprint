import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PartnersNotifSettingsComponent } from './partners-notif-settings.component';

describe('PartnersNotifSettingsComponent', () => {
  let component: PartnersNotifSettingsComponent;
  let fixture: ComponentFixture<PartnersNotifSettingsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PartnersNotifSettingsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PartnersNotifSettingsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
