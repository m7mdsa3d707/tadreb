<?php

namespace App\Filament\Resources\WorkoutScores;

use App\Filament\Resources\WorkoutScores\Pages\CreateWorkoutScores;
use App\Filament\Resources\WorkoutScores\Pages\EditWorkoutScores;
use App\Filament\Resources\WorkoutScores\Pages\ListWorkoutScores;
use App\Filament\Resources\WorkoutScores\Pages\ViewWorkoutScores;
use App\Filament\Resources\WorkoutScores\Schemas\WorkoutScoresForm;
use App\Filament\Resources\WorkoutScores\Schemas\WorkoutScoresInfolist;
use App\Filament\Resources\WorkoutScores\Tables\WorkoutScoresTable;
use App\Models\WorkoutScore;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class WorkoutScoresResource extends Resource
{
    protected static ?string $model = WorkoutScore::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleGroup;

    protected static ?string $recordTitleAttribute = 'workout_type';

    public static function form(Schema $schema): Schema
    {
        return WorkoutScoresForm::configure($schema);
    }

    public static function infolist(Schema $schema): Schema
    {
        return WorkoutScoresInfolist::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return WorkoutScoresTable::configure($table);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => ListWorkoutScores::route('/'),
            'create' => CreateWorkoutScores::route('/create'),
            'view' => ViewWorkoutScores::route('/{record}'),
            'edit' => EditWorkoutScores::route('/{record}/edit'),
        ];
    }
}
