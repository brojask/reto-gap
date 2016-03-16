<?php

/*
|--------------------------------------------------------------------------
| Routes File
|--------------------------------------------------------------------------
|
| Here is where you will register all of the routes in an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

/*Route::get('/', function () {
    return view('welcome');
});*/

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| This route group applies the "web" middleware group to every route
| it contains. The "web" middleware group is defined in your HTTP
| kernel and includes session state, CSRF protection, and more.
|
*/

Route::group(['middleware' => ['web']], function () {
    //
});

Route::group(['prefix' => 'services'], function(){
	

	Route::get('articles/stores/{id}', 'ArticlesController@getStores')->where('id', '[0-9]+');
	Route::resource('stores', 'StoresController');
	Route::resource('articles', 'ArticlesController');

	
	#Route::resource('list-articles', 'ArticlesController@listArticles');
});

Route::resource('articles', 'ArticlesController');
Route::get('/', 'ArticlesController@listArticles');
Route::get('articles/edit/{id}', 'ArticlesController@editArticles');

Route::resource('stores', 'StoresController');
Route::get('/list-stores', 'StoresController@listStores');
Route::get('stores/edit/{id}', 'StoresController@editStores');
