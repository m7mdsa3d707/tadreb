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
        Schema::create('workout_scores', function (Blueprint $table) {
            $table->id();
            $table->string('workout_type'); // pushup, situp, running
            $table->integer('min_age');
            $table->integer('max_age');
            $table->float('score_value');
            $table->float('percentage');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('workout_scores');
    }
};
