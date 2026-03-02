<?php

namespace App\Filament\Resources\Medanyas\Pages;

use App\Filament\Resources\Medanyas\MedanyasResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListMedanyas extends ListRecords
{
    protected static string $resource = MedanyasResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
