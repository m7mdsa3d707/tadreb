<?php

namespace App\Filament\Resources\Dahyas\Pages;

use App\Filament\Resources\Dahyas\DahyaResource;
use Filament\Actions\EditAction;
use Filament\Resources\Pages\ViewRecord;

class ViewDahya extends ViewRecord
{
    protected static string $resource = DahyaResource::class;

    protected function getHeaderActions(): array
    {
        return [
            EditAction::make(),
        ];
    }
}
