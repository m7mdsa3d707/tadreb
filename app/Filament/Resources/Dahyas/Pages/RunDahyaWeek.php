<?php

namespace App\Filament\Resources\Dahyas\Pages;

use App\Filament\Resources\Dahyas\DahyaResource;
use App\Models\DahyaEntry;
use App\Models\DahyaWeek;
use App\Models\FogUsers;
use Filament\Actions\Action;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Select;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Contracts\HasForms;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\Page;
use Filament\Schemas\Schema;

class RunDahyaWeek extends Page implements HasForms
{
    use InteractsWithForms;

    protected static string $resource = DahyaResource::class;
    protected string $view = 'filament.resources.dahyas.pages.run-dahya-week';

    public ?string $selectedUserId = null;
    public array $addUserData = [];
    public array $selectedUsers = [];
    public bool $selectAll = false;
    public array $data = [];
    public array $users = [];
    public int $weekId;
    public int $weekNumber;
    public string $month = '';

    public function mount(DahyaWeek $record): void
    {
        $this->weekId     = $record->id;
        $this->weekNumber = $record->week_number;
        $this->month      = $record->month;

        $existingEntries = DahyaEntry::where('dahya_week_id', $record->id)
            ->with('fogUser')
            ->get()
            ->keyBy('fog_user_id');

        $this->users = $existingEntries->isNotEmpty()
            ? $existingEntries->map(fn($e) => [
                'fog_user_id'      => $e->fog_user_id,
                'name'             => $e->fogUser->name,
                'role'             => $e->fogUser->role,
                'duration_minutes' => $e->duration ? (int) substr($e->duration, 3, 2) : null, // ✅
                'duration_seconds' => $e->duration ? (int) substr($e->duration, 6, 2) : null, // ✅
            ])->values()->toArray()
            : FogUsers::orderBy('name')->get()->map(fn($u) => [
                'fog_user_id'      => $u->id,
                'name'             => $u->name,
                'role'             => $u->role,
                'duration_minutes' => null, // ✅
                'duration_seconds' => null, // ✅
            ])->toArray();

        $this->form->fill([
            'date'  => $record->date?->toDateString() ?? now()->toDateString(),
            // 'users' => $users,
        ]);
    }

    public function form(Schema $schema): Schema
    {
        return $schema
            ->schema([
                DatePicker::make('date')
                    ->label('Week Date (shared for all users)')
                    ->required()
                    ->default(now()->toDateString()),

                // Repeater::make('users')
                //     ->schema([
                //         Hidden::make('fog_user_id'),
                //         TextInput::make('role')
                //             ->label('Role')
                //             ->disabled()
                //             ->dehydrated(true),
                //         TextInput::make('name')
                //             ->label('Name')
                //             ->disabled(),
                //             // ->dehydrated(true),
                //         TextInput::make('duration_minutes')
                //             ->label('Minutes')
                //             ->numeric()
                //             ->minValue(0)
                //             ->maxValue(99)
                //             ->suffix('min'),
                //             // ->dehydrated(false),

                //         TextInput::make('duration_seconds')
                //             ->label('Seconds')
                //             ->numeric()
                //             ->minValue(0)
                //             ->maxValue(59)
                //             ->suffix('sec')
                //             ->dehydrated(false),
                //     ])
                //     ->columns(4)
                //     ->deletable(true)
                //     ->addable(false)
                //     ->reorderable(false),
            ])
            ->statePath('data');
    }

    public function addUserForm(Schema $schema): Schema
    {
        return $schema
            ->schema([
                Select::make('selectedUserId')
                    ->label('Add user back')
                    ->placeholder('Search user...')
                    ->searchable()
                    ->options(
                        FogUsers::orderBy('name')
                            ->get()
                            ->mapWithKeys(fn($u) => [
                                $u->id => "{$u->name} ({$u->role})"
                            ])
                    ),
            ]);
    }

    public function save(): void
    {
        $date  = $this->data['date'];
        // $users = $this->data['users'] ?? [];

        // Update week date
        DahyaWeek::where('id', $this->weekId)->update(['date' => $date]);

        // Delete old entries and re-save
        DahyaEntry::where('dahya_week_id', $this->weekId)->delete();

        foreach ($this->users as $item) {
            $fogUserId = $item['fog_user_id'] ?? null;
            if (!$fogUserId) continue;

            $mins = (int) ($item['duration_minutes'] ?? 0);
            $secs = (int) ($item['duration_seconds'] ?? 0);


            // Store as "00:MM:SS" so MySQL time column accepts it
            $duration = sprintf('00:%02d:%02d', $mins, $secs);

            DahyaEntry::create([
                'dahya_week_id' => $this->weekId,
                'fog_user_id'   => $fogUserId,
                'duration'      => $duration, // ✅ was $item['duration']
            ]);
        }

        Notification::make()
            ->title('Week saved successfully')
            // ->title(__('Saved successfully'))
            ->success()
            ->send();
    }

    public function deleteSelected(): void
    {
        if (empty($this->selectedUsers)) {
            Notification::make()
                ->title('No users selected')
                ->warning()
                ->send();
            return;
        }

        $this->users = collect($this->users ?? [])
            ->filter(fn($user) => !in_array($user['fog_user_id'], $this->selectedUsers))
            ->values()
            ->toArray();

        $this->selectedUsers = [];
        $this->form->fill($this->data);

        Notification::make()
            ->title('Selected users removed')
            ->success()
            ->send();
    }
    public function updatedSelectAll(bool $value): void
    {
        $this->selectedUsers = $value
            ? collect($this->users ?? [])->pluck('fog_user_id')->map(fn($id) => (string) $id)->toArray()
            : [];
    }


    public function addUser(): void
    {
        $userId = $this->selectedUserId;

        if (!$userId) return;

        $exists = collect($this->users ?? [])
            ->contains('fog_user_id', (int) $userId);

        if ($exists) {
            Notification::make()
                ->title('User already in the list')
                ->warning()
                ->send();
            return;
        }

        $user = FogUsers::findOrFail($userId);

        // $users   = $this->users ?? [];
        // $users[] = [
        //     'fog_user_id'      => $user->id,
        //     'name'             => $user->name,
        //     'role'             => $user->role,
        //     'duration_minutes' => null,
        //     'duration_seconds' => null,
        // ];

        $this->users = array_merge($this->users ?? [], [[
            'fog_user_id'      => $user->id,
            'name'             => $user->name,
            'role'             => $user->role,
            'duration_minutes' => null,
            'duration_seconds' => null,
        ]]);

        // $this->data = array_merge($this->data, ['users' => $users]);
        $this->selectedUserId = null;
        $this->addUserForm->fill();
        // $this->dispatch('$refresh');


        Notification::make()
            ->title('User added back')
            ->success()
            ->send();
    }

    protected function getHeaderActions(): array
    {
        return [
            Action::make('viewResults')
                ->label('View Results')
                ->color('info')
                ->url(fn() => DahyaResource::getUrl('results', [
                    'record' => $this->weekId,
                ])),

            Action::make('save')
                ->label('Save')
                ->color('success')
                ->action('save'),
            Action::make('deleteSelected')
                ->label('Delete Selected')
                ->color('danger')
                ->icon('heroicon-o-trash')
                ->requiresConfirmation()
                ->action('deleteSelected'),
        ];
    }
}
