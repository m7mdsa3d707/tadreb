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
        Schema::dropIfExists('fog_users');
        Schema::create('fog_users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('role')->default('جندى');
            $table->integer('age');
            $table->foreignId('groub_id')->constrained('groubs');
            $table->foreignId('medanya_id')->constrained('medanyas');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('users', function (Blueprint $table) {
            //
        });
    }
};
