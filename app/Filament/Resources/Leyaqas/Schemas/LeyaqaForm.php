<?php

namespace App\Filament\Resources\Leyaqas\Schemas;

use App\Models\Medanya;
use App\Services\WorkoutScoreService;
use Filament\Forms\Components\Select;
use Filament\Schemas\Schema;


class LeyaqaForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Select::make('medanya_id')
                        ->label('Medanya')
                        ->options(Medanya::all()->pluck('name', 'id'))
                        ->required()
                        ->reactive()
                        ->afterStateUpdated(function ($state, callable $set) {
                       
                    //    dd(app(WorkoutScoreService::class)->calculate('pullups', 25, 8));
                        dd(app(WorkoutScoreService::class)->calculate('pullups', 25, 8));
                       
                    }),
            ]);
    }
}
