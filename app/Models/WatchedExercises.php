<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WatchedExercises extends Model
{
    use HasFactory;

    public function user(){
        return $this->belongsTo(User::class,'id','id');
    }
    
     public function day_exercises(){
        return $this->belongsTo(Day_exercise::class,'id','id');
    }

     public function exe_cats(){
        return $this->belongsTo(exe_cat::class,'id','id');
    }
}
