<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Event;
use Illuminate\Support\Facades\Queue;
use App\Events\Addsubject;
use App\Events\ExerciseReminder;
use App\Jobs\SendReminderJob;
use App\Models\Category_Exercise;
use App\Models\WatchedExercises;
use App\Models\Day_exercise;
use App\Models\Exercise;
use App\Models\exe_cat;
use App\Models\User;
use App\Models\Reminder;
use Carbon\Carbon;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use SendReminderJob as GlobalSendReminderJob;

class ExercisesController extends Controller
{
    public function create(Request $request, Category_Exercise $category_Exercise){

        $data=$request->validate([
            'name'=>'required|max:75|min:3',
            'json'=>'required|file',
            'time'=>'required',
            'description'=>'required|max:500|min:3',
        ]);

        if($request->hasFile('json')){
            $json=Storage::disk('public')->put('/',$request->file('json'));
        }

        $exercise=Exercise::create([
            'name'=>$request->name,
            'json'=>$json ??=null,
            'time'=>$request->time,
            'description'=>$request->description,
           // 'Category_id'=>$request->Category_id,
           // 'id_day'=>$request->id_day
        ]);

        event( new Addsubject('admin added a new exercise category '));

      return response()->json([
       'message'=>'exercise added successfully',
       'data'=>$exercise,
    ]);
    }  public function scheduleReminder(Request $request)
    {

        $request->validate([
            'time' => 'required|date_format:H:i',
            'message' => 'required|string'
        ]);

        $now = Carbon::now();


        $scheduledTime = Carbon::createFromFormat('H:i', $request->input('time'))
                                ->setDate($now->year, $now->month, $now->day);

        // إذا كان الوقت المحدد في الماضي، أضف 24 ساعة (يوم واحد)
        if ($scheduledTime->lessThan($now)) {
            $scheduledTime->addDay();
        }

        $delay = $scheduledTime->diffInSeconds($now);
        SendReminderJob::dispatch($request->input('message'))->delay(now()->addSeconds($delay));

        return response()->json(['status' => 'ronaldo is your uncle!']);
    }


 public function markExerciseAsWatched(Request $request)
    {
        $user = User::findOrFail($request->id);
        $dayExercise = Day_exercise::findOrFail($request->dayExerciseId);
        $category = exe_cat::findOrFail($request->categoryId);

        $user->watchedExercises()->attach($dayExercise->id, [
            'day_exercise_id' => $dayExercise->id,
            'exe_cat_id' => $category->id,
        ]);

        return response()->json(['message' => 'Exercise marked as watched successfully']);
    }



public function getPercentCompleteExercise(Request $request, User $user_id, Day_exercise $day_exercise_id, exe_cat $exe_cat_id, Exercise $exercise_id)
{
$array=[];
 $totalExercise=Day_exercise::where('id_day',$day_exercise_id->id_day)->get();
     foreach($totalExercise as $value){
        $value->load('exe_day.Category_Exercise');
        if($value ['exe_day']['Category_Exercise'][0]['id_cat']== $exe_cat_id->id_cat){

        array_push($array,$value);
        }

    }

//dd($totalExercise->first()['exe_day']['Category_Exercise'][0]['id_cat']);
 $totalExercises = count($array);


$watchedExercises = WatchedExercises::where('user_id', $user_id->id)
    ->where('day_exercise_id', $day_exercise_id->id)
    ->where('exe_cat_id', $exe_cat_id->id)
    ->count();

    $percentComplete = ( $totalExercises > 0) ? ($watchedExercises /$totalExercises) * 100 : 0;

    return response()->json([
        'total_exercises' => $totalExercises,
        'watched_exercises' => $watchedExercises,
        'percent_complete' => $percentComplete
    ]);

}
public function delete_exe(Request $request){

$delete=Exercise::where('id',$request->id)->delete();

if($delete){
return response()->json([
    'message'=>'exercise deleted succesfully',

]);
}

else{
    return response()->json([
        'message'=>'no exercise found']);

}
}

}



