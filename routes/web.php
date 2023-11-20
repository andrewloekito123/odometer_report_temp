<?php

use App\Http\Controllers\NewOdometerController;
use App\Http\Controllers\OdometerController;
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

Route::get('/', function () {
    return redirect('/index');
})->name('index');
Route::get('/index', [OdometerController::class,'viewIndex']);
Route::post('/index/status_change', [OdometerController::class, 'updateStatus'])->name('status_change');
Route::post('/index/in_out_change', [OdometerController::class, 'updateInOut'])->name('in_out_change');
Route::get('/newOdometer', [NewOdometerController::class, 'viewPage'])->name('newOdometer');
Route::post('/newOdometer/newOdometer', [NewOdometerController::class, 'newOdometer'])->name('InsertNewOdometer');
