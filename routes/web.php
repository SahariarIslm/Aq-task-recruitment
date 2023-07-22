<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PacketDataController;
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

Route::get('/process-packet-data/{packet}', [PacketDataController::class, 'processPacketData']);
Route::get('/process-packet-data-show', [PacketDataController::class, 'processPacketDataShow']);
Route::get('/process-multiphase-packet-data/{packet}', [PacketDataController::class, 'processMultiPhasePacketData']);
Route::get('/process-multiphase-packet-data-show', [PacketDataController::class, 'processMultiPhasePacketDataShow']);
