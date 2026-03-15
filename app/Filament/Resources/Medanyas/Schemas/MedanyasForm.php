<?php

namespace App\Filament\Resources\Medanyas\Schemas;

use Filament\Forms\Components\Select;
use Filament\Schemas\Schema;
use Filament\Forms\Components\TextInput;

class MedanyasForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                // TextInput::make('name')->required(),
                Select::make('month')
                    ->required()
                    ->options([
                        'March' => 'March',
                        'April' => 'April',
                        'May' => 'May',
                        'June' => 'June',
                        'July' => 'July',
                        'August' => 'August',
                        'September' => 'September',
                        'october' => 'october',
                        'November' => 'November',
                        'December' => 'December',
                    ]),
            ]);
    }
}
