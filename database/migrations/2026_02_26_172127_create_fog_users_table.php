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
        Schema::create('fog_users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('role')->default('جندى');
            $table->integer('age');
            $table->foreignId('groub')->constrained('groubs');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('fog_users');
    }
};
