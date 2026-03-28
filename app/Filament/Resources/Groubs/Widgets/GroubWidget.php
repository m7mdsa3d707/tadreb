<?php

namespace App\Filament\Resources\Groubs\Widgets;

use App\Models\FogUsers;
use App\Models\Groubs;
use Filament\Widgets\StatsOverviewWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use Illuminate\Support\Facades\Request;

class GroubWidget extends StatsOverviewWidget
{
    protected function getStats(): array
    {
        // $request = (Request::session());
        // $request = (Request::keys());
        // trying to get the groub id from the url
        $op = json_decode(Request::input("components.0.snapshot"))->memo->attributes->record->id;
        // dd($op);
        return [
             Stat::make("Total Users",FogUsers::where('groub_id', $op)->count())
                ->icon('heroicon-o-chevron-right'),
        ];
    }

    // echo Request::fullUrl();
    
}
