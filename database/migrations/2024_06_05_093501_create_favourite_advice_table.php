<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('favourite_advice', function (Blueprint $table) {
            $table->id();
      $table->foreignId('user_id')->constrained('users')->cascadeOnDelete();

      $table->foreignId('advice_id')->constrained('advice')->cascadeOnDelete();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('favourite_advice');
    }
};
