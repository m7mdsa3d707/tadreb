<?php

namespace App\Filament\Resources\WorkoutScores\Pages;

use App\Filament\Resources\WorkoutScores\WorkoutScoresResource;
use Filament\Actions\DeleteAction;
use Filament\Actions\ViewAction;
use Filament\Resources\Pages\EditRecord;

class EditWorkoutScores extends EditRecord
{
    protected static string $resource = WorkoutScoresResource::class;

    protected function getHeaderActions(): array
    {
        return [
            ViewAction::make(),
            DeleteAction::make(),
        ];
    }
}
