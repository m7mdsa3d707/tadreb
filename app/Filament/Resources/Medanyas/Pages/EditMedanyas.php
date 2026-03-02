<?php

namespace App\Filament\Resources\Medanyas\Pages;

use App\Filament\Resources\Medanyas\MedanyasResource;
use Filament\Actions\DeleteAction;
use Filament\Actions\ViewAction;
use Filament\Resources\Pages\EditRecord;

class EditMedanyas extends EditRecord
{
    protected static string $resource = MedanyasResource::class;

    protected function getHeaderActions(): array
    {
        return [
            ViewAction::make(),
            DeleteAction::make(),
        ];
    }
}
