<?php

namespace App\Filament\Resources\Dahyas\Pages;

use App\Filament\Resources\Dahyas\DahyaResource;
use Filament\Actions\DeleteAction;
use Filament\Actions\ViewAction;
use Filament\Resources\Pages\EditRecord;

class EditDahya extends EditRecord
{
    protected static string $resource = DahyaResource::class;

    protected function getHeaderActions(): array
    {
        return [
            ViewAction::make(),
            DeleteAction::make(),
        ];
    }
}
