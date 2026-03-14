<?php

namespace App\Filament\Resources\Groubs\RelationManagers;

use App\Filament\Resources\Groubs\GroubsResource;
use Filament\Actions\CreateAction;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables\Table;
use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables;
use Illuminate\Database\Eloquent\Builder;

class FogUsersRelationManager extends RelationManager
{
    protected static string $relationship = 'fogUsers';

    protected static ?string $relatedResource = GroubsResource::class;

    public function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')
                    ->searchable(query: function (Builder $query, string $search) {
                        $query->where('name', 'like', "%{$search}%");
                    }),
                // TextColumn::make('medanya.name')

                // ])
                // ->filters([
                //     Tables\Filters\SelectFilter::make('Groub')
                //         ->relationship('Groub', 'name')
                //         ->searchable()
                //         ->preload(),
            ])
            ->groups([
                Tables\Grouping\Group::make('Groub.name')
                    ->label('By Groub')
                    ->collapsible(),
            ])
            ->defaultGroup('Groub.name')
            ->recordActions([
                // ViewAction::make(),
                // EditAction::make(),
            ])
            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}
