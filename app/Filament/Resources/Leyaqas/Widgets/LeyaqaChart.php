<?php

namespace App\Filament\Resources\Leyaqas\Widgets;

use Filament\Forms\Components\DatePicker;
use Filament\Schemas\Schema;
use Filament\Widgets\ChartWidget;
use Filament\Widgets\ChartWidget\Concerns\HasFiltersSchema;

class LeyaqaChart extends ChartWidget
{
    use HasFiltersSchema;
    protected ?string $heading = 'Leyaqa Chart';
    protected string $color = 'info';

    protected function getData(): array
    {
        return [
           'datasets' => [
                [
                    'label' => 'Blog posts created',
                    'data' => [0, 10, 5, 2, 21, 32, 45, 74, 65, 45, 77, 89],
                ],
            ],
            'labels' => ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
        
        ];
    }
    public function filtersSchema(Schema $schema): Schema
    {
        return $schema->components([
            DatePicker::make('startDate')
                ->default(now()->subDays(30)),
            DatePicker::make('endDate')
                ->default(now()),
        ]);
    }

    protected function getType(): string
    {
        return 'bar';
    }
}
