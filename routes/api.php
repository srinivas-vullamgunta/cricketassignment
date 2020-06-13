<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::get('/teams', 'TeamsController@getTeams');
Route::get('/team/{id}', 'TeamsController@getPlayersByTeam');
Route::get('/matches', 'MatchesController@getMatches');
Route::get('/points', 'MatchesController@getPoints');

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
}); 



