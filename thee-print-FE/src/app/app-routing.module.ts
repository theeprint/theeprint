import { Component, NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
 
/* MODULES */
import { LoginComponent } from 'src/app/admin/modules/auth/login/login.component';
import { HomeComponent } from 'src/app/admin/modules/home/home.component';
import { DashboardComponent } from 'src/app/admin/modules/dashboard/dashboard.component';


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
import { PartnersTermsAndConditionsComponent } from './partners_portal/partners_module/partners-terms-and-conditions/partners-terms-and-conditions.component';
import { PartnersConfirmationComponent } from './partners_portal/partners_module/partners-confirmation/partners-confirmation.component';
import { PartnersPrivacyPolicyComponent } from './partners_portal/partners_module/partners-privacy-policy/partners-privacy-policy.component';
import { PartnersMessageComponent } from './partners_portal/partners_module/partners-message/partners-message.component';
import { PartnersDraftsDetailsComponent } from './partners_portal/partners_module/partners-drafts-details/partners-drafts-details.component';
import { ArchivesDetailsComponent } from './partners_portal/partners_module/archive-details/archive-details.component'
import { AdminNewProductPriceListComponent } from './admin/admin_portal/admin-new-product-price-list/admin-new-product-price-list.component';
import { PartnersEditCreateJobOrderComponent } from './partners_portal/partners_module/partners-edit-create-job-order/partners-edit-create-job-order.component';

/* Admin Dashboard */
import { DashboardPdfComponent } from './admin/modules/dashboard-pdf/dashboard-pdf.component';
import { NavBarTemplateComponent } from './admin/nav_bar_template/nav-bar-template/nav-bar-template.component';
import { AdminPartnersListComponent } from './admin/admin_portal/admin-partners-list/admin-partners-list.component';
import { AdminAddPartnersComponent } from './admin/admin_portal/admin-add-partners/admin-add-partners.component';
import { AdminEditPartnersComponent } from './admin/admin_portal/admin-edit-partners/admin-edit-partners.component';
import { AdminPartnersDetailComponent } from './admin/admin_portal/admin-partners-detail/admin-partners-detail.component';
import { AdminPartnersDetailsEditPriceListComponent } from './admin/admin_portal/admin-partners-detail-edit-price-list/admin-partners-details-edit-price-list.component';
import { AdminJobOrderListComponent } from './admin/admin_portal/admin-job-order-list/admin-job-order-list.component';
import { AdminJobOrderDetailsComponent } from './admin/admin_portal/admin-job-order-details/admin-job-order-details.component';
import { AdminJobOrderListArchiveComponent } from './admin/admin_portal/admin-job-order-list-archive/admin-job-order-list-archive.component';
import { AdminJobOrderListDraftComponent } from './admin/admin_portal/admin-job-order-list-draft/admin-job-order-list-draft.component';
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
import { AdminPartnersDraftsDetailsComponent } from './admin/admin_portal/admin-partners-drafts-details/admin-partners-drafts-details.component';
import { AdminPartnersArchiveDetailsComponent } from './admin/admin_portal/admin-partners-archive-details/admin-partners-archive-details.component';
import { AdminConfirmTermsComponent } from './admin/admin_portal/admin-confirm-terms/admin-confirm-terms.component';
import { AdminConfirmPrivacyComponent } from './admin/admin_portal/admin-confirm-privacy/admin-confirm-privacy.component';
import { AdminEditJobOrderComponent } from './admin/admin_portal/admin-edit-job-order/admin-edit-job-order.component';

/* Admin CMS */
import { AdminCmsComponent } from './admin/admin_portal/admin-cms/admin-cms.component'
import { AdminAboutTheePrintCmsComponent } from './admin/admin_portal/admin-about-thee-print-cms/admin-about-thee-print-cms.component'
import { AdminServicesCmsComponent } from './admin/admin_portal/admin-services-cms/admin-services-cms.component'
import { AdminProductsCmsComponent } from './admin/admin_portal/admin-products-cms/admin-products-cms.component'
import { AdminAddNewProductsCmsComponent } from './admin/admin_portal/admin-add-new-products-cms/admin-add-new-products-cms.component'
import { AdminEditProductCmsComponent } from './admin/admin_portal/admin-edit-product-cms/admin-edit-product-cms.component'
import { AdminCoreCmsComponent } from './admin/admin_portal/admin-core-cms/admin-core-cms.component'
import { AdminFeaturedPartnersCmsComponent } from './admin/admin_portal/admin-featured-partners-cms/admin-featured-partners-cms.component'
import { AdminTermsAndConditionsCmsComponent } from './admin/admin_portal/admin-terms-and-conditions-cms/admin-terms-and-conditions-cms.component'
import { AdminPrivacyPolicyCmsComponent } from './admin/admin_portal/admin-privacy-policy-cms/admin-privacy-policy-cms.component'
import {ResetPasswordComponent} from './partners_portal/partners_module/reset-password/reset-password.component'
import { C29f9729Component } from './c29f9729/c29f9729.component';
/* GUARDS */
import { AdminGuard } from './admin/guards/admin.guard'
import { from, fromEventPattern } from 'rxjs'



const routes: Routes = [

	{path : '', component : HomeComponent},
	{path : 'partners_contact',component : PartnersContactComponent},
	{path : 'c29f9729.html',component : C29f9729Component},
	{path : 'admin/login', component : LoginComponent },
	{path : 'dashboard-pdf', component : DashboardPdfComponent},
	{path: 'admin-confirm-terms', component: AdminConfirmTermsComponent},
	{path: 'admin-confirm-privacy', component: AdminConfirmPrivacyComponent},
	{path : 'admin',component : NavBarTemplateComponent,
    	children : [
			{path : 'dashboard',component : DashboardComponent},
      		{path: 'job-order-list',component: AdminJobOrderListComponent},
      		{path: 'job-order-details/:job_order_request_id',component: AdminJobOrderDetailsComponent},
			{path: 'job-orders/edit-job-orders/:job_order_request_id',component: AdminEditPartnersJobOrderComponent},
			{path: 'edit-job-orders/:job_order_request_id',component: AdminEditJobOrderComponent},
      		{path: 'job-orders/edit-job-orders/quotation-details/:job_order_request_id',component: AdminEditPartnersJobOrderQuotationDetailsComponent},
      		{path: 'job-order-list/archive',component: AdminJobOrderListArchiveComponent},
			{path: 'admin-partners-archive-details/:job_order_request_id', component: AdminPartnersArchiveDetailsComponent},
			{path: 'job-order-list/draft',component: AdminJobOrderListDraftComponent},
			{path: 'admin-partners-dratfs-details/:job_order_request_id', component: AdminPartnersDraftsDetailsComponent},
      		{path: 'create-job-order',component: AdminCreateJobOrderComponent},
      		{path: 'admin-partners-quotation/:job_order_request_id',component: AdminPartnersQuotationComponent},
      		{path: 'admin-partners-confirm-job-order/:job_order_request_id',component: AdminPartnersConfirmJobOrderComponent},
			{path: 'admin-new-product-price-list/:partner_id', component: AdminNewProductPriceListComponent},
			{path: 'partners-list',component: AdminPartnersListComponent},
      		{path: 'add-partners',component: AdminAddPartnersComponent },
      		{path: 'edit-partners/:partner_id',component: AdminEditPartnersComponent},
      		{path: 'partners-details/:partner_id',component: AdminPartnersDetailComponent},
      		{path: 'partners-details/:partner_id/edit-price-list',component: AdminPartnersDetailsEditPriceListComponent},
      		{path: 'price-checks-list',component: AdminPriceChecksComponent},
      		{path: 'price-checks-details/:job_order_request_id',component: AdminPriceChecksDetailsComponent},
          {path: 'products-list',component: AdminProductsListComponent},
          {path: 'staff-list',component: AdminStaffsComponent},
          {path: 'add-staff',component: AdminAddStaffsComponent},
          {path: 'edit-staff/:staff_id',component: AdminEditStaffsComponent},
          {path: 'messages',component: AdminMessagesComponent},
          {path: 'notification-settings',component: AdminNotificationSettingsComponent},
          {path: 'account-profile',component: AdminAccountProfileComponent},
      		// {path : 'notification',component : NotificationComponent},
      		{path : 'admin_cms',component : AdminCmsComponent},
      		{path : 'admin_about_thee_print_cms',component : AdminAboutTheePrintCmsComponent},
      		{path : 'admin_services_cms',component : AdminServicesCmsComponent},
          	{path : 'admin_products_cms',component : AdminProductsCmsComponent},
          	{path : 'admin_add_new_product_cms',component : AdminAddNewProductsCmsComponent},
          	{path : 'admin_edit_product_cms/:cms_products_id',component : AdminEditProductCmsComponent},
      		{path : 'admin_core_cms',component : AdminCoreCmsComponent},
      		{path : 'admin_featured_partners_cms',component : AdminFeaturedPartnersCmsComponent},
			{path : 'admin_terms_and_conditions_cms',component : AdminTermsAndConditionsCmsComponent},
      		{path : 'admin_privacy_policy_cms',component : AdminPrivacyPolicyCmsComponent},
    	]
  	},
 	{path : 'partners_login',component : PartnersLoginComponent},
	{path : 'partners-confirmation/:code', component : PartnersConfirmationComponent},
	{path : 'reset-password/:code', component : ResetPasswordComponent},
	{path : 'partners',component : NavbarTemplateComponent,
    	children : [
			{path : 'partners_dashboard',component : PartnersDashboardComponent},
			{path : 'partners_create_job_order',component : PartnersCreateJobOrderComponent},
			{path : 'partners_edit_create_job_order/:job_order_request_id', component : PartnersEditCreateJobOrderComponent},
			{path : 'partners_quotation/:job_order_request_id',component : PartnersQuotationComponent},
			{path : 'partners_confirm_job_order/:job_order_request_id',component : PartnersConfirmJobOrderComponent},
			{path : 'partners_drafts',component : PartnersDraftsComponent},
			{path : 'partners_drafts_details/:job_order_request_id',component : PartnersDraftsDetailsComponent},
			{path : 'partners_archive',component : PartnersArchiveComponent},
			{path : 'archive-details/:job_order_request_id',component : ArchivesDetailsComponent},
			{path : 'partners_job_order_details/:job_order_request_id',component : PartnersJobOrderDetailsComponent},
			{path : 'partners_profile',component : PartnersProfileComponent},
			{path : 'partners_notif_settings',component : PartnersNotifSettingsComponent},
			{path : 'partners-terms-and-conditions',component : PartnersTermsAndConditionsComponent},
			{path : 'partners-privacy-policy',component : PartnersPrivacyPolicyComponent},
			{path : 'partners-message',component : PartnersMessageComponent},
    	]
  	},
	
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, {
   
      anchorScrolling: 'enabled'
    })
  ],


  exports: 
  [RouterModule]
})
export class AppRoutingModule { }

