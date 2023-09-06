<?php

use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ShopController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/



Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__ . '/auth.php';

Route::view('/', 'public.home');



Route::get('/', [HomeController::class, 'Index'])->name('home');
Route::get('/shop', [ShopController::class, 'Index'])->name('shop');
Route::get('/shop/{id}', [ShopController::class, 'Detail'])->name('detail');
Route::view('/contact', 'public.contact')->name('contact');
Route::view('/about', 'pulic.about')->name('about');

Route::middleware(['auth', 'role.admin'])->group(function () {
    Route::get('/admin', function () {
        return view('admin.index');
    })->name('admindashboard');
    Route::controller(UserController::class)->group(function () {
        Route::get('/admin/user', 'Index')->name('alluser');
        Route::get('/admin/user/add-user', 'AddUser')->name('adduser');
        Route::post('/admin/user/store-user', 'StoreUser')->name('storeuser');
        Route::get('/admin/user/edit-user/{id}', 'EditUser')->name('edituser');
        Route::post('/admin/user/store-user', 'StoreUser')->name('storeuser');
        Route::get('/admin/user/delete-user/{id}', 'DeleteUser')->name('deleteuser');
    });
    Route::controller(ProductController::class)->group(function () {
        Route::get('/admin/product', 'Index')->name('allproduct');
        Route::get('/admin/product/add-product', 'AddProduct')->name('addproduct');
        Route::post('/admin/product/store-product', 'StoreProduct')->name('storeproduct');
        Route::get('/admin/product/edit-product/{id}', 'EditProduct')->name('editproduct');
        Route::post('/admin/product/update-product', 'UpdateProduct')->name('updateproduct');
        Route::get('/admin/product/delete-product/{id}', 'DeleteProduct')->name('deleteproduct');
    });
    Route::controller(CategoryController::class)->group(function () {
        Route::get('/admin/category', 'Index')->name('allcategory');
        Route::get('/admin/category/add-category', 'AddCategory')->name('addcategory');
        Route::post('/admin/category/store-category', 'StoreCategory')->name('storecategory');
        Route::get('/admin/category/edit-category/{id}', 'EditCategory')->name('editcategory');
        Route::post('/admin/category/update-category', 'UpdateCategory')->name('updatecategory');
        Route::get('/admin/category/delete-category/{id}', 'DeleteCategory')->name('deletecategory');
    });
});
