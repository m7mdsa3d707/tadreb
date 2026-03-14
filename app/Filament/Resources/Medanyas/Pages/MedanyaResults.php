<?php

namespace App\Filament\Resources\Medanyas\Pages;

// use App\Filament\Resources\MedanyasResource;
use App\Filament\Resources\Medanyas\MedanyasResource;
use App\Models\Test;
use Filament\Actions\Action;
use Filament\Resources\Pages\Concerns\InteractsWithRecord;
use Filament\Resources\Pages\Page;

class MedanyaResults extends Page
{
    use InteractsWithRecord;

    protected static string $resource = MedanyasResource::class;

    protected string $view = 'filament.resources.medanyas.pages.medanya-results';

    public array $results = [];

    public function mount(int|string $record)
    {
        $this->record = $this->resolveRecord($record);

        $users = $this->record->fogUsers;

        foreach ($users as $user) {

            $tests = Test::where('users_id', $user->id)
                ->where('medanya_id', $this->record->id)
                ->get()
                ->keyBy('name');

            $pushupScore = $tests['pushup']->score ?? 0;
            $pullupScore = $tests['pullup']->score ?? 0;
            $situpScore = $tests['situps']->score ?? 0;
            $runScore = $tests['moderated_run']->score ?? 0;

            // acculat data
            $pushupNumber = $tests['pushup']->nubmer ?? 0;
            $pullupNumber = $tests['pullup']->nubmer ?? 0;
            $situpNumber = $tests['situps']->nubmer ?? 0;
            $runNumber = $tests['moderated_run']->nubmer ?? 0;

            $total = ($pushupScore + $pullupScore + $situpScore + $runScore) / 4;

            $this->results[] = [
                'role' => $user->role,
                'name' => $user->name,
                'pushup' => [
                    'score' => $pushupNumber,
                    'result' => $pushupScore,
                ],
                'pullup' => [
                    'score' => $pullupNumber,
                    'result' => $pullupScore,
                ],
                'situp' => [
                    'score' => $situpNumber,
                    'result' => $situpScore,
                ],
                'run' => [
                    'score' => $runNumber,
                    'result' => $runScore,
                ],
                // 'pullup' => $pullupScore,
                // 'situp' => $situpScore,
                // 'run' => $runScore,
                'total' => $total,
            ];
        }
    }

    protected function getHeaderActions(): array
    {
        return [
            Action::make('results')
                ->label('View Results')
                ->url(fn() => MedanyasResource::getUrl('results', [
                    'record' => $this->record,
                ]))
                ->color('info'),

            Action::make('runTest')
                ->label('Run Test')
                ->color('success')
                ->action('save'),
        ];
    }
}
