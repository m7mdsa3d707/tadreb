<?php
namespace App\Filament\Resources\Leyaqas\Pages;

use App\Filament\Resources\Leyaqas\LeyaqaResource;
use App\Models\FogUsers;
use App\Models\Medanya;
use App\Models\Test;
use App\Services\WorkoutScoreService;
use Filament\Actions\Action;
use Filament\Forms\Components\Hidden;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Infolists\Components\TextEntry;
use Filament\Resources\Pages\Page;
use Filament\Schemas\Schema;
use Filament\Notifications\Notification;

class RunMedanyaTest extends Page
{
    protected static string $resource = LeyaqaResource::class;

    public array $data = [];
    public array $addUserData = [];
    public int $medanyaId;
    public string $medanyaName = '';

    protected string $view = 'filament.resources.leyaqas.pages.run-medanya-test';

    public function mount(int $medanya): void
    {
        $medanya = Medanya::findOrFail($medanya);
        $this->medanyaId   = $medanya->id;
        $this->medanyaName = $medanya->name;

        $this->loadUsers($medanya);

        $this->form->fill($this->data);
        $this->addUserForm->fill();
    }

    protected function loadUsers(Medanya $medanya): void
    {
        $existingIds = collect($this->data['users'] ?? [])->pluck('user_id')->toArray();

        foreach ($medanya->fogUsers as $user) {
            if (in_array($user->id, $existingIds)) continue;

            $existing = Test::where('users_id', $user->id)
                ->where('medanya_id', $medanya->id)
                ->get()
                ->keyBy('name');

            $this->data['users'][] = [
                'user_id'       => $user->id,
                'name'          => $user->name,
                'role'          => $user->role,
                'pushup'        => $existing['pushup']->nubmer        ?? null,
                'pullup'        => $existing['pullup']->nubmer        ?? null,
                'situps'        => $existing['situps']->nubmer        ?? null,
                'moderated_run' => $existing['moderated_run']->nubmer ?? null,
            ];
        }
    }

    public function addUser(): void
    {
        $userId = $this->addUserData['user_id'] ?? null;

        if (!$userId) return;

        // prevent duplicates
        $exists = collect($this->data['users'] ?? [])
            ->contains('user_id', $userId);

        if ($exists) {
            Notification::make()
                ->title('User already in the list')
                ->warning()
                ->send();
            return;
        }

        $user = FogUsers::findOrFail($userId);

        $existing = Test::where('users_id', $user->id)
            ->where('medanya_id', $this->medanyaId)
            ->get()
            ->keyBy('name');

        $this->data['users'][] = [
            'user_id'       => $user->id,
            'name'          => $user->name,
            'role'          => $user->role,
            'pushup'        => $existing['pushup']->nubmer        ?? null,
            'pullup'        => $existing['pullup']->nubmer        ?? null,
            'situps'        => $existing['situps']->nubmer        ?? null,
            'moderated_run' => $existing['moderated_run']->nubmer ?? null,
        ];

        $this->form->fill($this->data);
        $this->addUserForm->fill(); // reset the select
    }

    protected function getHeaderActions(): array
    {
        return [
            Action::make('viewResults')
                ->label('View Results')
                ->color('info')
                ->url(fn() => LeyaqaResource::getUrl('medanya-results', [
                    'medanya' => $this->medanyaId,
                ])),

            Action::make('saveTest')
                ->label('Save Test')
                ->color('success')
                ->action('save'),
        ];
    }

    public function save(): void
    {
        $service = app(WorkoutScoreService::class);

        foreach ($this->data['users'] as $item) {
            $user = FogUsers::find($item['user_id']);

            foreach (['pushup', 'pullup', 'situps', 'moderated_run'] as $type) {
                $value = $item[$type] ?? 0;
                $score = $service->calculate($type, $user->age, $value);

                Test::updateOrCreate(
                    [
                        'users_id'   => $user->id,
                        'medanya_id' => $this->medanyaId,
                        'name'       => $type,
                    ],
                    [
                        'nubmer' => $value,
                        'score'  => $score,
                    ]
                );
            }
        }

        Notification::make()
            ->title('Test saved successfully')
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
                        TextEntry::make('role')->label('Role'),
                        TextEntry::make('name')->label('Name'),
                        TextInput::make('pushup')->numeric()->placeholder('Pushups'),
                        TextInput::make('pullup')->numeric()->placeholder('Pullup'),
                        TextInput::make('situps')->numeric()->placeholder('Situp'),
                        TextInput::make('moderated_run')->numeric()->placeholder('Mod Run'),
                    ])
                    ->columns(6)
                    ->deletable(true)
                    ->addable(false)
                    ->reorderable(false),
            ])
            ->statePath('data');
    }

    public function addUserForm(Schema $schema): Schema
    {
        return $schema
            ->schema([
                Select::make('user_id')
                    ->label('Add user from another medanya')
                    ->placeholder('Search user...')
                    ->searchable()
                    ->options(
                        FogUsers::orderBy('name')
                            ->get()
                            ->mapWithKeys(fn($u) => [
                                $u->id => "{$u->name} ({$u->role})"
                            ])
                    ),
            ])
            ->statePath('addUserData');
    }
}