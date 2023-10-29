<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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
    return $request->user();
});
Route::group(['prefix'=>'v1','middleware'=>'cors'],function(){
    Route::resource('imagenes','\App\Http\Controllers\ImagenesController');

});
Route::get('/search', 'SearchController@search');
Route::get('imagenes/{id}/edit', 'ImagenesController@edit');
Route::get('imagenes/{id}', 'ImagenesController@show');
Route::delete('imagenes/{id}', 'ImagenesController@destroy');