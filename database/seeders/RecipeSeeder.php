<?php

namespace Database\Seeders;

use App\Models\Recipe;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RecipeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
         Recipe::unguard();
         $jsonpath=public_path('/sql/recipesfinal.sql');
        DB::unprepared(file_get_contents($jsonpath));
   }
}
