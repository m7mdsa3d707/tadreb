<?php

namespace App\Filament\Resources\Leyaqas\Pages;

use App\Filament\Resources\Leyaqas\LeyaqaResource;
use App\Models\Medanya;
use App\Models\Test;
use Filament\Resources\Pages\Page;
use Filament\Forms\Components\Select;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Contracts\HasForms;
use Filament\Schemas\Schema;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListLeyaqas2 extends Page implements HasForms
{
    use InteractsWithForms;

    protected static string $resource = LeyaqaResource::class;
    protected string $view = 'filament.resources.leyaqas.pages.list-leyaqas';

    public ?string $selectedMonth = null;
    public array $data = [];
    public array $results = [];

    public function mount(): void
    {
        $this->selectedMonth = now()->format('F');
        $this->form->fill(['month' => $this->selectedMonth]);
        $this->loadResults();
    }

    public function form(Schema $schema): Schema
    {
        return $schema
            ->schema([
                Select::make('month')
                    ->options([
                        'January'   => 'January',
                        'February'  => 'February',
                        'March'     => 'March',
                        'April'     => 'April',
                        'May'       => 'May',
                        'June'      => 'June',
                        'July'      => 'July',
                        'August'    => 'August',
                        'September' => 'September',
                        'October'   => 'October',
                        'November'  => 'November',
                        'December'  => 'December',
                    ])
                    ->live()
                    ->afterStateUpdated(function ($state) {
                        $this->selectedMonth = $state;
                        $this->loadResults();
                    }),
            ])
            ->statePath('data');
    }

    public function loadResults(): void
    {
        $this->results = [];

        if (!$this->selectedMonth) return;

        $medanyas = Medanya::where('month', $this->selectedMonth)
            ->orderByRaw("FIELD(name, 'First', 'Second', 'Third', 'Fourth')")
            ->get();

        foreach ($medanyas as $medanya) {
            $rows = [];

            foreach ($medanya->fogUsers as $user) {
                $tests = Test::where('users_id', $user->id)
                    ->where('medanya_id', $medanya->id)
                    ->get()
                    ->keyBy('name');

                $pushupScore  = $tests['pushup']->score         ?? 0;
                $pullupScore  = $tests['pullup']->score         ?? 0;
                $situpScore   = $tests['situps']->score         ?? 0;
                $runScore     = $tests['moderated_run']->score  ?? 0;

                $pushupNumber = $tests['pushup']->nubmer        ?? 0;
                $pullupNumber = $tests['pullup']->nubmer        ?? 0;
                $situpNumber  = $tests['situps']->nubmer        ?? 0;
                $runNumber    = $tests['moderated_run']->nubmer ?? 0;

                $total = ($pushupScore + $pullupScore + $situpScore + $runScore) / 4;

                $rows[] = [
                    'role' => $user->role,
                    'name' => $user->name,
                    'pushup' => ['score' => $pushupNumber, 'result' => round($pushupScore, 1)],
                    'pullup' => ['score' => $pullupNumber, 'result' => round($pullupScore, 1)],
                    'situp'  => ['score' => $situpNumber,  'result' => round($situpScore,  1)],
                    'run'    => ['score' => $runNumber,    'result' => round($runScore,    1)],
                    'total'  => round($total, 1),
                ];
            }

            $this->results[] = [
                'medanya' => $medanya->name,
                'rows'    => $rows,
            ];
        }
    }
}
