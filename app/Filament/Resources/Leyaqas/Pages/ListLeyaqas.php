<?php

namespace App\Filament\Resources\Leyaqas\Pages;

use App\Filament\Resources\Leyaqas\LeyaqaResource;
use App\Models\Leyaqa;
use App\Models\Medanya;
use App\Models\Test;
use Filament\Resources\Pages\Page;
use Filament\Forms\Components\Select;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Contracts\HasForms;
use Filament\Schemas\Schema;

class ListLeyaqas extends Page implements HasForms
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

        $leyaqas = Leyaqa::where('month', $this->selectedMonth)
            ->orderByRaw("FIELD(name, 'First Medanya', 'Second Medanya', 'Third Medanya', 'Fourth Medanya')")
            ->get();

       foreach ($leyaqas as $leyaqa) {
        // Find the matching permanent Medanya by name to get its users and tests
        $medanya = Medanya::where('name', $leyaqa->name)->first();
        $hasTests = Test::where('leyaqa_id', $leyaqa->id)->exists();

        // if (!$medanya) continue;

        $rows = [];
        // $hasTests = Test::where('leyaqa_id', $medanya->id)->exists();
        // dd($hasTests);
        $allTests = Test::where('leyaqa_id', $leyaqa->id)
            ->with('user')
            ->get()
            ->groupBy('users_id');

            foreach ($allTests as $userId => $userTests) {
            $user       = $userTests->first()->user;
            $keyedTests = $userTests->keyBy('name');

            $pushupScore  = $keyedTests['pushup']->score         ?? 0;
            $pullupScore  = $keyedTests['pullup']->score         ?? 0;
            $situpScore   = $keyedTests['situps']->score         ?? 0;
            $runScore     = $keyedTests['moderated_run']->score  ?? 0;

            $pushupNumber = $keyedTests['pushup']->nubmer        ?? 0;
            $pullupNumber = $keyedTests['pullup']->nubmer        ?? 0;
            $situpNumber  = $keyedTests['situps']->nubmer        ?? 0;
            $runNumber    = $keyedTests['moderated_run']->nubmer ?? 0;

            $total = ($pushupScore + $pullupScore + $situpScore + $runScore) / 4;

            $rows[] = [
                'role'   => $user->role,
                'name'   => $user->name,
                'pushup' => ['score' => $pushupNumber, 'result' => round($pushupScore, 1)],
                'pullup' => ['score' => $pullupNumber, 'result' => round($pullupScore, 1)],
                'situp'  => ['score' => $situpNumber,  'result' => round($situpScore,  1)],
                'run'    => ['score' => $runNumber,    'result' => round($runScore,    1)],
                'total'  => round($total, 1),
            ];
        }

        $this->results[] = [
            'medanya'    => $leyaqa->name,
            'medanya_id' => $leyaqa->id,  // ✅ blade uses this for URLs — point to leyaqa
            'leyaqa_id'  => $leyaqa->id,
            'hasTests'   => $hasTests,
            'rows'       => $rows,
        ];

    //     foreach ($medanya->fogUsers as $user) {
    //         $tests = Test::where('users_id', $user->id)
    //             ->where('leyaqa_id', $leyaqa->id)
    //             ->get()
    //             ->keyBy('name');

    //         $pushupScore  = $tests['pushup']->score         ?? 0;
    //         $pullupScore  = $tests['pullup']->score         ?? 0;
    //         $situpScore   = $tests['situps']->score         ?? 0;
    //         $runScore     = $tests['moderated_run']->score  ?? 0;

    //         $pushupNumber = $tests['pushup']->nubmer        ?? 0;
    //         $pullupNumber = $tests['pullup']->nubmer        ?? 0;
    //         $situpNumber  = $tests['situps']->nubmer        ?? 0;
    //         $runNumber    = $tests['moderated_run']->nubmer ?? 0;

    //         $total = ($pushupScore + $pullupScore + $situpScore + $runScore) / 4;

    //         $rows[] = [
    //             'role'   => $user->role,
    //             'name'   => $user->name,
    //             'pushup' => ['score' => $pushupNumber, 'result' => round($pushupScore, 1)],
    //             'pullup' => ['score' => $pullupNumber, 'result' => round($pullupScore, 1)],
    //             'situp'  => ['score' => $situpNumber,  'result' => round($situpScore,  1)],
    //             'run'    => ['score' => $runNumber,    'result' => round($runScore,    1)],
    //             'total'  => round($total, 1),
    //         ];
    //     }

    //     $this->results[] = [
    //         'medanya'    => $leyaqa->name,
    //         'medanya_id' => $medanya->id,
    //         'leyaqa_id' => $leyaqa->id,
    //         'hasTests'   => $hasTests,
    //         'rows'       => $rows,
    //     ];
    }
    }
}
