<?php

namespace App\Filament\Resources\Dahyas\Widgets;

use App\Models\DahyaEntry;
use Filament\Widgets\ChartWidget;
use Illuminate\Database\Eloquent\Model;


class DahyaWedget extends ChartWidget
{
    // protected ?string $heading = 'Dahya Wedget';
   protected ?string $heading = 'Dahya Progress';
    protected static bool $isLazy = false;
   protected string $view = 'filament.widgets.dahya-progress-widget';

    public ?Model $record = null; // receives the FogUser

    // protected function getData(): array
    // {
    //             $entries = DahyaEntry::where('fog_user_id', $this->record->id)
    //         ->with('dahyaWeek')
    //         ->get()
    //         ->sortBy(fn($e) => [$e->dahyaWeek->month, $e->dahyaWeek->week_number]);

    //     $labels       = [];
    //     $durations    = [];
    //     $participated = [];

    //     foreach ($entries as $entry) {
    //         $week = $entry->dahyaWeek;

    //         $labels[] = "{$week->month} W{$week->week_number}";

    //         // Convert "00:MM:SS" to total seconds for the chart
    //         if ($entry->duration) {
    //             $parts = explode(':', $entry->duration);
    //             $totalSeconds = ((int)$parts[0] * 3600) + ((int)$parts[1] * 60) + (int)$parts[2];
    //             $durations[]    = $totalSeconds;
    //             $participated[] = 1;
    //         } else {
    //             $durations[]    = null;
    //             $participated[] = 0;
    //         }
    //     }

    //     return [
    //         'datasets' => [
    //             [
    //                 'label'           => 'Duration (seconds)',
    //                 'data'            => $durations,
    //                 'borderColor'     => '#3b82f6',
    //                 'backgroundColor' => 'rgba(59,130,246,0.1)',
    //                 'tension'         => 0.4,
    //                 'yAxisID'         => 'y',
    //                 'spanGaps'        => true, // connect across missing weeks
    //             ],
    //             [
    //                 'label'           => 'Participated',
    //                 'data'            => $participated,
    //                 'borderColor'     => '#10b981',
    //                 'backgroundColor' => 'rgba(16,185,129,0.1)',
    //                 'tension'         => 0.4,
    //                 'yAxisID'         => 'y1',
    //             ],
    //         ],
    //         'labels' => $labels,
    //     ];
    // }


    protected function getData(): array
    {
        $entries = DahyaEntry::where('fog_user_id', $this->record->id)
            ->with('dahyaWeek')
            ->get()
            ->sortBy(fn($e) => [$e->dahyaWeek->month, $e->dahyaWeek->week_number]);

        $labels    = [];
        $durations = [];

        foreach ($entries as $entry) {
            $week = $entry->dahyaWeek;

            $labels[] = "{$week->month} W{$week->week_number}";

            if ($entry->duration) {
                $parts        = explode(':', $entry->duration);
                $timeInMins= $parts[1] . " : " . $parts[2];
                $totalSeconds = ((int)$parts[1] * 60) + (int)$parts[2]; // MM:SS only
                $durations[]  = $totalSeconds;
                // $durations[]  = $timeInMins;
            } else {
                $durations[] = null; // gap in chart = did not participate
            }
        }

        return [
            'datasets' => [
                [
                    'label'           => 'Duration',
                    'data'            => $durations,
                    'borderColor'     => '#3b82f6',
                    'backgroundColor' => 'rgba(59,130,246,0.1)',
                    'tension'         => 0.4,
                    'spanGaps'        => false, // ✅ gap = missing week, not connected
                    'pointRadius'     => 5,
                    'pointHoverRadius'=> 7,
                ],
            ],
            'labels' => $labels,
        ];
    }

    protected function getOptions(): array
{
    // Calculate min/max from data for a tight ruler
    $entries = DahyaEntry::where('fog_user_id', $this->record->id)
        ->whereNotNull('duration')
        ->with('dahyaWeek')
        ->get();

    $seconds = $entries->map(function ($e) {
        $parts = explode(':', $e->duration);
        return ((int)$parts[1] * 60) + (int)$parts[2];
    });

    $min = $seconds->min() ? (floor($seconds->min() / 60) * 60) - 60 : 0;
    $max = $seconds->max() ? (ceil($seconds->max()  / 60) * 60) + 60 : 3600;

    return [
        'scales' => [
            'x' => [
                'title' => [
                    'display' => true,
                    'text'    => 'Week',
                    'color'   => '#9ca3af',
                ],
                'ticks' => ['color' => '#9ca3af'],
                'grid'  => ['color' => '#374151'],
            ],
            'y' => [
                'reverse'  => true,
                'min'      => $min,
                'max'      => $max,
                'title'    => [
                    'display' => true,
                    'text'    => 'Duration (MM:SS)',
                    'color'   => '#9ca3af',
                ],
                'ticks'    => [
                    'color'    => '#9ca3af',
                    'stepSize' => 60,
                ],
                'grid'     => ['color' => '#374151'],
            ],
        ],
        'plugins' => [
            'legend' => ['display' => false],
        ],
    ];
}
    protected function getType(): string
    {
        return 'line';
    }
    // protected function getOptions(): array
    // {
    //     return [
    //         'scales' => [
    //             'y' => [
    //                 'title'    => ['display' => true, 'text' => 'Duration (sec)'],
    //                 'position' => 'left',
    //                 'ticks'    => [
    //                     // Convert seconds back to MM:SS on the axis
    //                     'callback' => "function(value) {
    //                         var m = Math.floor(value / 60);
    //                         var s = value % 60;
    //                         return m + ':' + (s < 10 ? '0' + s : s);
    //                     }",
    //                 ],
    //             ],
    //             'y1' => [
    //                 'title'    => ['display' => true, 'text' => 'Participated'],
    //                 'position' => 'right',
    //                 'min'      => 0,
    //                 'max'      => 1,
    //                 'ticks'    => [
    //                     'stepSize' => 1,
    //                     'callback' => "function(value) { return value === 1 ? 'Yes' : 'No'; }",
    //                 ],
    //                 'grid' => ['drawOnChartArea' => false],
    //             ],
    //         ],
    //         'plugins' => [
    //             'tooltip' => [
    //                 'callbacks' => [
    //                     'label' => "function(context) {
    //                         if (context.dataset.yAxisID === 'y') {
    //                             var val = context.parsed.y;
    //                             if (val === null) return 'Did not participate';
    //                             var m = Math.floor(val / 60);
    //                             var s = val % 60;
    //                             return 'Duration: ' + m + ':' + (s < 10 ? '0' + s : s);
    //                         }
    //                         return context.parsed.y === 1 ? 'Participated: Yes' : 'Participated: No';
    //                     }",
    //                 ],
    //             ],
    //         ],
    //     ];
    // }
}


