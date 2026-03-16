<?php

namespace App\Filament\Resources\Medanyas\Pages;

use App\Filament\Resources\Medanyas\MedanyasResource;
use App\Models\Medanya;
use Filament\Resources\Pages\CreateRecord;
use Filament\Notifications\Notification;

class CreateMedanyas extends CreateRecord
{
    protected static string $resource = MedanyasResource::class;

    // Stop the default single-record creation
    protected function handleRecordCreation(array $data): Medanya
    {
        $month = $data['month'];

        $names = ['First Medanya', 'Second Medanya', 'Third Medanya', 'Fourth Medanya'];

        $first = null;

        foreach ($names as $name) {
            $record = Medanya::create([
                'name'  => $name,
                'month' => $month,
            ]);

            if ($first === null) {
                $first = $record;
            }
        }

        Notification::make()
            ->title("4 Medanyas created for {$month}")
            ->success()
            ->send();

        // Return first record so Filament redirects correctly
        return $first;
    }
}
