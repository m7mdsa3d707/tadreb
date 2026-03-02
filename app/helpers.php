<?php
use App\Services\WorkoutScoreService;

if (!function_exists('workout_percentage')) {
    function workout_percentage(string $type, int $age, float $value): float
    {
        return app(WorkoutScoreService::class)
            ->calculate($type, $age, $value);
    }
}
