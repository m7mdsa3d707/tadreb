<?php

namespace App\Filament\Resources\Groubs\Schemas;

use Filament\Forms\Components\TextInput;
use Filament\Schemas\Schema;

class GroubsForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('name')->required(),
            ]);
    }
}
