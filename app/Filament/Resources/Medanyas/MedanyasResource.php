<?php

namespace App\Filament\Resources\Medanyas;

use App\Filament\Resources\Medanyas\Pages\CreateMedanyas;
use App\Filament\Resources\Medanyas\Pages\EditMedanyas;
use App\Filament\Resources\Medanyas\Pages\ListMedanyas;
use App\Filament\Resources\Medanyas\Pages\MedanyaResults;
use App\Filament\Resources\Medanyas\Pages\RunMedanyaTest;
use App\Filament\Resources\Medanyas\Pages\ViewMedanyas;
use App\Filament\Resources\Medanyas\RelationManagers\FogUsersRelationManager;
use App\Filament\Resources\Medanyas\Schemas\MedanyasForm;
use App\Filament\Resources\Medanyas\Schemas\MedanyasInfolist;
use App\Filament\Resources\Medanyas\Tables\MedanyasTable;
use App\Filament\Resources\Medanyas\Widgets\MedanyaWidget;
use App\Models\Medanya;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class MedanyasResource extends Resource
{
    protected static ?string $model = Medanya::class;
    protected static ?string $modelLabel = 'Medanya';
    protected static ?string $pluralModelLabel = 'Medanyat';

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedQueueList;

    protected static ?string $recordTitleAttribute = 'name';

    public static function form(Schema $schema): Schema
    {
        return MedanyasForm::configure($schema);
    }

    public static function infolist(Schema $schema): Schema
    {
        return MedanyasInfolist::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return MedanyasTable::configure($table);
    }

    public static function getRelations(): array
    {
        return [
            FogUsersRelationManager::class,
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => ListMedanyas::route('/'),
            'create' => CreateMedanyas::route('/create'),
            'view' => ViewMedanyas::route('/{record}'),
            'edit' => EditMedanyas::route('/{record}/edit'),
            // 'run-test' => RunMedanyaTest::route('/{record}/run-test'),
            // 'results' => MedanyaResults::route('/{record}/results'),
        ];
    }


}
