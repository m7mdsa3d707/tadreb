<?php

namespace App\Filament\Resources\Groubs\Pages;

use App\Filament\Resources\Groubs\GroubsResource;
use Filament\Actions\DeleteAction;
use Filament\Actions\ViewAction;
use Filament\Resources\Pages\EditRecord;

class EditGroubs extends EditRecord
{
    protected static string $resource = GroubsResource::class;

    protected function getHeaderActions(): array
    {
        return [
            ViewAction::make(),
            DeleteAction::make(),
        ];
    }
}
