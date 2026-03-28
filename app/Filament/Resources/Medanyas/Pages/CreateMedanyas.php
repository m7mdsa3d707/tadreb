<?php

namespace App\Filament\Resources\Medanyas\Pages;

use App\Filament\Resources\Leyaqas\LeyaqaResource;
use App\Filament\Resources\Medanyas\MedanyasResource;
use App\Models\Leyaqa;
use App\Models\Medanya;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\CreateRecord;

class CreateMedanyas extends CreateRecord
{
    protected static string $resource = MedanyasResource::class;
    private ?Leyaqa $firstLeyaqa = null; // store for redirect

    // Stop the default single-record creation
    protected function handleRecordCreation(array $data): Medanya
    {
        $month = $data['month'];

        $names = ['First Medanya', 'Second Medanya', 'Third Medanya', 'Fourth Medanya'];

        // $first = null;

        foreach ($names as $name) {
            $record = Leyaqa::create([
                'name'  => $name,
                'month' => $month,
            ]);

            if ($this->firstLeyaqa === null) {
                $this->firstLeyaqa = $record;
            }
            // if ($first === null) {
            //     $first = $record;
            // }
        }

        Notification::make()
            ->title("4 Medanyas Leyaqa Tests created for {$month}")
            ->success()
            ->send();

        // Return first record so Filament redirects correctly
         return Medanya::firstOrCreate(['name' => 'First Medanya']);
        // return $first;
    }

    protected function getRedirectUrl(): string
    {
        return LeyaqaResource::getUrl('run-medanya-test', [
            'medanya' => $this->firstLeyaqa->id,
        ]);
    }
}
