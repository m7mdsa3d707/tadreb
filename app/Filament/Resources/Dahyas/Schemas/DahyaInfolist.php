<?php

namespace App\Filament\Resources\Dahyas\Schemas;

use Filament\Infolists\Components\TextEntry;
use Filament\Schemas\Schema;

class DahyaInfolist
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextEntry::make('fogUser.name')
                    ->label('Fog user'),
                TextEntry::make('date')
                    ->date(),
                TextEntry::make('duration')
                    ->time(),
                TextEntry::make('created_at')
                    ->dateTime()
                    ->placeholder('-'),
                TextEntry::make('updated_at')
                    ->dateTime()
                    ->placeholder('-'),
            ]);
    }
}
