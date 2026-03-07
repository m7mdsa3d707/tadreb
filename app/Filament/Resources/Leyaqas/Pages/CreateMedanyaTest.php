<?php

namespace App\Filament\Resources\Leyaqas\Pages;

use App\Filament\Resources\Leyaqas\LeyaqaResource;
use Filament\Resources\Pages\Concerns\InteractsWithRecord;
use Filament\Resources\Pages\Page;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use Filament\Schemas\Components\Form;

class CreateMedanyaTest extends Page
{
    use InteractsWithRecord;

    protected static string $resource = LeyaqaResource::class;

    protected string $view = 'filament.resources.leyaqas.pages.create-medanya-test';

    public function mount(int|string $record): void
    {
        $this->record = $this->resolveRecord($record);
    }
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('medanya_id')
                    ->relationship('medanya', 'name')
                    ->required(),

                Select::make('workout_type')
                    ->options([
                        'pushup' => 'Push Up',
                        'situp' => 'Sit Up',
                        'pullup' => 'Pull Up',
                        'running' => 'Running',
                    ])
                    ->required(),

                TextInput::make('score')
                    ->numeric()
                    ->required(),
            ]);
    }
}
