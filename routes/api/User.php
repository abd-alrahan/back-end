<?php

use App\Http\Controllers\AdviceController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Category_adviceController;
use App\Http\Controllers\Category_dietController;
use App\Http\Controllers\Category_foodController;
use App\Http\Controllers\dietController;
use App\Http\Controllers\ExercisesController;
use App\Http\Controllers\Exercises_CategoryController;
use App\Http\Controllers\FoodController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\ReminderController;
use App\Mail\MyTestEmail;
use App\Models\Food_category;
use Illuminate\Support\Facades\AuthKit;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Auth;
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

// $code=rand(100000,999999);
// Mail::to('alsaadiabdalrahman5@gmail.com')->send(new MyTestEmail($code));
Route::post('user/forgetpass',[AuthController::class,'userforgetpassword']);
Route::post('user/checkpass',[AuthController::class,'usercheckpassword']);
Route::post('user/reset',[AuthController::class,'userResetpassword']);
Route::post('user/register',[AuthController::class,'userRegister']);
Route::post('user/login',[AuthController::class, 'userLogin']);
Route::group( ['prefix' => 'user','middleware' => ['auth:user-api','scopes:user'] ],function(){
   // authenticated staff routes here
   Route::post('logout',[AuthController::class, 'userLogout']);
});



//diet routes
Route::get('showrecipe',[dietController::class,'getallrecipebyday']);
Route::post('searchrecipe',[dietController::class,'searchrecipe']);
Route::get('showday',[dietController::class,'showdayforcategory']);
//Route::post('addfav',[dietController::class,'addfavrecipe']);
//Route::post('deletefav\{id}',[dietController::class,'deletefav']);
// Route::get('showallfav',[FoodController::class,'getuserfavourite']);
 Route::get('showrecipedetal',[dietController::class,'showRecipe']);
Route::get('allcategorydiet',[Category_dietController::class,'gatallcategory']);
//advice routes
Route::get('alladvicecategory',[Category_adviceController::class,'gatallcategory']);
Route::get('showadvice',[AdviceController::class,'getalladvicebycategory']);
Route::post('searchadvice',[AdviceController::class,'searchadvice']);
Route::get('showadvicedetal/{id}',[AdviceController::class,'showadvice']);
Route::post('addfavadvice',[AdviceController::class,'add']);
Route::post('deletefav',[AdviceController::class,'removeFavouriteAdvice']);
Route::get('user_favorite-advices',[AdviceController::class,'getFavoriteAdvices']);

Route::post('reminder', [ExercisesController::class, 'scheduleReminder']);

Route::post('markExerciseAsWatched', [ExercisesController::class, 'markExerciseAsWatched']);
Route::get('getPercentCompleteExercise/{user_id}/{day_exercise_id}/{exe_cat_id}', [ExercisesController::class, 'getPercentCompleteExercise']);
Route::get('gatallcategory',[Exercises_CategoryController::class,'gatallcategory']);
Route::get('gatcategory',[Exercises_CategoryController::class,'getCategory']);
