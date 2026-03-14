<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\WorkoutScore;

class WorkoutScoreSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [

            // pushup - age below 26
            ['workout_type' => 'situp', 'min_age' => 18, 'max_age' => 26, 'score_value' => 35, 'percentage' => 10],
            ['workout_type' => 'situp', 'min_age' => 18, 'max_age' => 26, 'score_value' => 40, 'percentage' => 20],
            ['workout_type' => 'situp', 'min_age' => 18, 'max_age' => 26, 'score_value' => 45, 'percentage' => 30],
            ['workout_type' => 'situp', 'min_age' => 18, 'max_age' => 26, 'score_value' => 50, 'percentage' => 40],
            ['workout_type' => 'situp', 'min_age' => 18, 'max_age' => 26, 'score_value' => 55, 'percentage' => 50],
            ['workout_type' => 'situp', 'min_age' => 18, 'max_age' => 26, 'score_value' => 60, 'percentage' => 60],
            ['workout_type' => 'situp', 'min_age' => 18, 'max_age' => 26, 'score_value' => 65, 'percentage' => 70],
            ['workout_type' => 'situp', 'min_age' => 18, 'max_age' => 26, 'score_value' => 70, 'percentage' => 80],
            ['workout_type' => 'situp', 'min_age' => 18, 'max_age' => 26, 'score_value' => 75, 'percentage' => 90],
            ['workout_type' => 'situp', 'min_age' => 18, 'max_age' => 26, 'score_value' => 80, 'percentage' => 100],

            ['workout_type' => 'situp', 'min_age' => 27, 'max_age' => 31, 'score_value' => 30, 'percentage' => 10],
            ['workout_type' => 'situp', 'min_age' => 27, 'max_age' => 31, 'score_value' => 35, 'percentage' => 20],
            ['workout_type' => 'situp', 'min_age' => 27, 'max_age' => 31, 'score_value' => 40, 'percentage' => 30],
            ['workout_type' => 'situp', 'min_age' => 27, 'max_age' => 31, 'score_value' => 45, 'percentage' => 40],
            ['workout_type' => 'situp', 'min_age' => 27, 'max_age' => 31, 'score_value' => 50, 'percentage' => 50],
            ['workout_type' => 'situp', 'min_age' => 27, 'max_age' => 31, 'score_value' => 55, 'percentage' => 60],
            ['workout_type' => 'situp', 'min_age' => 27, 'max_age' => 31, 'score_value' => 60, 'percentage' => 70],
            ['workout_type' => 'situp', 'min_age' => 27, 'max_age' => 31, 'score_value' => 65, 'percentage' => 80],
            ['workout_type' => 'situp', 'min_age' => 27, 'max_age' => 31, 'score_value' => 70, 'percentage' => 90],
            ['workout_type' => 'situp', 'min_age' => 27, 'max_age' => 31, 'score_value' => 75, 'percentage' => 100],

            ['workout_type' => 'situp', 'min_age' => 32, 'max_age' => 36, 'score_value' => 25, 'percentage' => 10],
            ['workout_type' => 'situp', 'min_age' => 32, 'max_age' => 36, 'score_value' => 30, 'percentage' => 20],
            ['workout_type' => 'situp', 'min_age' => 32, 'max_age' => 36, 'score_value' => 35, 'percentage' => 30],
            ['workout_type' => 'situp', 'min_age' => 32, 'max_age' => 36, 'score_value' => 40, 'percentage' => 40],
            ['workout_type' => 'situp', 'min_age' => 32, 'max_age' => 36, 'score_value' => 45, 'percentage' => 50],
            ['workout_type' => 'situp', 'min_age' => 32, 'max_age' => 36, 'score_value' => 50, 'percentage' => 60],
            ['workout_type' => 'situp', 'min_age' => 32, 'max_age' => 36, 'score_value' => 55, 'percentage' => 70],
            ['workout_type' => 'situp', 'min_age' => 32, 'max_age' => 36, 'score_value' => 60, 'percentage' => 80],
            ['workout_type' => 'situp', 'min_age' => 32, 'max_age' => 36, 'score_value' => 65, 'percentage' => 90],
            ['workout_type' => 'situp', 'min_age' => 32, 'max_age' => 36, 'score_value' => 70, 'percentage' => 100],

            ['workout_type' => 'situp', 'min_age' => 37, 'max_age' => 41, 'score_value' => 20, 'percentage' => 10],
            ['workout_type' => 'situp', 'min_age' => 37, 'max_age' => 41, 'score_value' => 25, 'percentage' => 20],
            ['workout_type' => 'situp', 'min_age' => 37, 'max_age' => 41, 'score_value' => 30, 'percentage' => 30],
            ['workout_type' => 'situp', 'min_age' => 37, 'max_age' => 41, 'score_value' => 35, 'percentage' => 40],
            ['workout_type' => 'situp', 'min_age' => 37, 'max_age' => 41, 'score_value' => 40, 'percentage' => 50],
            ['workout_type' => 'situp', 'min_age' => 37, 'max_age' => 41, 'score_value' => 45, 'percentage' => 60],
            ['workout_type' => 'situp', 'min_age' => 37, 'max_age' => 41, 'score_value' => 50, 'percentage' => 70],
            ['workout_type' => 'situp', 'min_age' => 37, 'max_age' => 41, 'score_value' => 55, 'percentage' => 80],
            ['workout_type' => 'situp', 'min_age' => 37, 'max_age' => 41, 'score_value' => 60, 'percentage' => 90],
            ['workout_type' => 'situp', 'min_age' => 37, 'max_age' => 41, 'score_value' => 65, 'percentage' => 100],

            ['workout_type' => 'situp', 'min_age' => 42, 'max_age' => 46, 'score_value' => 15, 'percentage' => 10],
            ['workout_type' => 'situp', 'min_age' => 42, 'max_age' => 46, 'score_value' => 20, 'percentage' => 20],
            ['workout_type' => 'situp', 'min_age' => 42, 'max_age' => 46, 'score_value' => 25, 'percentage' => 30],
            ['workout_type' => 'situp', 'min_age' => 42, 'max_age' => 46, 'score_value' => 30, 'percentage' => 40],
            ['workout_type' => 'situp', 'min_age' => 42, 'max_age' => 46, 'score_value' => 35, 'percentage' => 50],
            ['workout_type' => 'situp', 'min_age' => 42, 'max_age' => 46, 'score_value' => 40, 'percentage' => 60],
            ['workout_type' => 'situp', 'min_age' => 42, 'max_age' => 46, 'score_value' => 45, 'percentage' => 70],
            ['workout_type' => 'situp', 'min_age' => 42, 'max_age' => 46, 'score_value' => 50, 'percentage' => 80],
            ['workout_type' => 'situp', 'min_age' => 42, 'max_age' => 46, 'score_value' => 55, 'percentage' => 90],
            ['workout_type' => 'situp', 'min_age' => 42, 'max_age' => 46, 'score_value' => 60, 'percentage' => 100],

            ['workout_type' => 'situp', 'min_age' => 46, 'max_age' => 100, 'score_value' => 10, 'percentage' => 10],
            ['workout_type' => 'situp', 'min_age' => 46, 'max_age' => 100, 'score_value' => 15, 'percentage' => 20],
            ['workout_type' => 'situp', 'min_age' => 46, 'max_age' => 100, 'score_value' => 20, 'percentage' => 30],
            ['workout_type' => 'situp', 'min_age' => 46, 'max_age' => 100, 'score_value' => 25, 'percentage' => 40],
            ['workout_type' => 'situp', 'min_age' => 46, 'max_age' => 100, 'score_value' => 30, 'percentage' => 50],
            ['workout_type' => 'situp', 'min_age' => 46, 'max_age' => 100, 'score_value' => 35, 'percentage' => 60],
            ['workout_type' => 'situp', 'min_age' => 46, 'max_age' => 100, 'score_value' => 40, 'percentage' => 70],
            ['workout_type' => 'situp', 'min_age' => 46, 'max_age' => 100, 'score_value' => 45, 'percentage' => 80],
            ['workout_type' => 'situp', 'min_age' => 46, 'max_age' => 100, 'score_value' => 50, 'percentage' => 90],
            ['workout_type' => 'situp', 'min_age' => 46, 'max_age' => 100, 'score_value' => 55, 'percentage' => 100],
        ];

        WorkoutScore::insert($data);
    }
}
