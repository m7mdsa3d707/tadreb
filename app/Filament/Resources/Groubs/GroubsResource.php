<?php

namespace App\Filament\Resources\Groubs;

use App\Filament\Resources\Groubs\Pages\CreateGroubs;
use App\Filament\Resources\Groubs\Pages\EditGroubs;
use App\Filament\Resources\Groubs\Pages\ListGroubs;
use App\Filament\Resources\Groubs\Pages\ViewGroubs;
use App\Filament\Resources\Groubs\Schemas\GroubsForm;
use App\Filament\Resources\Groubs\Schemas\GroubsInfolist;
use App\Filament\Resources\Groubs\Tables\GroubsTable;
use App\Models\Groubs;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class GroubsResource extends Resource
{
    protected static ?string $model = Groubs::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedEnvelope;

    protected static ?string $recordTitleAttribute = 'name';

    public static function form(Schema $schema): Schema
    {
        return GroubsForm::configure($schema);
    }

    public static function infolist(Schema $schema): Schema
    {
        return GroubsInfolist::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return GroubsTable::configure($table);
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
            'index' => ListGroubs::route('/'),
            'create' => CreateGroubs::route('/create'),
            'view' => ViewGroubs::route('/{record}'),
            'edit' => EditGroubs::route('/{record}/edit'),
        ];
    }
}
