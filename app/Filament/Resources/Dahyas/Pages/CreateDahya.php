<?php

namespace App\Filament\Resources\Dahyas\Pages;

use App\Filament\Resources\Dahyas\DahyaResource;
use App\Models\DahyaWeek;
use Filament\Forms\Components\Select;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\CreateRecord;
use Filament\Schemas\Schema;

class CreateDahya extends CreateRecord
{
    protected static string $resource = DahyaResource::class;
    private ?DahyaWeek $firstWeek = null;

    public function form(Schema $schema): Schema
{
    return $schema->components([
        Select::make('month')
            ->options([
                'January' => 'January', 'February' => 'February',
                'March'   => 'March',   'April'    => 'April',
                'May'     => 'May',     'June'     => 'June',
                'July'    => 'July',    'August'   => 'August',
                'September' => 'September', 'October' => 'October',
                'November'  => 'November',  'December' => 'December',
            ])
            ->required()
            //->dehydrated(false), // ✅ don't try to save to DahyaWeek directly
    ]);
}


   protected function handleRecordCreation(array $data): DahyaWeek
{
    $month = $data['month'] ?? null;

    if (!$month) {
        Notification::make()
            ->title('Please select a month')
            ->danger()
            ->send();

        // return a dummy to avoid crash — Filament needs a model back
        return new DahyaWeek();
    }

    foreach ([1, 2, 3, 4] as $week) {
        $record = DahyaWeek::create([
            'month'       => $month,
            'week_number' => $week,
            'date'        => now()->toDateString(),
        ]);

        if ($this->firstWeek === null) {
            $this->firstWeek = $record;
        }
    }

    Notification::make()
        ->title("4 Dahya weeks created for {$month}")
        ->success()
        ->send();

    return $this->firstWeek;
}

    protected function getRedirectUrl(): string
    {
        return DahyaResource::getUrl('index');
    }

}
