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
       // create_dahya_weeks_table
    Schema::create('dahya_weeks', function (Blueprint $table) {
        $table->id();
        $table->string('month');
        $table->unsignedTinyInteger('week_number'); // 1, 2, 3, 4
        $table->date('date');
        $table->timestamps();
    });

        // create_dahya_entries_table
    Schema::create('dahya_entries', function (Blueprint $table) {
        $table->id();
        $table->foreignId('dahya_week_id')
            ->constrained('dahya_weeks')
            ->cascadeOnDelete();
        $table->foreignId('fog_user_id')
            ->constrained('fog_users')
            ->cascadeOnDelete();
        $table->time('duration')->nullable(); // MM:SS entered per user
        $table->timestamps();
    });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('dahyas');
    }
};
