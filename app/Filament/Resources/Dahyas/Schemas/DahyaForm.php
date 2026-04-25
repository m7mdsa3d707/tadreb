<?php

namespace App\Filament\Resources\Dahyas\Schemas;

use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TimePicker;
use Filament\Schemas\Schema;

class DahyaForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Select::make('fog_user_id')
                    ->relationship('fogUser', 'name')
                    ->required(),
                DatePicker::make('date')
                    ->required(),
                TimePicker::make('duration')
                    ->required(),
            ]);
    }
}
