<?php

use App\Http\Controllers\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DoctorController;
use App\Http\Controllers\DoctorScheduleController;
use App\Http\Controllers\SpecializationController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\HospitalController;
use App\Http\Controllers\UserController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    
});


Route::middleware('auth:sanctum')->group(function () {
    // Add more routes that require authentication here
    Route::get('users', [UserController::class, 'index']);
});

Route::post('login', [AuthController::class, 'login']);


Route::apiResource('doctors', DoctorController::class);
Route::apiResource('doctor_schedules', DoctorScheduleController::class);
Route::apiResource('specializations', SpecializationController::class);
Route::apiResource('orders', OrderController::class);
Route::apiResource('hospitals', HospitalController::class);

Route::post('/orders/payment/create', [OrderController::class, 'createPaymentLink']);
Route::post('/orders/payment/callback', [OrderController::class, 'midtransCallback']);
