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
        Schema::table('tests', function (Blueprint $table) {
            $table->dropForeign(['medanya_id']);
            $table->dropColumn('medanya_id');

            $table->foreignId('leyaqa_id')
                ->after('users_id')
                ->constrained('leyaqas')
                ->cascadeOnDelete();
        });
    }

    /**
     * Reverse the migrations.
     */
     public function down(): void
    {
        Schema::table('tests', function (Blueprint $table) {
            $table->dropForeign(['leyaqa_id']);
            $table->dropColumn('leyaqa_id');

            $table->foreignId('medanya_id')
                ->after('users_id')
                ->constrained('medanyas')
                ->cascadeOnDelete();
        });
    }
};
