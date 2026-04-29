<?php

namespace App\Filament\Resources\Dahyas;

use App\Filament\Resources\Dahyas\Pages\CreateDahya;
use App\Filament\Resources\Dahyas\Pages\DahyaResults;
use App\Filament\Resources\Dahyas\Pages\EditDahya;
use App\Filament\Resources\Dahyas\Pages\ListDahyas;
use App\Filament\Resources\Dahyas\Pages\RunDahyaWeek;
use App\Filament\Resources\Dahyas\Pages\ViewDahya;
use App\Filament\Resources\Dahyas\Schemas\DahyaForm;
use App\Filament\Resources\Dahyas\Schemas\DahyaInfolist;
use App\Filament\Resources\Dahyas\Tables\DahyasTable;
use App\Filament\Resources\Dahyas\Widgets\DahyaWedget;
use App\Models\DahyaWeek;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class DahyaResource extends Resource
{
    protected static ?string $model = DahyaWeek::class;
    protected static ?string $modelLabel = 'Dahya';
    //protected static ?string $pluralModelLabel = 'Dahyat';

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedFire;

    public static function form(Schema $schema): Schema
    {
        return DahyaForm::configure($schema);
    }

    public static function infolist(Schema $schema): Schema
    {
        return DahyaInfolist::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return DahyasTable::configure($table);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => ListDahyas::route('/'),
            'create' => CreateDahya::route('/create'),
            'view' => ViewDahya::route('/{record}'),
            'edit' => EditDahya::route('/{record}/edit'),
            'run'     => RunDahyaWeek::route('/{record}/run'),
            'results' => DahyaResults::route('/{record}/results'),

        ];
    }
}
