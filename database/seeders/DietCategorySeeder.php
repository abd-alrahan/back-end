<?php

namespace Database\Seeders;

use App\Models\Diet_category;
use App\Models\Food_category;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DietCategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

    {
        Diet_category::unguard();
        $jsonpath=public_path('/sql/diet_categories (1).sql');
        DB::unprepared(file_get_contents($jsonpath));
   }
}
}
