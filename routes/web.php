<?php

use App\Http\Controllers\BarangController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DetailController;
use App\Http\Controllers\KategoriController;
use App\Http\Controllers\LevelController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\PenjualanController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', [LoginController::class, 'index'])->name('/');
Route::post('postLogin', [LoginController::class, 'postLogin'])->name('postLogin');
Route::get('aksiLogout', [LoginController::class, 'aksiLogout'])->name('aksiLogout');
Route::get('dashboard', [DashboardController::class, 'index'])->name('dashboard');


Route::middleware(['auth', 'Administrator'])->group(function () {
Route::resource('user', UserController::class);
Route::resource('level', LevelController::class);
Route::resource('kategori', KategoriController::class);
Route::resource('barang', BarangController::class);
});
Route::resource('penjualan', PenjualanController::class);
Route::resource('barang', BarangController::class);
Route::get('/detail/{id}', [DetailController::class, 'show'])->name('detail.show');
Route::get('detail', [DetailController::class, 'index'])->name('detail.index');
