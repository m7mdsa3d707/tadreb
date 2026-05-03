<?php

namespace App\Filament\Widgets;

use Filament\Widgets\Widget;

class DahyaMonthStatsWidget extends Widget
{
    // protected string $view = 'filament.widgets.dahya-month-stats-widget';

    protected string $view = 'filament.widgets.dahya-month-stats-widget';

    protected static ?int $sort = 3; // order on dashboard

    protected int | string | array $columnSpan = 'full'; // full width

}
