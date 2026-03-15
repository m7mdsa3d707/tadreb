<?php

namespace App\Filament\Resources\Leyaqas;

use App\Filament\Resources\Leyaqas\Pages\CreateLeyaqa;
use App\Filament\Resources\Leyaqas\Pages\EditLeyaqa;
use App\Filament\Resources\Leyaqas\Pages\ListLeyaqas;
use App\Filament\Resources\Leyaqas\Pages\CreateMedanyaTest;
use App\Filament\Resources\Leyaqas\Pages\MedanyaResults;
use App\Filament\Resources\Leyaqas\Pages\RunMedanyaTest;
use App\Filament\Resources\Leyaqas\Schemas\LeyaqaForm;
use App\Filament\Resources\Leyaqas\Tables\LeyaqasTable;
use App\Models\Leyaqa;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class LeyaqaResource extends Resource
{
    protected static ?string $model = Leyaqa::class;
    protected static ?string $modelLabel = 'Leyaqa';
    protected static ?string $pluralModelLabel = 'Tamarin El Leyaqa';

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    protected static ?string $recordTitleAttribute = 'name';

    public static function form(Schema $schema): Schema
    {
        return LeyaqaForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return LeyaqasTable::configure($table);
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
            'index' => ListLeyaqas::route('/'),
            'create' => CreateLeyaqa::route('/create'),
            'edit' => EditLeyaqa::route('/{record}/edit'),
            'run-medanya-test'  => RunMedanyaTest::route('/medanya/{medanya}/run-test'),
            'medanya-results'   => MedanyaResults::route('/medanya/{medanya}/results'),
            // 'index' => CreateMedanyaTest::route('/'),
        ];
    }
}
