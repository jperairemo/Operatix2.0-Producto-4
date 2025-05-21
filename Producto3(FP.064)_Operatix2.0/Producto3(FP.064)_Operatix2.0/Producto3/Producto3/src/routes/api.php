<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ApiController;
use App\Http\Controllers\HotelController;




// Ruta API para obtener resumen de reservas por zona
Route::get('/reservas/zonas', [ApiController::class, 'reservasPorZona']);
Route::get('/hoteles', [HotelController::class, 'index']);
