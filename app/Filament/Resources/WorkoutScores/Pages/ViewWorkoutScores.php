<?php

namespace App\Filament\Resources\WorkoutScores\Pages;

use App\Filament\Resources\WorkoutScores\WorkoutScoresResource;
use Filament\Actions\EditAction;
use Filament\Resources\Pages\ViewRecord;

class ViewWorkoutScores extends ViewRecord
{
    protected static string $resource = WorkoutScoresResource::class;

    protected function getHeaderActions(): array
    {
        return [
            EditAction::make(),
        ];
    }
}
