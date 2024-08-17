<?php

namespace App\Http\Controllers;

use App\Events\Addsubject;
use App\Models\Advice;
use App\Models\FavouriteAdvice;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use PhpParser\Node\Stmt\Catch_;
use Pusher\Pusher;

use function Laravel\Prompts\error;
use function PHPUnit\Framework\isEmpty;

class AdviceController extends Controller
{

    public function addadvice(Request $request){

        $request->validate([
         'description'=>['required','string'],
         'category_id'=>['required']
        ]);


        $advice=Advice::create([
'description'=>$request->description,
'category_id'=>$request->category_id
        ]);

if(!$advice){

return response()->json([
    'message'=>'error',
]);

}
event(new Addsubject('admin added new advice '));
return response()->json([
'message'=>'advice added succesfully',
'data'=>$advice
]);
    }

    public function deleteadvice(Request $request){

$data= Advice::where('id',$request->id)->delete();

if($data){
return response()->json([
    'message'=>'advice deleted ok'
]);

}
else{

return response()->json([
    'message'=>'no advice found'
]);

}
event(new Addsubject('admin delete advice '));
    }


public function getalladvicebycategory(Request $request){
$request->validate([
    'category_id'=>'required'
]);
    $get=Advice::where('category_id',$request->category_id)->get();

if(!$get){
    return response()->json([
        'message'=>'no advice avilable',

        ]);

}


    return response()->json([
        'message'=>'this is all advice for this category',
        'data'=>$get
        ]);
        }


        public function searchadvice(Request $request){

            $search=Advice::where('description','like','%'.$request->description.'%')->get();


            if(!$search){
            return response()->json([
              'message'=>$this-> errors()->message(),
             ]);

            }
            return response()->json([
                'message'=>'search succesfully',
                'data'=>$search
            ]);
        }

         public function showadvice($id){


       $show=Advice::query()->find($id);

       if(!$show){

        return response()->json([
            'data'=>null,
            'message'=>'advice noot found']);

       }

       return response()->json([
      'data'=>$show,
      'message'=>'this is advice detal'


]);

        }


        public function add(Request $request){
        $request->validate([
       'user_id'=>'required',
      'advice_id'=>'required'
]);


$fav=FavouriteAdvice::create([
       'user_id'=>$request->user_id,
      'advice_id'=>$request->advice_id
]);

 return response()->json([
    'data'=>$fav,
    'message'=>'favourite advice added succesful'
 ]);
}

public function removeFavouriteAdvice(Request $request)
{
    $userId = $request->user_id;
    $adviceId = $request->advice_id;


    $favouriteAdvice = FavouriteAdvice::where('user_id', $userId)
                                      ->where('advice_id', $adviceId)
                                      ->first();

    if (!$favouriteAdvice) {
        return response()->json(['error' => 'Favourite advice not found'], 404);
    }


    $favouriteAdvice->delete();

    return response()->json(['success' => 'Favourite advice removed successfully']);
}


          public function getFavoriteAdvices(Request $request)
        {
            $user = User::find($request->id);

            if (!$user) {
                return response()->json(['error' => 'User not found'], 404);
            }

            $favoriteAdvices = $user->favouriteadvice->makeHidden('user_id');

            return response()->json(['favoriteAdvices' => $favoriteAdvices]);
        }
    }
