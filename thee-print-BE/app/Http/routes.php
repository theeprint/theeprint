<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$app->get('/', function () use ($app) {
    return $app->version();
});

$app->post('login', ['uses' => 'LoginController@login']);
$app->post('logout', ['uses' => 'LoginController@logout']);
$app->post('forgot-password', ['uses' => 'ForgotPasswordController@generateToken']);
$app->post('resend-credentials', ['uses' => 'ForgotPasswordController@generateToken2']);
$app->post('reset-password', ['uses' => 'ForgotPasswordController@resetPassword']);
$app->put('user/{user_id}', ['uses' => 'UserController@updateUser']);
$app->get('partners-profile/{user_id}', ['uses' => 'PartnersProfileController@singlePartner']);
$app->post('partners', ['uses' => 'PartnersProfileController@activePartners']);
$app->post('user-profile/{user_id}', ['uses' => 'UserProfileController@updateProfile']);
$app->post('user-profile', ['uses' => 'UserProfileController@addProfile']);
$app->post('company-profile/{user_id}', ['uses' => 'CompanyProfileController@updateCompanyProfile']);
$app->post('product-price', ['uses' => 'ProductPriceController@addProductPrice']);
$app->put('product-price/{user_id}', ['uses' => 'ProductPriceController@updateProductPrice']);
$app->post('get-product-price', ['uses' => 'ProductPriceController@getProductPrice']);
$app->post('product-price/update', ['uses' => 'ProductPriceController@updateProductPrices']);
$app->post('company-profile', ['uses' => 'CompanyProfileController@addProfile']);
$app->post('company-address', ['uses' => 'CompanyAddressController@addAddress']);
$app->get('company-address/{partner_id}', ['uses' => 'CompanyAddressController@getAddresses']);
$app->get('company-address-single/{company_address_id}', ['uses' => 'CompanyAddressController@getAddress']);
$app->put('company-address/{company_address_id}', ['uses' => 'CompanyAddressController@updateAddress']);
$app->post('job-order-request', ['uses' => 'JobOrderRequestController@addJob']);
$app->get('privacy-policy', ['uses' => 'PrivacyPolicyController@viewPrivacyPolicy']);
$app->post('privacy-policy', ['uses' => 'PrivacyPolicyController@updatePrivacyPolicy']);
$app->get('terms-and-conditions', ['uses' => 'TermsandConditionsController@viewTermsandConditions']);
$app->post('terms-and-conditions', ['uses' => 'TermsandConditionsController@updateTermsandConditions']);
$app->put('job-order-request/{job_order_request_id}', ['uses' => 'JobOrderRequestController@updateStatus']);
$app->post('products', ['uses' => 'ProductController@allProducts']);
$app->get('products/{product_id}', ['uses' => 'ProductController@singleProduct']);
$app->post('products/add', ['uses' => 'ProductController@addProduct']);
$app->post('products/update', ['uses' => 'ProductController@updateProduct']);
$app->get('machine-prints', ['uses' => 'MachinePrintController@allMachinePrint']);
$app->post('partner-confirmation', ['uses' => 'ConfirmationController@getConfirmation']);
$app->post('/partner-confirmation/confirm', ['uses' => 'ConfirmationController@confirmPartner']);
$app->get('cms-about-thee-print', ['uses' => 'AboutTheePrintController@viewAboutTheePrint']);
$app->post('cms-about-thee-print', ['uses' => 'AboutTheePrintController@updateAboutTheePrint']);
$app->get('cms-services', ['uses' => 'ServicesController@viewServices']);
$app->post('cms-services', ['uses' => 'ServicesController@updateServices']);
$app->get('cms-core-values', ['uses' => 'CoreValuesController@viewCoreValues']);
$app->post('cms-core-values', ['uses' => 'CoreValuesController@updateCoreValues']);
$app->get('cms-featured-partners', ['uses' => 'FeaturedPartnersController@viewFeaturedPartners']);
$app->post('cms-featured-partners', ['uses' => 'FeaturedPartnersController@updateFeaturedPartners']);
$app->post('/partner-confirmation/confirm', ['uses' => 'ConfirmationController@confirmPartner']);
$app->post('cms-add-new-product', ['uses' => 'CmsProductsController@addCmsNewProducts']);
$app->post('cms-products', ['uses' => 'CmsProductsController@viewCmsProducts']);
$app->post('cms-update-products', ['uses' => 'CmsProductsController@updateCmsProducts']);
$app->get('cms-products-category', ['uses' => 'CmsProductsController@viewCmsProductsCategory']);  
$app->get('cms-product/{product_id}', ['uses' => 'CmsProductsController@viewCmsEditProduct']);
$app->get('cms-products-categories/{cms_products_category_id}', ['uses' => 'CmsProductsController@viewCmsEditProductCategories']);
$app->get('cms-products-update-at', ['uses' => 'CmsProductsController@viewProductsUpdate']);
$app->post('/validate-password', ['uses' => 'ValidatePasswordController@validatePassword']);
$app->get('partners-product-media/{partners_id}', ['uses' => 'ProductPriceController@getProductMediaPerPartner']);
$app->get('partners-product-machine-print/{partners_id}', ['uses' => 'ProductPriceController@getProductMachinePrintPerPartner']);
$app->get('partners-product-machine-print-media/{partners_id}/{product_media}', ['uses' => 'ProductPriceController@getMachinePrintByMedia']);
$app->post('product-partners', ['uses' => 'ProductPriceController@getProductPartners']);
$app->get('job-order-request-view/{job_order_request_id}', ['uses' => 'JobOrderRequestController@getJobOrder']);
$app->post('job-order-request-list', ['uses' => 'JobOrderRequestController@getJobOrderByStatus']);
$app->get('partners-dashboard/{partners_id}', ['uses' => 'JobOrderRequestController@partnersDashboard']);
$app->post('admin-job-order-request-list', ['uses' => 'JobOrderRequestController@adminGetJobOrderByStatus']);
$app->post('admin-price-check-list', ['uses' => 'JobOrderRequestController@adminGetPriceCheck']);
$app->post('job-order-log', ['uses' => 'JobOrderLogController@jobOrderLogByStatus']);
$app->post('staffs', ['uses' => 'UserProfileController@staffList']);
$app->get('get-partners', ['uses' => 'PartnersProfileController@viewPartners']);
$app->get('notification-types', ['uses' => 'NotificationTypeController@getNotificationMessage']);
$app->post('notification-types', ['uses' => 'NotificationTypeController@updateNotificationMessage']);
$app->get('admin-dashboard', ['uses' => 'JobOrderRequestController@adminDashboard']);
$app->post('validate-reset-token', ['uses' => 'ForgotPasswordController@validateToken']);
$app->get('pending-jo-request', ['uses' => 'JobOrderRequestController@pendingDashboard']);
$app->get('earnings', ['uses' => 'JobOrderRequestController@adminDashboardGraph']);
$app->post('chat-conversation', ['uses' => 'ChatConversationController@getConversation']);
$app->post('chat-conversation-message', ['uses' => 'ChatConversationMessageController@getChatConversationMessage']);
$app->post('chat-conversation-user', ['uses' => 'ChatConversationUserController@getChatConversationUser']);
$app->post('conversation/update', ['uses' => 'ChatConversationController@updateConversation']);
$app->post('chat-conversation-count', ['uses' => 'ChatConversationController@getConversationCount']);
$app->post('chat-conversation-message/update', ['uses' => 'ChatConversationMessageController@updateMessage']);
$app->get('admin-accounts', ['uses' => 'UserController@getAdminAccounts']);
$app->post('notification-list', ['uses' => 'NotificationController@getNotificationList']);
$app->post('update-job-order-request', ['uses' => 'JobOrderRequestController@updateJob']);
$app->post('seen-notification', ['uses' => 'NotificationController@seen']);
$app->post('seen-all-notification', ['uses' => 'NotificationController@seenAll']);
$app->post('new-product-price-list', ['uses' => 'ProductPriceController@getNewProductPriceList']);
$app->post('validate-token', ['uses' => 'TokenController@validateToken']);
$app->post('delete-conversation', ['uses' => 'ChatConversationController@deleteConversation']);