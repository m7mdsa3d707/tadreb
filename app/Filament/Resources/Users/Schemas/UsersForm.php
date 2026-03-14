<?php

namespace App\Filament\Resources\Users\Schemas;

use Filament\Schemas\Schema;
use Filament\Forms\Components\Select;
use App\Models\Groubs;
use App\Models\Medanya;
use Filament\Forms\Components\TextInput;

class UsersForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('name')->required(),
                TextInput::make('age')->required(),
                TextInput::make('role')->required(),
                Select::make('groub_id')
                    ->label('Groub')
                    ->options(Groubs::all()->pluck('name', 'id'))
                    ->required()
                    ->visible(fn($record) => $record === null) // Only show when creating
                    ->reactive(),
                // ->afterStateUpdated(function ($state, callable $set) {
                //     $groub = Groubs::where('id', $state)->first();
                //     // dd($groub->id);
                //     $set('groub_id', $groub->id ?? null);
                // }),
                //                          ->afterStateUpdated(function ($state, callable $set) {
                //                         $groub = Groubs::where('groub_id', $state)->first();
                // //                        dd($icDetail);
                //                         $set('ic_details_id', $icDetail->id ?? null);
                //                     }),
                Select::make('medanya_id')
                    ->label('Medanya')
                    ->options(Medanya::all()->pluck('name', 'id'))
                    ->required()
                    ->reactive(),
            ]);
    }
}
