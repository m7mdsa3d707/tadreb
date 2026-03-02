<?php

namespace App\Filament\Resources\Groubs\Pages;

use App\Filament\Resources\Groubs\GroubsResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListGroubs extends ListRecords
{
    protected static string $resource = GroubsResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
