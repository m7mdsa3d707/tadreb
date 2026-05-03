<?php

namespace App\Livewire;

use App\Models\DahyaEntry;
use App\Models\DahyaWeek;
use Livewire\Component;

class DahyaMonthStats extends Component
{
    public string $selectedMonth;
    public string $distributionScope = 'month'; // 'month' or week ID
    public array  $stats        = [];
    public array  $overviewChart = [];
    public array  $distChart     = [];
    public array  $weeks         = []; // for week selector

    public function mount(): void
{
    // Default to latest month that has data, fallback to current month
    $latestMonth = DahyaWeek::orderByRaw("FIELD(month, 'January','February','March','April','May','June','July','August','September','October','November','December')")
        ->pluck('month')
        ->last();

    $this->selectedMonth = $latestMonth ?? now()->format('F');
    $this->loadData();
}

    public function updatedSelectedMonth(): void
    {
        $this->distributionScope = 'month'; // reset to month on month change
        $this->loadData();
    }

    public function updatedDistributionScope(): void
    {
        $this->loadDistribution();
    }

    public function loadData(): void
    {
        $dahyaWeeks  = DahyaWeek::where('month', $this->selectedMonth)
            ->orderBy('week_number')
            ->get();

        $this->weeks  = [];
        $this->stats  = [];
        $labels       = [];
        $avgSeconds   = [];
        $participants = [];
       //dd($dahyaWeeks ); // didn't run

        foreach ($dahyaWeeks  as $week) {
            $entries = DahyaEntry::where('dahya_week_id', $week->id)
                ->whereNotNull('duration')
                ->get();
                // dd($entries);

            $count = $entries->count();
            // dd($count);

            $seconds = $entries->map(function ($e) {
                $parts = explode(':', $e->duration);
                return ((int)$parts[1] * 60) + (int)$parts[2];
            });
            // dd($seconds);

            $avg = $count > 0 ? (int) round($seconds->average()) : null;
            $avgFormatted = $avg
                ? sprintf('%02d:%02d', floor($avg / 60), $avg % 60)
                : '—';

                // dd($avg, $avgFormatted);
            $this->stats[] = [
                'week'         => "Week {$week->week_number}",
                'date'         => $week->date?->format('d M Y') ?? '—',
                'participants' => $count,
                'avg'          => $avgFormatted,
            ];
            // dd($this->stats); // didn't run here

            $this->weeks[] = [
                'id'     => $week->id,
                'label'  => "Week {$week->week_number}",
            ];
            // dd($this->weeks);

            $labels[]       = "W{$week->week_number}";
            $avgSeconds[]   = $avg ? (int) round($avg) : null;
            $participants[] = $count;
        }
                // dd($this->weeks);// the problem is that the value didn't assigned to the array but it exist!!

        // In loadData(), add min/max to overviewChart
        $allSeconds = collect($avgSeconds)->filter()->values();

        $this->overviewChart = [
            'labels'       => $labels,
            'avgSeconds'   => $avgSeconds,
            'participants' => $participants,
            'minY'         => $allSeconds->isNotEmpty() ? (int)(floor($allSeconds->min() / 60) * 60) - 60 : 0,
            'maxY'         => $allSeconds->isNotEmpty() ? (int)(ceil($allSeconds->max()  / 60) * 60) + 60 : 3600,
        ];
        // dd($this->overviewChart);

        $this->loadDistribution();

        logger('overviewChartUpdated fired', [
            'labels'       => $labels,
            'avgSeconds'   => $avgSeconds,
            'participants' => $participants,
            'minY'         => $allSeconds->isNotEmpty() ? (int)(floor($allSeconds->min() / 60) * 60) - 60 : 0,
            'maxY'         => $allSeconds->isNotEmpty() ? (int)(ceil($allSeconds->max()  / 60) * 60) + 60 : 3600,
        ]);
        // ✅ dispatch event with fresh chart data
        $this->dispatch('overviewChartUpdated',
            labels:       $labels,
            avgSeconds:   $avgSeconds,
            participants: $participants,
            minY:         $allSeconds->isNotEmpty() ? (int)(floor($allSeconds->min() / 60) * 60) - 60 : 0,
            maxY:         $allSeconds->isNotEmpty() ? (int)(ceil($allSeconds->max()  / 60) * 60) + 60 : 3600,
        );
    }

    public function loadDistribution(): void
    {
        // Get entries based on scope
        if ($this->distributionScope === 'month') {
            $weekIds = DahyaWeek::where('month', $this->selectedMonth)
                ->pluck('id');
            $entries = DahyaEntry::whereIn('dahya_week_id', $weekIds)
                ->whereNotNull('duration')
                ->get();
        } else {
            $entries = DahyaEntry::where('dahya_week_id', $this->distributionScope)
                ->whereNotNull('duration')
                ->get();
        }

        // Group by minute bucket
        $buckets = [];
        foreach ($entries as $entry) {
            $parts      = explode(':', $entry->duration);
            $totalSecs  = ((int)$parts[1] * 60) + (int)$parts[2];
            $minuteSlot = floor($totalSecs / 60); // e.g. 23 = "23:00–23:59"
            $label      = sprintf('%02d:00', $minuteSlot);
            $buckets[$label] = ($buckets[$label] ?? 0) + 1;
        }

        // Sort by time
        ksort($buckets);

        $this->distChart = [
        'labels' => array_keys($buckets),
        'counts' => array_values($buckets),
        ];

        

        // ✅ dispatch so JS re-draws
        $this->dispatch('distChartUpdated',
            labels: array_keys($buckets),
            counts: array_values($buckets),
        );

    }

    public function render()
    {
        return view('livewire.dahya-month-stats');
    }
}