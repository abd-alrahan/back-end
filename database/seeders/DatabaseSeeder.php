<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
      $this->call([
        AdminSeeder::class,
        ExerciseSeeder::class,

        CategoryExerciseSeeder::class,
        AdviceCategorySeeder::class,
        DietCategorySeeder::class,
        DaysSeeder::class,
        DayexesSeeder::class,
        day_exercisesSeeder::class,

        DietCategorySeeder::class,

         ExeCatSeeder::class,
        FoodCategorySeeder::class,
        RecipeSeeder::class
      ]);
    }
}
