<?php

namespace App\Filament\Resources\Users\Widgets;

use App\Models\FogUsers;
use Filament\Widgets\StatsOverviewWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class UserWidget extends StatsOverviewWidget
{
    protected function getStats(): array
    {
        return [
            Stat::make("Total Users",FogUsers::count())
                ->icon('heroicon-o-chevron-right'),
                // ->description("total users in Fog")
                // ->descriptionIcon('heroicon-o-chevron-up', 'after')

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
