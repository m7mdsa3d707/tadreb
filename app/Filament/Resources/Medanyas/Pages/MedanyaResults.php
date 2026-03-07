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

            $pushup = $tests['pushups']->score ?? 0;
            $pullup = $tests['pullups']->score ?? 0;
            $situp = $tests['situp']->score ?? 0;
            $run = $tests['moderate_run']->score ?? 0;

            $total = ($pushup + $pullup + $situp + $run) / 4;

            $this->results[] = [
                'role' => $user->role,
                'name' => $user->name,
                'pushup' => $pushup,
                'pullup' => $pullup,
                'situp' => $situp,
                'run' => $run,
                'total' => $total,
            ];
        }
    }

    protected function getHeaderActions(): array
    {
        return [
            Action::make('results')
                ->label('View Results')
                ->url(fn () => MedanyasResource::getUrl('results', [
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