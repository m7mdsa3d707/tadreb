<?php

namespace App\Filament\Resources\Dahyas\Pages;

use App\Filament\Resources\Dahyas\DahyaResource;
use App\Filament\Resources\Dahyas\Widgets\DahyaWedget;
use App\Models\DahyaWeek;
use Filament\Actions\Action;
use Filament\Actions\CreateAction;
use Filament\Forms\Components\Select;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Contracts\HasForms;
use Filament\Resources\Pages\Page;
use Filament\Schemas\Schema;

class ListDahyas extends Page implements HasForms
{
    use InteractsWithForms;

    protected static string $resource = DahyaResource::class;
    protected string $view = 'filament.resources.dahyas.pages.list-dahyas';

    public ?string $selectedMonth = null;
    public array $data = [];
    public array $weeks = [];

    public function mount(): void
    {
        $this->selectedMonth = now()->format('F');
        $this->form->fill(['month' => $this->selectedMonth]);
        $this->loadWeeks();
    }

    public function form(Schema $schema): Schema
    {
        return $schema->schema([
            Select::make('month')
                ->options([
                    'January' => 'January', 'February' => 'February',
                    'March'   => 'March',   'April'    => 'April',
                    'May'     => 'May',     'June'     => 'June',
                    'July'    => 'July',    'August'   => 'August',
                    'September' => 'September', 'October' => 'October',
                    'November'  => 'November',  'December' => 'December',
                ])
                ->live()
                ->afterStateUpdated(function ($state) {
                    $this->selectedMonth = $state;
                    $this->loadWeeks();
                }),
        ])->statePath('data');
    }

    public function loadWeeks(): void
    {
        $this->weeks = [];

        if (!$this->selectedMonth) return;

        $this->weeks = DahyaWeek::where('month', $this->selectedMonth)
            ->orderBy('week_number')
            ->get()
            ->map(fn($w) => [
                'id'          => $w->id,
                'week_number' => $w->week_number,
                'date'        => $w->date?->format('d M Y') ?? '—',
                'has_entries' => $w->entries()->whereNotNull('duration')->exists(),
            ])
            ->toArray();
    }
    
    protected function getHeaderActions() : array {
        return [
            CreateAction::make()
                ->color('info'),
            // Action::make('Create New')
            //     ->label('New Dahya')
            //     ->color('info')
                // ->url(fn() => DahyaResource::getUrl('create')),
        ];
    }
}