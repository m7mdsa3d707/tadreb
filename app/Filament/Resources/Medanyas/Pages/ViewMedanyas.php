<?php

namespace App\Filament\Resources\Medanyas\Pages;

use App\Filament\Resources\Medanyas\MedanyasResource;
use Filament\Actions\EditAction;
use Filament\Resources\Pages\ViewRecord;

class ViewMedanyas extends ViewRecord
{
    protected static string $resource = MedanyasResource::class;

    protected function getHeaderActions(): array
    {
        return [
            EditAction::make(),
        ];
    }
}
