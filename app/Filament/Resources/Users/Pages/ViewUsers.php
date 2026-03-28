<?php

namespace App\Filament\Resources\Users\Pages;

use App\Filament\Resources\Leyaqas\Widgets\LeyaqaChart;
use App\Filament\Resources\Users\UsersResource;
use Filament\Actions\DeleteAction;
use Filament\Actions\EditAction;
use Filament\Resources\Pages\ViewRecord;

class ViewUsers extends ViewRecord
{
    protected static string $resource = UsersResource::class;

    protected function getHeaderActions(): array
    {
        return [
            EditAction::make(),
            DeleteAction::make()
        ];
    }
    protected function getHeaderWidgets(): array
    {
        return [
            // LeyaqaChart::class,
        ];
    }
}
