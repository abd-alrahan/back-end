<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AdviceFavourite extends Model
{
    use HasFactory;
    protected $fillable=['user_id','advice_id'];


    public function user(){

        return $this->belongsTo(User::class);
    }

    public function advice(){

        return $this->belongsTo(Advice::class);
    }
}


