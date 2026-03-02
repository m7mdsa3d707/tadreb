<?php

namespace App\Filament\Resources\Medanyas\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Tables\Table;
use Filament\Tables\Columns\TextColumn;

class MedanyasTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                 TextColumn::make('name')
                 ->searchable(query: function (Builder $query, string $search) {
                        $query->where('name', 'like', "%{$search}%");
                    }),
                 TextColumn::make('month')
                 ->searchable(query: function (Builder $query, string $search) {
                        $query->where('month', 'like', "%{$search}%");
                    }),
            ])
            ->filters([
                //
            ])
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
