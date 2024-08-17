<?php

namespace App\Http\Controllers;

use App\Events\Addsubject;
use App\Models\Day;
use App\Models\FavouriteFood;
use App\Models\Food;
use App\Models\Recipe;
use App\Models\User;
use Exception;
use Illuminate\Database\Eloquent\Casts\Json;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use PHPUnit\Framework\Constraint\IsEmpty;

use function PHPUnit\Framework\isEmpty;

class dietController extends Controller
{
    public function addrecipe(Request $request) {
        $request->validate([
            'time' => ['required', 'string'],
            'description' => ['required', 'string'],
            'day_id' => ['required'],
        ]);

        $input = $request->all();

        if ($request->hasFile('image')) {
            $destination_path = 'images/recipes';  // مسار الحفظ في مجلد public
            $image = $request->file('image');
            $image_name = time() . '_' . $image->getClientOriginalName(); // لإعطاء اسم فريد للملف
            $image->move(public_path($destination_path), $image_name); // نقل الملف إلى مجلد public
            $input['image'] = $destination_path . '/' . $image_name; // حفظ المسار الكامل للصورة
        }

        $food = Recipe::create($input);

        event(new Addsubject('admin added a new recipe'));

        // تضمين رابط الصورة في الاستجابة
        $food->image_url = $food->image ? url($food->image) : null;

        return response()->json([
            'message' => 'add recipe successfully',
            'data' => $food,
            200
        ]);
    }


public function deleterecipe(Request $request)
{

    $delete=Recipe::where('id',$request->id)
    ->where('day_id',$request->day_id)->delete();
  if(!$delete){

    return response()->json([

'message'=>'this recipe not found'
    ]);}

return response()->json([
'message'=>'recipe deleted succes'

]);
  }


public function getallrecipebyday(Request $request){


try{
$get=Recipe::where('day_id',$request->day_id)->get();


return response()->json([
'message'=>'this is all recipe for this day',
'data'=>$get
]);
}
catch(\Exception $ex){
    return response()->json([
          'message'=>$ex->getMessage()]);

      }
    }
public function searchrecipe(Request $request){
try{
$search=Recipe::where('description','like','%'.$request->description.'%')->get();




return response()->json([
'message'=>'search succesfully',
'data'=>$search
]);
}
catch(Exception $ex){
    return response()->json([
        'message'=>$ex->getMessage(),

        ]);
}
}

public function addfavrecipe(Request $request){

$request->validate([
    'user_id'=>'required',
    'food_id'=>'required',



]);
try{
$favo=FavouriteFood::create([
     'user_id'=>$request->user_id,
   'food_id'=>$request->food_id,
    
 ]);
 return response()->json([
      'message'=>'favourite added ok',
    'data'=>$favo
  ]);
}
  catch(\Exception $ex){
return response()->json([
      'message'=>$ex->getMessage()]);

  }
}

public function deletefav(Request $request,$food){

try{

$user=User::find($request->id);
$user->Favourites->delete();


return response()->json([
    'message'=>'favourite adeleted ok',

]);
}
catch(\Exception $ex){
return response()->json([
    'message'=>$ex->getMessage()]);

}


}


   public function getuserfavourite(Request $request){

    try{
$user=User::find($request->id);
// if($user->id!=$request->user_id){
//     return response()->json([
//         'message'=>'there is an error'
//     ]);
// }

$list=$user->Favourites->toArray();
return response()->json([
    'message'=>'this is all favourite',
    'data'=>$list
]);
    }
    catch(Exception $ex){
        return response()->json([
            'message'=>$ex->getMessage(),]);


    }
   }
//$listfavings = ::findOrFail($id)->favorites;
// $user=User::find($id);
// $fav=$user->FavouriteFoods;






// return response()->json([
//         'message'=>'this is all favourite',
//                'data'=>$fav]);
public function showRecipe(Request $request)
{
    $show = Recipe::with('day.diet_category')->where('id', $request->id)->firstOrFail();

    $recipeData = [
        'id' => $show->id,
        'time' => $show->time,
        'description' => $show->description,
        'image' => $show->image,
        'day_id' => $show->day_id,
        'created_at' => $show->created_at,
        'updated_at' => $show->updated_at,
    ];

    $data = [];
    $data['recipe'] = $recipeData;
    $data['cat']=$show->day->diet_category->name;

    return response()->json([
        'data' => $data,
        'message' => 'this is food detail'
    ]);
}

// if(!$show){
//      return response()->json([
//         'data'=>null,
//         'message'=>'recipe not found']);
//    }







     public function showdayforcategory(Request $request){

try{
$show=Day::where('diet_category_id',$request->diet_category_id)->select('day_num')->get();
return response()->json([
    'message'=>'this is days',
    'data'=>$show
]);}
catch(Exception $ex){
return response()->json([
    'message'=>$ex->getMessage()
]);

}


}



     }














































