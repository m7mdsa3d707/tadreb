<?php

namespace App\Filament\Resources\Medanyas\Pages;

use App\Filament\Resources\Medanyas\MedanyasResource;
use App\Models\FogUsers;
use App\Models\Test;
use App\Services\WorkoutScoreService;
use Filament\Actions\Action;
use Filament\Forms\Components\Hidden;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\TextInput;
use Filament\Infolists\Components\TextEntry;
use Filament\Resources\Pages\Concerns\InteractsWithRecord;
use Filament\Resources\Pages\Page;
use Filament\Schemas\Schema;
use Filament\Notifications\Notification;

class RunMedanyaTest extends Page
{
    use InteractsWithRecord;

    protected static string $resource = MedanyasResource::class;
    public array $data = [];

    protected string $view = 'filament.resources.medanyas.pages.run-medanya-test';

    public function mount(int|string $record): void
    {
        $this->record = $this->resolveRecord($record);

        $users = $this->record->fogUsers;

        foreach ($users as $user) {
            $this->data['users'][] = [
                'user_id' => $user->id,
                'name' => $user->name,
                'role' => $user->role,
                'pushup' => null,
                'pullup' => null,
                'situp' => null,
                'mod_run' => null,
            ];
        }
        $this->form->fill($this->data);
    }


    protected function getHeaderActions(): array
    {
        return [
            Action::make('runTest')
                ->label('Run Test')
                ->color('success')
                ->action('save'),
        ];
    }

    public function save()
    {
        $service = app(WorkoutScoreService::class);

        foreach ($this->data['users'] as $item) {

            $user = FogUsers::find($item['user_id']);

            foreach (['pushup', 'pullup', 'situps', 'moderated_run'] as $type) {

                $value = $item[$type] ?? 0;
                $score = $service->calculate(
                    $type,
                    $user->age,
                    $value
                );

                Test::updateOrCreate(
                    [
                        'users_id' => $user->id,
                        'medanya_id' => $this->record->id,
                        'name' => $type,
                    ],
                    [
                        'nubmer' => $value,
                        'score' => $score,
                    ]
                );
            }
        }

        Notification::make()
            ->title('Medanya test saved successfully')
            ->success()
            ->send();
    }

    public function form(Schema $schema): Schema
    {
        return $schema
            ->schema([
                Repeater::make('users')
                    ->schema([
                        Hidden::make('user_id'),

                        TextEntry::make('role')
                            ->label('Role'),

                        TextEntry::make('name')
                            ->label('Name'),

                        TextInput::make('pushup')
                            ->numeric()
                            ->placeholder('Enter pushups'),

                        TextInput::make('pullup')
                            ->numeric()
                            ->placeholder("Enter pullup"),

                        TextInput::make('situps')
                            ->numeric()
                            ->placeholder("Enter situp"),

                        TextInput::make('moderated_run')
                            ->numeric()
                            ->placeholder("Enter moderate run"),
                    ])
                    ->columns(6),

            ])
            ->statePath('data');
    }
}
