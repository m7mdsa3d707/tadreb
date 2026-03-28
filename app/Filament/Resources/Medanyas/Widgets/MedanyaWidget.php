<?php

namespace App\Filament\Resources\Medanyas\Widgets;

use App\Models\FogUsers;
use Filament\Widgets\StatsOverviewWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class MedanyaWidget extends StatsOverviewWidget
{
    protected function getStats(): array
    {
        return [
            Stat::make("First Medanya Users",FogUsers::where("medanya_id","1")->count())
                ->icon('heroicon-o-chevron-right')
                ->description('Will Cause Problems')
                ->descriptionIcon('heroicon-m-arrow-trending-down')
                ->color('danger'),

                
            Stat::make("Second Medanya Users",FogUsers::where("medanya_id","2")->count())
                ->icon('heroicon-o-chevron-right')
                ->description('Will Cause No Problems')
                ->descriptionIcon('heroicon-m-arrow-trending-up')
                ->color('success'),


            Stat::make("Third Medanya Users",FogUsers::where("medanya_id","3")->count())
                ->icon('heroicon-o-chevron-right')
                ->description('Will Cause No Problems')
                ->descriptionIcon('heroicon-m-arrow-trending-up')
                ->color('success'),


            Stat::make("Fourth Medanya Users",FogUsers::where("medanya_id","4")->count())
                ->icon('heroicon-o-chevron-right')
                ->description('Will Cause Problems')
                ->descriptionIcon('heroicon-m-arrow-trending-down')
                ->color('danger'),


        ];
    }
}
