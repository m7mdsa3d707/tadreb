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

    // protected static ?string $relatedResource = UsersResource::class;



    public function table(Table $table): Table
    {
        return $table
            ->recordTitleAttribute('name')
            ->columns([
                TextColumn::make('leyaqa.month')
                    ->label('Leyaqa Test')
                    ->searchable()
                    ->sortable(),
                TextColumn::make('name')
                    ->label('Exercise')
                    ->searchable()
                    ->badge()
                    ->sortable(),

                TextColumn::make('nubmer')
                    ->label('Count')
                    ->sortable(),

                TextColumn::make('score')
                    ->label('Score %')
                    ->sortable()
                    ->formatStateUsing(fn($state) => round($state, 1) . '%')
                    ->badge()
                    ->color(fn($state) => $state >= 60 ? 'success' : 'danger'),
            ])
            ->defaultSort('leyaqa_id')
            ->defaultGroup('leyaqa.name')
            ->filters([])
            ->headerActions([]);
    }
}
