<?php

namespace App\Filament\Resources\Medanyas\Schemas;

use Filament\Schemas\Schema;
use Filament\Forms\Components\TextInput;

class MedanyasForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('name')->required(),
                TextInput::make('month')->required(),
            ]);
    }
}
