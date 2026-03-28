<?php

namespace App\Filament\Resources\Users\Widgets;

use App\Models\FogUsers;
use Filament\Widgets\StatsOverviewWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class UserWidget extends StatsOverviewWidget
{
    protected ?string $heading = 'Analytics';
    // protected string $color = 'info';

    protected ?string $description = 'An overview of some analytics.';
    protected function getStats(): array
    {
        return [
            Stat::make("Total Users",FogUsers::count())
                ->icon('heroicon-o-chevron-right'),
                // ->description("total users in Fog")
                // ->descriptionIcon('heroicon-o-chevron-up', 'after')
            Stat::make('Unique views', '192.1k')
            ->description('32k increase')
            ->descriptionIcon('heroicon-m-arrow-trending-up')
            ->chart([7, 2, 10, 3, 15, 4, 17])
            ->color('warning'),

            // Stat::make("K1 Users",FogUsers::where("groub_id","1")->count())
            //     ->icon('heroicon-o-chevron-right'),
                
            // Stat::make("K2 Users",FogUsers::where("groub_id","2")->count())
            //     ->icon('heroicon-o-chevron-right'),
                
            // Stat::make("K3 Users",FogUsers::where("groub_id","3")->count())
            //     ->icon('heroicon-o-chevron-right'),
                
            // Stat::make("Qeyada Users",FogUsers::where("groub_id","4")->count())
            //     ->icon('heroicon-o-chevron-right'),
                
        ];
    }
}
