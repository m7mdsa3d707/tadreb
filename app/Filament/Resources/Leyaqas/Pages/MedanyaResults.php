<?php

namespace App\Filament\Resources\Leyaqas\Pages;

use App\Filament\Resources\Leyaqas\LeyaqaResource;
use App\Models\Medanya;
use App\Models\Test;
use Filament\Actions\Action;
use Filament\Resources\Pages\Page;

class MedanyaResults extends Page
{
    protected static string $resource = LeyaqaResource::class;

    protected string $view = 'filament.resources.leyaqas.pages.medanya-results';

    public array $results = [];
    public int $medanyaId;
    public string $medanyaName = '';

    public function mount(int $medanya): void
    {
        $medanya = Medanya::findOrFail($medanya);
        $this->medanyaId   = $medanya->id;
        $this->medanyaName = $medanya->name;

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

            $this->results[] = [
                'role'   => $user->role,
                'name'   => $user->name,
                'pushup' => ['score' => $pushupNumber, 'result' => round($pushupScore, 1)],
                'pullup' => ['score' => $pullupNumber, 'result' => round($pullupScore, 1)],
                'situp'  => ['score' => $situpNumber,  'result' => round($situpScore,  1)],
                'run'    => ['score' => $runNumber,     'result' => round($runScore,   1)],
                'total'  => round($total, 1),
            ];
        }
    }

    protected function getHeaderActions(): array
    {
        return [
            Action::make('reRunTest')
                ->label('Re-run Test')
                ->color('warning')
                ->url(fn() => LeyaqaResource::getUrl('run-medanya-test', [
                    'medanya' => $this->medanyaId,
                ])),
        ];
    }
}
