import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { ReactiveFormsModule } from '@angular/forms';
import { AgmCoreModule } from '@agm/core';
import { SimpleModalModule } from 'ngx-simple-modal';
import { CurrencyPipe } from '../pipe/currency.pipe';
import { ImageCropperModule } from 'ngx-image-cropper';
import { NgxSmartModalModule, NgxSmartModalService } from  'ngx-smart-modal';
import { NgxUiLoaderModule } from  "ngx-ui-loader";
import { ToastrModule } from 'ngx-toastr';
import { FormsModule } from '@angular/forms';
import {  CarouselModule  } from 'ngx-owl-carousel-o';
import { NgxSpinnerModule } from "ngx-spinner";
import {NgxPaginationModule} from 'ngx-pagination';
import * as jspdf from 'jspdf'
import html2canvas from 'html2canvas'
import { SocketIoModule, SocketIoConfig } from 'ngx-socket-io';
import { ExportAsModule } from 'ngx-export-as';
import { InfiniteScrollModule } from 'ngx-infinite-scroll';
import { MatDatepickerModule, MatMenuModule, MatNativeDateModule , MatFormFieldModule, MatInputModule} from '@angular/material';
import { CountdownGlobalConfig, CountdownModule } from "ngx-countdown";
import { NgxMaskModule, IConfig } from 'ngx-mask';
import {MatSelectModule} from '@angular/material/select';
import { MaterialFileInputModule } from 'ngx-material-file-input';

// import {MatDatepickerModule} from '@angular/material/datepicker';

/* DECLARATION */


/* admin modules */
import { DashboardComponent } from './admin/modules/dashboard/dashboard.component';
import { LoginComponent } from './admin/modules/auth/login/login.component';
import { HomeComponent } from './admin/modules/home/home.component';

/* imports */
import { CKEditorModule } from '@ckeditor/ckeditor5-angular';
import { IconsModule } from './admin/lib/icons/icons.module'

/* ngx bootstrap  */
import { BsDropdownModule } from 'ngx-bootstrap/dropdown';
import { ModalModule } from 'ngx-bootstrap/modal';


/* GUARDS */
import { AdminGuard } from './admin/guards/admin.guard';


import { NgxSkeletonLoaderModule } from 'ngx-skeleton-loader';
// import { CarouselModule } from 'ngx-bootstrap/carousel';

/* Partners Portal */
import { NavbarTemplateComponent } from './partners_portal/navbar-template/navbar-template.component';
import { PartnersDashboardComponent } from './partners_portal/partners_module/partners-dashboard/partners-dashboard.component';
import { PartnersDraftsComponent } from './partners_portal/partners_module/partners-drafts/partners-drafts.component';
import { PartnersArchiveComponent } from './partners_portal/partners_module/partners-archive/partners-archive.component';
import { PartnersProfileComponent } from './partners_portal/partners_module/partners-profile/partners-profile.component';
import { PartnersNotifSettingsComponent } from './partners_portal/partners_module/partners-notif-settings/partners-notif-settings.component';
import { PartnersLoginComponent } from './partners_portal/partners_module/partners-login/partners-login.component';
import { PartnersCreateJobOrderComponent } from './partners_portal/partners_module/partners-create-job-order/partners-create-job-order.component';
import { PartnersQuotationComponent } from './partners_portal/partners_module/partners-quotation/partners-quotation.component';
import { PartnersJobOrderDetailsComponent } from './partners_portal/partners_module/partners-job-order-details/partners-job-order-details.component';
import { PartnersContactComponent } from './partners_portal/partners_module/partners-contact/partners-contact.component';
import { PartnersConfirmJobOrderComponent } from './partners_portal/partners_module/partners-confirm-job-order/partners-confirm-job-order.component';
import { PartnersConfirmationComponent } from './partners_portal/partners_module/partners-confirmation/partners-confirmation.component';
import { PartnersTermsAndConditionsComponent } from './partners_portal/partners_module/partners-terms-and-conditions/partners-terms-and-conditions.component';
import { PartnersPrivacyPolicyComponent } from './partners_portal/partners_module/partners-privacy-policy/partners-privacy-policy.component';
import { PartnersMessageComponent } from './partners_portal/partners_module/partners-message/partners-message.component';
import { PartnersDraftsDetailsComponent } from './partners_portal/partners_module/partners-drafts-details/partners-drafts-details.component';
import { ArchivesDetailsComponent } from './partners_portal/partners_module/archive-details/archive-details.component';
import { PartnersEditCreateJobOrderComponent } from './partners_portal/partners_module/partners-edit-create-job-order/partners-edit-create-job-order.component';

/* Admin Dashboard */
import { NavBarTemplateComponent } from './admin/nav_bar_template/nav-bar-template/nav-bar-template.component';
import { AdminPartnersListComponent } from './admin/admin_portal/admin-partners-list/admin-partners-list.component';
import { AdminAddPartnersComponent } from './admin/admin_portal/admin-add-partners/admin-add-partners.component';
import { AdminPartnersDetailComponent } from './admin/admin_portal/admin-partners-detail/admin-partners-detail.component';
import { AdminPartnersDetailTransactionHistoryComponent } from './admin/admin_portal/admin-partners-detail-transaction-history/admin-partners-detail-transaction-history.component';
import { AdminPartnersDetailsPriceCheckListComponent } from './admin/admin_portal/admin-partners-detail-price-check-list/admin-partners-details-price-check-list.component';
import { AdminPartnersDetailPriceListComponent } from './admin/admin_portal/admin-partners-detail-price-list/admin-partners-detail-price-list.component';
import { AdminEditPartnersComponent } from './admin/admin_portal/admin-edit-partners/admin-edit-partners.component';
import { AdminPartnersDetailsEditPriceListComponent } from './admin/admin_portal/admin-partners-detail-edit-price-list/admin-partners-details-edit-price-list.component';
import { AdminJobOrderListComponent } from './admin/admin_portal/admin-job-order-list/admin-job-order-list.component';
import { AdminJobOrderDetailsComponent } from './admin/admin_portal/admin-job-order-details/admin-job-order-details.component';
import { AdminJobOrderListDraftComponent } from './admin/admin_portal/admin-job-order-list-draft/admin-job-order-list-draft.component';
import { AdminJobOrderListArchiveComponent } from './admin/admin_portal/admin-job-order-list-archive/admin-job-order-list-archive.component';
import { AdminCreateJobOrderComponent } from './admin/admin_portal/admin-create-job-order/admin-create-job-order.component';
import { AdminPartnersQuotationComponent } from './admin/admin_portal/admin-partners-quotation/admin-partners-quotation.component';
import { AdminPartnersConfirmJobOrderComponent } from './admin/admin_portal/admin-partners-confirm-job-order/admin-partners-confirm-job-order.component';
import { AdminEditPartnersJobOrderComponent } from './admin/admin_portal/admin-edit-partners-job-order/admin-edit-partners-job-order.component';
import { AdminEditPartnersJobOrderQuotationDetailsComponent } from './admin/admin_portal/admin-edit-partners-job-order-quotation-details/admin-edit-partners-job-order-quotation-details.component';
import { AdminProductsListComponent } from './admin/admin_portal/admin-products-list/admin-products-list.component';
import { AdminPriceChecksComponent } from './admin/admin_portal/admin-price-checks/admin-price-checks.component';
import { AdminPriceChecksDetailsComponent } from './admin/admin_portal/admin-price-checks-details/admin-price-checks-details.component';
import { AdminStaffsComponent } from './admin/admin_portal/admin-staffs/admin-staffs.component';
import { AdminAddStaffsComponent } from './admin/admin_portal/admin-add-staffs/admin-add-staffs.component';
import { AdminEditStaffsComponent } from './admin/admin_portal/admin-edit-staffs/admin-edit-staffs.component';
import { AdminNotificationSettingsComponent } from './admin/admin_portal/admin-notification-settings/admin-notification-settings.component';
import { AdminAccountProfileComponent } from './admin/admin_portal/admin-account-profile/admin-account-profile.component';
import { AdminMessagesComponent } from './admin/admin_portal/admin-messages/admin-messages.component';

/* Admin CMS */
import { AdminCmsComponent } from './admin/admin_portal/admin-cms/admin-cms.component';
import { AdminAboutTheePrintCmsComponent } from './admin/admin_portal/admin-about-thee-print-cms/admin-about-thee-print-cms.component';
import { AdminServicesCmsComponent } from './admin/admin_portal/admin-services-cms/admin-services-cms.component';
import { AdminProductsCmsComponent } from './admin/admin_portal/admin-products-cms/admin-products-cms.component';
import { AdminAddNewProductsCmsComponent } from './admin/admin_portal/admin-add-new-products-cms/admin-add-new-products-cms.component';
import { AdminEditProductCmsComponent } from './admin/admin_portal/admin-edit-product-cms/admin-edit-product-cms.component';
import { AdminCoreCmsComponent } from './admin/admin_portal/admin-core-cms/admin-core-cms.component';
import { AdminFeaturedPartnersCmsComponent } from './admin/admin_portal/admin-featured-partners-cms/admin-featured-partners-cms.component';
import { AdminPrivacyPolicyCmsComponent } from './admin/admin_portal/admin-privacy-policy-cms/admin-privacy-policy-cms.component'
import { AdminTermsAndConditionsCmsComponent } from './admin/admin_portal/admin-terms-and-conditions-cms/admin-terms-and-conditions-cms.component';
import { ResetPasswordComponent } from './partners_portal/partners_module/reset-password/reset-password.component';
import { AdminPartnersDraftsDetailsComponent } from './admin/admin_portal/admin-partners-drafts-details/admin-partners-drafts-details.component';
import { AdminPartnersArchiveDetailsComponent } from './admin/admin_portal/admin-partners-archive-details/admin-partners-archive-details.component';
import { DatePipe } from '@angular/common';
import { DashboardPdfComponent } from './admin/modules/dashboard-pdf/dashboard-pdf.component';
import { AdminConfirmTermsComponent } from './admin/admin_portal/admin-confirm-terms/admin-confirm-terms.component';
import { AdminConfirmPrivacyComponent } from './admin/admin_portal/admin-confirm-privacy/admin-confirm-privacy.component';
import { AdminNewProductPriceListComponent } from './admin/admin_portal/admin-new-product-price-list/admin-new-product-price-list.component';
import { AdminEditJobOrderComponent } from './admin/admin_portal/admin-edit-job-order/admin-edit-job-order.component';
import { from } from  'rxjs';
import { TransformDatePipe } from './services/transform-date/transform-date.pipe';
// import { PipeComponent } from './pipe/pipe.component';
import { C29f9729Component } from './c29f9729/c29f9729.component';
import {MatIconModule} from '@angular/material/icon';



const config: SocketIoConfig = { url: 'https://api.theeprint.com.ph:7000/', options: {} };
// const config: SocketIoConfig = { url: 'http://api.theeprint.com.ph:3001/', options: {} };


@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    HomeComponent,
    DashboardComponent,
    NavbarTemplateComponent,
    PartnersDashboardComponent,
    PartnersDraftsComponent,
    PartnersArchiveComponent,
    PartnersProfileComponent,
    PartnersNotifSettingsComponent,
    PartnersLoginComponent,
    PartnersCreateJobOrderComponent,
    PartnersQuotationComponent,
    CurrencyPipe,
    PartnersJobOrderDetailsComponent,
    PartnersContactComponent,
    NavBarTemplateComponent,
    AdminPartnersListComponent,
    AdminAddPartnersComponent,
    AdminPartnersDetailComponent,
    AdminPartnersDetailTransactionHistoryComponent,
    PartnersConfirmJobOrderComponent,
    AdminPartnersDetailsPriceCheckListComponent,
    AdminPartnersDetailPriceListComponent,
    AdminEditPartnersComponent,
    AdminPartnersDetailsPriceCheckListComponent,
    AdminPartnersDetailsEditPriceListComponent,
    AdminJobOrderListComponent,
    AdminJobOrderDetailsComponent,
    AdminCmsComponent,
    AdminAboutTheePrintCmsComponent,
    AdminServicesCmsComponent,
    AdminProductsCmsComponent,
    AdminAddNewProductsCmsComponent,
    AdminEditProductCmsComponent,
    AdminCoreCmsComponent,
    AdminFeaturedPartnersCmsComponent,
    AdminTermsAndConditionsCmsComponent,
    AdminPrivacyPolicyCmsComponent,
    AdminJobOrderListDraftComponent,
    AdminJobOrderListArchiveComponent,
    AdminCreateJobOrderComponent,
    AdminPartnersQuotationComponent,
    AdminPartnersConfirmJobOrderComponent,
    AdminEditPartnersJobOrderComponent,
    AdminEditPartnersJobOrderQuotationDetailsComponent,
    AdminProductsListComponent,
    PartnersConfirmationComponent,
    AdminPriceChecksComponent,
    AdminPriceChecksDetailsComponent,
    PartnersTermsAndConditionsComponent,
    PartnersPrivacyPolicyComponent,
    PartnersMessageComponent,
    AdminStaffsComponent,
    AdminAddStaffsComponent,
    AdminEditStaffsComponent,
    AdminNotificationSettingsComponent,
    AdminAccountProfileComponent,
    AdminMessagesComponent,
    PartnersDraftsDetailsComponent,
    ResetPasswordComponent,
    ArchivesDetailsComponent,
    AdminPartnersDraftsDetailsComponent,
    AdminPartnersArchiveDetailsComponent,
    DashboardPdfComponent,
    AdminConfirmTermsComponent,
    AdminConfirmPrivacyComponent,
    AdminNewProductPriceListComponent,
    AdminEditJobOrderComponent,
    PartnersEditCreateJobOrderComponent,
    TransformDatePipe,
    // PipeComponent,
    C29f9729Component,
  ],
  imports: [
    MatNativeDateModule,
    MatFormFieldModule,
    MatInputModule,
    MatDatepickerModule,
    MatIconModule,
    NgxMaskModule.forRoot(),
    InfiniteScrollModule,
    SocketIoModule.forRoot(config),
    NgxPaginationModule,
    NgxSpinnerModule,
    BrowserModule,
    BrowserAnimationsModule,
    CarouselModule,
    ToastrModule.forRoot(),
    BsDropdownModule.forRoot(),
    ModalModule.forRoot(),
    IconsModule,
    FormsModule,
    ReactiveFormsModule,
    AppRoutingModule,
    HttpClientModule, 
    BrowserAnimationsModule,
    CKEditorModule,
    NgxSkeletonLoaderModule,
    ImageCropperModule,
    NgxSmartModalModule.forRoot(),
    NgxUiLoaderModule,
    AgmCoreModule.forRoot({apiKey: 'AIzaSyA148JdqmqVqQ9v5vIhrvKM4JzI4DvNnKk'}),
    ExportAsModule,
    MatMenuModule,
    CountdownModule,
    MatSelectModule,
    MaterialFileInputModule


  ],

 
  entryComponents: [
  ],
  providers: [AdminGuard, NgxSmartModalService, DatePipe, MatDatepickerModule,
    { provide: CountdownGlobalConfig}
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
