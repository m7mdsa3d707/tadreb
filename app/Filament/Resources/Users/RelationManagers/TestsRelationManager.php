<?php

namespace App\Filament\Resources\Users\RelationManagers;

use App\Filament\Resources\Users\UsersResource;
// use Filament\Actions\ViewAction;
// use Filament\Resources\RelationManagers\RelationManager;
// use Filament\Tables\Table;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class TestsRelationManager extends RelationManager
{
    protected static string $relationship = 'tests';


    protected static ?string $title = 'Tests';

    protected static ?string $relatedResource = UsersResource::class;



    public function table(Table $table): Table
    {
        return $table
            ->recordTitleAttribute('name')
            ->columns([
                // TextColumn::make('medanya.name')
                //     ->label('Medanya')
                //     ->searchable()
                //     ->sortable(),
            ])
            // ->defaultSort('medanya_id')
            ->filters([])
            ->headerActions([]);
    }
}
