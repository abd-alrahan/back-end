<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Diet_category extends Model
{
    use HasFactory;
    protected $fillable=['name','image'];


public function day(){

    return $this->hasMany(Day::class);
}

public function recipe(){

    return $this->hasMany(Recipe::class);
}

}
