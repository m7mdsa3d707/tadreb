<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\WorkoutScore;


class workoutSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // $pushup = file_get_contents(database_path('data/pushup.json'));
        // $pullup = file_get_contents(database_path('data/pullup.json'));
        // $situps = file_get_contents(database_path('data/situps.json'));
        // $mod_run = file_get_contents(database_path('data/modrated-run.json'));
        // $workout = json_decode($pushup, true);

        // foreach ($workout as $type) {
        //     WorkoutScore::create([
        // 'workout_type' => 'push up',
        // 'min_age' => $type['min_age'],
        // 'max_age' => $type['max_age'],
        // 'score_value' => $type['score_value'],
        // 'percentage' => $type['percentage']
        //     ]);
        // }


        $workoutTypes = [
            'pushup' => 'pushup.json',
            'pullup' => 'pullup.json',
            'situps' => 'situps.json',
            'moderated_run' => 'moderated-run.json',
        ];

        foreach ($workoutTypes as $type => $filename) {
            $json = file_get_contents(database_path("data/$filename"));
            $records = json_decode($json, true);

            foreach ($records as $record) {
                WorkoutScore::create([
                    'workout_type' => $type,
                    'min_age' => $record['min_age'],
                    'max_age' => $record['max_age'],
                    'score_value' => $record['score_value'],
                    'percentage' => $record['percentage']
                ]);
            }
        }
    }
}
