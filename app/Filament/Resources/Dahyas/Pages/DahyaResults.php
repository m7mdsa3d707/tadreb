<?php

namespace App\Filament\Resources\Dahyas\Pages;

use App\Filament\Resources\Dahyas\DahyaResource;
use App\Models\DahyaEntry;
use App\Models\DahyaWeek;
use Filament\Actions\Action;
use Filament\Resources\Pages\Page;

class DahyaResults extends Page
{
    protected static string $resource = DahyaResource::class;
    protected string $view = 'filament.resources.dahyas.pages.dahya-results';

    public array $results = [];
    public int $weekId;
    public int $weekNumber;
    public string $month = '';
    public string $date  = '';

    public function mount(DahyaWeek $record): void
    {
        $this->weekId     = $record->id;
        $this->weekNumber = $record->week_number;
        $this->month      = $record->month;
        $this->date       = $record->date?->format('d M Y') ?? '—';

        $entries = DahyaEntry::where('dahya_week_id', $record->id)
            ->with('fogUser')
            ->whereNotNull('duration')
            ->orderBy('duration', 'asc') // ✅ fastest first
            ->get();

        foreach ($entries as $i => $entry) {
            $this->results[] = [
                'rank'     => $i + 1,
                'role'     => $entry->fogUser->role,
                'name'     => $entry->fogUser->name,
                'duration' => substr($entry->duration, 3, 5), // MM:SS
            ];
        }
    }

    protected function getHeaderActions(): array
    {
        return [
            Action::make('reRun')
                ->label('Re-run Week')
                ->color('warning')
                ->url(fn() => DahyaResource::getUrl('run', [
                    'record' => $this->weekId,
                ])),
        ];
    }
}