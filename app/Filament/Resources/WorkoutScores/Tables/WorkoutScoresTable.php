<?php

namespace App\Filament\Resources\WorkoutScores\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Filament\Tables;

class WorkoutScoresTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
               TextColumn::make('workout_type')
               ->searchable(query: function (Builder $query, string $search) {
                            $query->where('workout_type', 'like', "%{$search}%");
                        }),
               TextColumn::make('score_value')
               ->searchable(query: function (Builder $query, string $search) {
                            $query->where('score_value', 'like', "%{$search}%");
                        }),
               TextColumn::make('percentage')
               ->searchable(query: function (Builder $query, string $search) {
                            $query->where('percentage', 'like', "%{$search}%");
                        }),

                TextColumn::make('min_age')
                ->toggleable(isToggledHiddenByDefault: true),
                
                TextColumn::make('max_age')
                ->toggleable(isToggledHiddenByDefault: true),
                
            ])
            ->filters([
                 Tables\Filters\SelectFilter::make('workout_type')
                    ->searchable()
                    ->preload(),
            ])
            ->groups([
                Tables\Grouping\Group::make('workout_type')
                    ->label('By Groub')
                    ->collapsible(),
                ])
                ->defaultGroup('workout_type')
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
