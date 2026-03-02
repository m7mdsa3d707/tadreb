<?php

namespace App\Services;

use App\Models\WorkoutScore;
use Illuminate\Support\Facades\Cache;

class WorkoutScoreService
{
    public function calculate(
        string $type,
        int $age,
        float $value
    ): float {

        $scores = Cache::remember(
            "scores_{$type}_{$age}",
            3600,
            function () use ($type, $age) {
                return WorkoutScore::where('workout_type', $type)
                    ->where('min_age', '<=', $age)
                    ->where('max_age', '>=', $age)
                    ->orderBy('score_value')
                    ->get();
            }
        );

        if ($scores->isEmpty()) {
            return 0;
        }

        if ($value <= $scores->first()->score_value) {
            return $scores->first()->percentage;
        }

        if ($value >= $scores->last()->score_value) {
            return $scores->last()->percentage;
        }

        foreach ($scores as $index => $score) {

            if ($value == $score->score_value) {
                return $score->percentage;
            }

            if ($value < $score->score_value) {

                $lower = $scores[$index - 1];
                $upper = $score;

                return $lower->percentage +
                    ($value - $lower->score_value) *
                    ($upper->percentage - $lower->percentage) /
                    ($upper->score_value - $lower->score_value);
            }
        }

        return 0;
    }
}
