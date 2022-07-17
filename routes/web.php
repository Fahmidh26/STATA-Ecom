<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admincontroller;
use App\Http\Controllers\Backend\AdminProfileController;
use App\Http\Controllers\Backend\AdminUserController;
use App\Http\Controllers\Backend\BrandController;
use App\Http\Controllers\Backend\categoryController;
use App\Http\Controllers\Backend\CouponController;
use App\Http\Controllers\Backend\OrderController;
use App\Http\Controllers\Backend\productController;
use App\Http\Controllers\Backend\ReportController;
use App\Http\Controllers\Backend\ReturnController;
use App\Http\Controllers\Backend\ShippingAreaController;
use App\Http\Controllers\Backend\SiteSettingController;
use App\Http\Controllers\Backend\sliderController;
use App\Http\Controllers\Backend\subCategoryController;
use App\Http\Controllers\Frontend\CartController;
use App\Http\Controllers\Frontend\homePageController;
use App\Http\Controllers\User\AllUserController;
use App\Http\Controllers\User\CartPageController;
use App\Http\Controllers\User\CashController;
use App\Http\Controllers\User\CheckoutController;
use App\Http\Controllers\User\ReviewController;
use App\Http\Controllers\User\WishlistController;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use App\Models\slider;
use App\Models\subCategory;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });


Route::get('/', function () {
    $products = Product::where('status',1)->orderBy('id','DESC')->limit(6)->get();
    $sliders = Slider::where('status',1)->orderBy('id','DESC')->limit(3)->get();
    $categories = Category::orderBy('category_name','ASC')->get();
    $brands = Brand::orderBy('brand_name','ASC')->get();

    $best_seller = Product::where('best_seller',1)->orderBy('id','DESC')->limit(6)->get();
    $sale = Product::where('sale',1)->orderBy('id','DESC')->limit(6)->get();

    $new = Product::where('new',1)->orderBy('id','DESC')->limit(6)->get();
    $combo = Product::where('combo',1)->orderBy('id','DESC')->limit(4)->get();

    $justforyou = Product::where('status',1)->inRandomOrder()->get();

    return view('frontend.index', compact('categories', 'sliders', 'products','best_seller','sale','new','combo','justforyou','brands'));
    })->name('homepagee');



Route::middleware('admin:admin')->group(function (){
    Route::get('admin/login', [Admincontroller::class, 'loginForm']);
    Route::post('admin/login', [Admincontroller::class, 'store'])->name('admin.login');
});

// FOR ADMIN
Route::middleware(['auth:sanctum,admin', config('jetstream.auth_session'), 'verified'

])->group(function () {
    Route::get('/admin/dashboard', function () {
        return view('admin.adminindex');
    });
});

Route::middleware(['auth:sanctum', config('jetstream.auth_session'), 'verified'

])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});

// Route::get('/user/logout', [homePageController::class, 'UserLogout'])->name('user.logout');

// Route::get('/admin/dashboard', function () {
//     return view('admin.adminIndex')->name('brand');
// });

Route::prefix('brand')->group(function(){

    Route::get('/view', [Admincontroller::class, 'BrandView'])->name('all.brand');
    Route::get('/alls/view', [Admincontroller::class, 'BrandsView'])->name('brand.view');
    
    Route::post('/store', [BrandController::class, 'BrandStore'])->name('brand.store');
    
    // Route::get('/edit/{id}', [BrandController::class, 'BrandEdit'])->name('brand.edit');
    
    // Route::post('/update', [BrandController::class, 'BrandUpdate'])->name('brand.update');
    
    // Route::get('/delete/{id}', [BrandController::class, 'BrandDelete'])->name('brand.delete');
    
    });


    // Admin Category all Routes  
Route::prefix('category')->group(function(){

    Route::get('/view', [categoryController::class, 'CategoryView'])->name('category.view');
    
    Route::post('/store', [categoryController::class, 'CategoryStore'])->name('category.store');
    
    Route::get('/edit/{id}', [CategoryController::class, 'CategoryEdit'])->name('category.edit');
    
    Route::post('/update/{id}', [CategoryController::class, 'CategoryUpdate'])->name('category.update');
    
    Route::get('/delete/{id}', [CategoryController::class, 'CategoryDelete'])->name('category.delete');
    
    // Admin Sub Category All Routes
    
    Route::get('/sub/view', [subCategoryController::class, 'SubCategoryView'])->name('subCategory.view');
    
    Route::post('/sub/store', [subCategoryController::class, 'SubCategoryStore'])->name('subcategory.store');
    
    Route::get('/sub/edit/{id}', [SubCategoryController::class, 'SubCategoryEdit'])->name('subcategory.edit');
    
    Route::post('/update', [SubCategoryController::class, 'SubCategoryUpdate'])->name('subcategory.update');
    
    Route::get('/sub/delete/{id}', [SubCategoryController::class, 'SubCategoryDelete'])->name('subcategory.delete');

    Route::get('/subcategory/ajax/{category_id}', [SubCategoryController::class, 'GetSubCategory']);
    
    
    });

// Admin Slider All Routes 
    
Route::prefix('slider')->group(function(){
    
    Route::get('/view', [sliderController::class, 'SliderView'])->name('slider.view');
    
    Route::post('/store', [SliderController::class, 'SliderStore'])->name('slider.store');
    
    // Route::get('/edit/{id}', [SliderController::class, 'SliderEdit'])->name('slider.edit');
    
    // Route::post('/update', [SliderController::class, 'SliderUpdate'])->name('slider.update');
    
    // Route::get('/delete/{id}', [SliderController::class, 'SliderDelete'])->name('slider.delete');
    
    Route::get('/inactive/{id}', [SliderController::class, 'SliderInactive'])->name('slider.inactive');
    
    Route::get('/active/{id}', [SliderController::class, 'SliderActive'])->name('slider.active');
    
    });


    // Admin Products All Routes 

Route::prefix('product')->group(function(){

    Route::get('/add', [productController::class, 'AddProduct'])->name('product.add');
    
    Route::post('/store', [productController::class, 'StoreProduct'])->name('product-store');
    
    Route::get('/manage', [ProductController::class, 'ManageProduct'])->name('manage-product');
    
    Route::get('/edit/{id}', [ProductController::class, 'EditProduct'])->name('product.edit');
    
    Route::post('/data/update', [ProductController::class, 'ProductDataUpdate'])->name('product-update');
    
    Route::post('/image/update', [ProductController::class, 'MultiImageUpdate'])->name('update-product-image');
    
    Route::post('/thambnail/update', [ProductController::class, 'ThambnailImageUpdate'])->name('update-product-thambnail');
    
    Route::get('/multiimg/delete/{id}', [ProductController::class, 'MultiImageDelete'])->name('product.multiimg.delete');
    
    Route::get('/inactive/{id}', [ProductController::class, 'ProductInactive'])->name('product.inactive');
    
    Route::get('/active/{id}', [ProductController::class, 'ProductActive'])->name('product.active');
    
    Route::get('/delete/{id}', [ProductController::class, 'ProductDelete'])->name('product.delete');
     
    });


    // Admin Order All Routes 

    Route::prefix('orders')->group(function(){

    Route::get('/pending/orders', [OrderController::class, 'PendingOrders'])->name('pending-orders');
    
    Route::get('/pending/orders/details/{order_id}', [OrderController::class, 'PendingOrdersDetails'])->name('pending.order.details');

    Route::get('/confirmed/orders', [OrderController::class, 'ConfirmedOrders'])->name('confirmed-orders');

    Route::get('/processing/orders', [OrderController::class, 'ProcessingOrders'])->name('processing-orders');

    Route::get('/picked/orders', [OrderController::class, 'PickedOrders'])->name('picked-orders');

    Route::get('/shipped/orders', [OrderController::class, 'ShippedOrders'])->name('shipped-orders');

    Route::get('/delivered/orders', [OrderController::class, 'DeliveredOrders'])->name('delivered-orders');

    Route::get('/cancel/orders', [OrderController::class, 'CancelOrders'])->name('cancel-orders');

    // Update Status 
    Route::get('/pending/confirm/{order_id}', [OrderController::class, 'PendingToConfirm'])->name('pending-confirm');

    Route::get('/confirm/processing/{order_id}', [OrderController::class, 'ConfirmToProcessing'])->name('confirm.processing');

    Route::get('/processing/picked/{order_id}', [OrderController::class, 'ProcessingToPicked'])->name('processing.picked');

    Route::get('/picked/shipped/{order_id}', [OrderController::class, 'PickedToShipped'])->name('picked.shipped');

    Route::get('/shipped/delivered/{order_id}', [OrderController::class, 'ShippedToDelivered'])->name('shipped.delivered');

    Route::get('/invoice/download/{order_id}', [OrderController::class, 'AdminInvoiceDownload'])->name('invoice.download');


    
    
    });


        //// Frontend All Routes /////

    // Frontend Product Details Page url 
    Route::get('/product/details/{id}', [homePageController::class, 'ProductDetails']);

    // Frontend Product Tags Page 
    Route::get('/product/tag/{tag}', [homePageController::class, 'TagWiseProduct']); 

    // Frontend SubCategory wise Data
    Route::get('/subcategory/product/{subcat_id}/{slug}', [homePageController::class, 'SubCatWiseProduct']);
    Route::get('/subcategory/product/{subcat_id}', [homePageController::class, 'SubCatWiseeProduct']);

    // Product View Modal with Ajax
    Route::get('/product/view/modal/{id}', [homePageController::class, 'ProductViewAjax']); 

    /// Product Search Route 
    Route::post('/search', [homePageController::class, 'ProductSearch'])->name('product.search');

    // Advance Search Routes 
    Route::post('search-product', [homePageController::class, 'SearchProduct']);


    // Add to Cart Store Data
    Route::post('/cart/data/store/{id}', [CartController::class, 'AddToCart']); 

    // Get Data from mini cart
    Route::get('/product/mini/cart/', [CartController::class, 'AddMiniCart']);

    // Remove mini cart
    Route::get('/minicart/product-remove/{rowId}', [CartController::class, 'RemoveMiniCart']); 

    // Add to Wishlist
    Route::post('/add-to-wishlist/{product_id}', [CartController::class, 'AddToWishlist']); 


    
    Route::group(['prefix'=>'user','middleware' => ['user','auth'],'namespace'=>'User'],function(){

    // Wishlist page
    Route::get('/wishlist', [WishlistController::class, 'ViewWishlist'])->name('wishlist');

    Route::get('/get-wishlist-product', [WishlistController::class, 'GetWishlistProduct']);

    Route::get('/wishlist-remove/{id}', [WishlistController::class, 'RemoveWishlistProduct']); 

    Route::get('/my/orders', [AllUserController::class, 'MyOrders'])->name('my.orders');

    Route::get('/order_details/{order_id}', [AllUserController::class, 'OrderDetails']);

    Route::post('/cash/order', [CashController::class, 'CashOrder'])->name('cash.order');

    Route::get('/invoice_download/{order_id}', [AllUserController::class, 'InvoiceDownload']);

    Route::post('/return/order/{order_id}', [AllUserController::class, 'ReturnOrder'])->name('return.order');

    Route::get('/return/order/list', [AllUserController::class, 'ReturnOrderList'])->name('return.order.list');

    Route::get('/cancel/orders', [AllUserController::class, 'CancelOrders'])->name('cancel.orders');

    /// Order Traking Route 
    Route::post('/order/tracking', [AllUserController::class, 'OrderTraking'])->name('order.tracking');      


    }); 

    // Add to cart | USER
    Route::get('/mycart', [CartPageController::class, 'MyCart'])->name('mycart');

    Route::get('user/get-cart-product', [CartPageController::class, 'GetCartProduct']);

    Route::get('user/cart-remove/{rowId}', [CartPageController::class, 'RemoveCartProduct']);

    Route::get('/cart-increment/{rowId}', [CartPageController::class, 'CartIncrement']);

    Route::get('/cart-decrement/{rowId}', [CartPageController::class, 'CartDecrement']);

    
    // Admin Coupons All Routes 
    Route::prefix('coupons')->group(function(){

    Route::get('/view', [CouponController::class, 'CouponView'])->name('manage-coupon');

    Route::post('/store', [CouponController::class, 'CouponStore'])->name('coupon.store');
    
    
    });

    // Admin Shipping All Routes 
    Route::prefix('shipping')->group(function(){

    // SHIPPING DIVISIONS
    Route::get('/division/view', [ShippingAreaController::class, 'DivisionView'])->name('manage-division');

    Route::post('/division/store', [ShippingAreaController::class, 'DivisionStore'])->name('division.store');
        
    // Ship District 
    Route::get('/district/view', [ShippingAreaController::class, 'DistrictView'])->name('manage-district');

    Route::post('/district/store', [ShippingAreaController::class, 'DistrictStore'])->name('district.store');

    // Ship State 
    Route::get('/state/view', [ShippingAreaController::class, 'StateView'])->name('manage-state');

    Route::post('/state/store', [ShippingAreaController::class, 'StateStore'])->name('state.store');


                
    }); 


    // Admin Reports Routes 
    Route::prefix('reports')->group(function(){

    Route::get('/view', [ReportController::class, 'ReportView'])->name('all-reports');

    Route::post('/search/by/date', [ReportController::class, 'ReportByDate'])->name('search-by-date');

    Route::post('/search/by/month', [ReportController::class, 'ReportByMonth'])->name('search-by-month');

    Route::post('/search/by/year', [ReportController::class, 'ReportByYear'])->name('search-by-year');

    
    
    });



    // Admin Get All User Routes 
    Route::prefix('alluser')->group(function(){

    Route::get('/view', [AdminProfileController::class, 'AllUsers'])->name('all-users');
    
    
    });

    Route::get('/admin/logout', [AdminProfileController::class, 'AdminLogout'])->name('admin.logout');


    // Admin Site Setting Routes 
    Route::prefix('setting')->group(function(){

    Route::get('/site', [SiteSettingController::class, 'SiteSetting'])->name('site.setting');

    Route::post('/site/update', [SiteSettingController::class, 'SiteSettingUpdate'])->name('update.sitesetting');
    
    Route::get('/seo', [SiteSettingController::class, 'SeoSetting'])->name('seo.setting'); 

    Route::post('/seo/update', [SiteSettingController::class, 'SeoSettingUpdate'])->name('update.seosetting');
    
    });


    // Admin Return Order Routes 
    Route::prefix('return')->group(function(){

    Route::get('/admin/request', [ReturnController::class, 'ReturnRequest'])->name('return.request');

    Route::get('/admin/return/approve/{order_id}', [ReturnController::class, 'ReturnRequestApprove'])->name('return.approve');

    Route::get('/admin/all/request', [ReturnController::class, 'ReturnAllRequest'])->name('all.request');
    
    });

    // Admin Manage Review Routes 
    Route::prefix('review')->group(function(){

    Route::get('/pending', [ReviewController::class, 'PendingReview'])->name('pending.review');
    
    Route::get('/admin/approve/{id}', [ReviewController::class, 'ReviewApprove'])->name('review.approve');
    
    Route::get('/publish', [ReviewController::class, 'PublishReview'])->name('publish.review');

    Route::get('/delete/{id}', [ReviewController::class, 'DeleteReview'])->name('delete.review');
    
    });

    // Admin Manage Stock Routes 
    Route::prefix('stock')->group(function(){

    Route::get('/product', [ProductController::class, 'ProductStock'])->name('product.stock');
    
    
    });


    // Admin User Role Routes 
    Route::prefix('adminuserrole')->group(function(){

    Route::get('/all', [AdminUserController::class, 'AllAdminRole'])->name('all.admin.user');

    Route::get('/add', [AdminUserController::class, 'AddAdminRole'])->name('add.admin');

    Route::post('/store', [AdminUserController::class, 'StoreAdminRole'])->name('admin.user.store');

    Route::get('/edit/{id}', [AdminUserController::class, 'EditAdminRole'])->name('edit.admin.user');

    Route::post('/update', [AdminUserController::class, 'UpdateAdminRole'])->name('admin.user.update');
    
    Route::get('/delete/{id}', [AdminUserController::class, 'DeleteAdminRole'])->name('delete.admin.user');
    
    });




    /// Frontend Product Review Routes

    Route::post('/review/store', [ReviewController::class, 'ReviewStore'])->name('review.store');







    // Frontend Coupon Option
    Route::post('/coupon-apply', [CartController::class, 'CouponApply']);

    Route::get('/coupon-calculation', [CartController::class, 'CouponCalculation']);

    Route::get('/coupon-remove', [CartController::class, 'CouponRemove']);
   

    // Checkout Routes 
    Route::get('/checkout', [CartController::class, 'CheckoutCreate'])->name('checkout');

    Route::get('/district-get/ajax/{division_id}', [CheckoutController::class, 'DistrictGetAjax']);

    Route::get('/state-get/ajax/{district_id}', [CheckoutController::class, 'StateGetAjax']);

    Route::post('/checkout/store', [CheckoutController::class, 'CheckoutStore'])->name('checkout.store');


    // 


    

    Route::get('/user/logout', [homePageController::class, 'UserLogout'])->name('user.logout');