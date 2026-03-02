<?php

namespace App\Filament\Resources\WorkoutScores\Schemas;

use Filament\Schemas\Schema;
use Filament\Forms\Components\TextInput;

class WorkoutScoresForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('workout_type'),
                TextInput::make('min_age')->numeric(),
                TextInput::make('max_age')->numeric(),
                TextInput::make('score_value')->numeric(),
                TextInput::make('percentage')->numeric(),
            ]);
    }
}
