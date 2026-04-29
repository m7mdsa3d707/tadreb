<?php

namespace App\Livewire;

use App\Models\DahyaEntry;
use App\Models\DahyaWeek;
use Livewire\Component;

class DahyaMonthStats extends Component
{
    public string $selectedMonth;

    public array $stats  = [];
    public array $chart  = [];

    public function mount(): void
    {
        $this->selectedMonth = now()->format('F');
        $this->loadData();
    }

    public function updatedSelectedMonth(): void
    {
        $this->loadData();
    }

    public function loadData(): void
    {
        $weeks = DahyaWeek::where('month', $this->selectedMonth)
            ->orderBy('week_number')
            ->get();

        $this->stats = [];
        $labels      = [];
        $avgSeconds  = [];
        $participants = [];

        foreach ($weeks as $week) {
            $entries = DahyaEntry::where('dahya_week_id', $week->id)
                ->whereNotNull('duration')
                ->get();

            $count = $entries->count();

            $seconds = $entries->map(function ($e) {
                $parts = explode(':', $e->duration);
                return ((int)$parts[1] * 60) + (int)$parts[2];
            });

            $avg = $count > 0 ? $seconds->average() : null;

            $avgMins = $avg ? floor($avg / 60) : null;
            $avgSecs = $avg ? ($avg % 60) : null;
            $avgFormatted = $avg
                ? sprintf('%02d:%02d', $avgMins, $avgSecs)
                : '—';

            $this->stats[] = [
                'week'         => "Week {$week->week_number}",
                'date'         => $week->date?->format('d M Y') ?? '—',
                'participants' => $count,
                'avg'          => $avgFormatted,
            ];

            $labels[]      = "W{$week->week_number}";
            $avgSeconds[]  = $avg ? round($avg) : null;
            $participants[] = $count;
        }

        $this->chart = [
            'labels'       => $labels,
            'avgSeconds'   => $avgSeconds,
            'participants' => $participants,
        ];
    }

    public function render()
    {
        return view('livewire.dahya-month-stats');
    }
}