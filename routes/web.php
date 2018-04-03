<?php

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

Route::get('/', function () {
    $name = 'Simon';
    $age = 31;
    $tasks = [
        'Go to store',
        'call me',
        'dfjdfdkfd'
    ];
    return view('welcome', compact('name', 'age', 'tasks'));
});
