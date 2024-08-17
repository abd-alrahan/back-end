<?php

namespace Database\Seeders;

use App\Models\Day_exercise;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class day_exercisesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
       public function run(): void
    {
        {
   Day_exercise::unguard();
         $jsonpath=public_path('/sql/day_exercises.sql');
         DB::unprepared(file_get_contents($jsonpath));

    }}
}
