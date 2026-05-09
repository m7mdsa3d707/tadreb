<?php

namespace App\Filament\Pages;

use App\Filament\Resources\Medanyas\Widgets\MedanyaWidget;
use App\Filament\Resources\Users\Widgets\UserWidget;
use Filament\Pages\Dashboard as BaseDashboard;

class Dashboard extends BaseDashboard
{
    protected string $view = 'filament.pages.dashboard';

    public function getWidgets(): array
    {
        return [
            UserWidget::class,
            MedanyaWidget::class,
        ];
    }

    public function getColumns(): int | array
    {
        return 2;
    }
}