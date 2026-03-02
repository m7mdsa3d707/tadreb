<?php

namespace App\Filament\Resources\Users\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Tables\Table;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables;
use Illuminate\Database\Eloquent\Builder;

class UsersTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                    TextColumn::make('name')
                    ->searchable(query: function (Builder $query, string $search) {
                            $query->where('name', 'like', "%{$search}%");
                        }),
                TextColumn::make('medanya.name')
               
            ])
           ->filters([
                Tables\Filters\SelectFilter::make('Groub')
                    ->relationship('Groub', 'name')
                    ->searchable()
                    ->preload(),
                Tables\Filters\SelectFilter::make('Medanya')
                    ->relationship('Medanya', 'name')
                    ->searchable()
                    ->preload(),
            ])
            ->groups([
                Tables\Grouping\Group::make('Groub.name')
                    ->label('By Groub')
                    ->collapsible(),
                Tables\Grouping\Group::make('Medanya.name')
                    ->label('By Medanya')
                    ->collapsible(),
            ])
            ->defaultGroup('Groub.name')
            ->recordActions([
                ViewAction::make(),
                EditAction::make(),
            ])
            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}
