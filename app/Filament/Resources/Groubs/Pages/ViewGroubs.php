<?php

namespace App\Filament\Resources\Groubs\Pages;

use App\Filament\Resources\Groubs\GroubsResource;
use App\Filament\Resources\Groubs\Widgets\GroubWidget;
use Filament\Actions\EditAction;
use Filament\Resources\Pages\ViewRecord;

class ViewGroubs extends ViewRecord
{
    protected static string $resource = GroubsResource::class;

    protected function getHeaderActions(): array
    {
        return [
            EditAction::make(),
        ];
    }

    protected function getHeaderWidgets(): array
    {
        return [
            GroubWidget::class,
        ];
    }
}
