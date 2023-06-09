<?php

use App\Http\Controllers\AccountController;
use App\Http\Controllers\AccountEmployeeController;
use App\Http\Controllers\artikelController;
use App\Http\Controllers\ArtikelEmployeeController;
use App\Http\Controllers\BankBookEmployeeController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DashboardEmployeeController;
use App\Http\Controllers\DonorNoteController;
use App\Http\Controllers\DonorNoteEmployeeController;
use App\Http\Controllers\DonorSubmissionController;
use App\Http\Controllers\DonorSubmissionEmployeeController;
use App\Http\Controllers\EventController;
use App\Http\Controllers\EventEmployeeController;
use App\Http\Controllers\FaqController;
use App\Http\Controllers\LocationController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use Illuminate\Support\Facades\Route;

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

Route::get('/', [LoginController::class, 'home']);

Route::get('/dashboard', function () {
    return redirect('/');
});

Route::middleware(['user_not_login'])->group(function () {
    {
        Route::get('/login', [LoginController::class, 'index'])->name('login');
        Route::post('/login', [LoginController::class, 'authenticate']);
        Route::get('/register', [RegisterController::class, 'index']);
        Route::post('/register', [RegisterController::class, 'store']);
    }
});

Route::middleware(['auth:donator'])->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index']);
    Route::get('/location', [LocationController::class, 'index']);
    Route::get('/event', [EventController::class, 'index']);
    Route::get('/donor', [DonorNoteController::class, 'index']);
    Route::post('/donor', [DonorNoteController::class, 'store']);
    Route::get('/submission', [DonorSubmissionController::class, 'index']);
    Route::post('/submission', [DonorSubmissionController::class, 'store']);
    Route::get('/artikel', [artikelController::class, 'index']);
    Route::get('/account', [AccountController::class, 'index']);
    Route::put('/updatePhoto', [AccountController::class, 'updatePhoto']);
    Route::put('/updateIdentity', [AccountController::class, 'updateIdentity']);
    Route::put('/updateContact', [AccountController::class, 'updateContact']);
    Route::put('/updatePassword', [AccountController::class, 'updatePassword']);
    Route::get('/faq', [FaqController::class, 'index']);
});

Route::middleware(['auth:employee'])->group(function () {
    Route::get('/_dashboard', [DashboardEmployeeController::class, 'index']);
    Route::get('/_bank', [BankBookEmployeeController::class, 'index']);
    Route::put('/_bank', [BankBookEmployeeController::class, 'updateStock']);
    Route::resource('/_donor', DonorNoteEmployeeController::class)->except(['create', 'store', 'show']);
    Route::get('/donor/_data', [DonorNoteEmployeeController::class, 'data'])->name('donor.data');
    Route::resource('/_submission', DonorSubmissionEmployeeController::class)->except(['create', 'store', 'show']);;
    Route::get('/submission/_data', [DonorSubmissionEmployeeController::class, 'data'])->name('submission.data');
    Route::resource('/_event', EventEmployeeController::class)->except('show');;
    Route::get('/event/_data', [EventEmployeeController::class, 'data'])->name('event.data');
    Route::resource('/_artikel', ArtikelEmployeeController::class)->except('show');;
    Route::get('/artikel/_data', [ArtikelEmployeeController::class, 'data'])->name('artikel.data');
    Route::get('/_account', [AccountEmployeeController::class, 'index']);
    Route::put('/_updateIdentity', [AccountEmployeeController::class, 'updateIdentity']);
    Route::put('/_updateContact', [AccountEmployeeController::class, 'updateContact']);
    Route::put('/_updatePassword', [AccountEmployeeController::class, 'updatePassword']);
    Route::get('/_faq', [FaqController::class, 'index']);
    route::get('/adminFAQ', [FaqController::class, 'adminFAQ']);
    route::get('/tambah-faq', [FaqController::class, 'tambahFAQ']);
    route::get('/edit-faq/{id}', [FaqController::class, 'editFAQ']);
    route::put('/edit-faq/{id}', [FaqController::class, 'updateFAQ']);
    route::post('/tambah-faq', [FaqController::class, 'insertFAQ']);
    route::delete('/adminFAQ/{id}', [FaqController::class, 'deleteFAQ']);
});

Route::middleware(['auth:donator,employee'])->group(function () {
    Route::post('/logout', [LoginController::class, 'logout']);
});



