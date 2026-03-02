<?php

namespace App\Filament\Resources\WorkoutScores\Pages;

use App\Filament\Resources\WorkoutScores\WorkoutScoresResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListWorkoutScores extends ListRecords
{
    protected static string $resource = WorkoutScoresResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
