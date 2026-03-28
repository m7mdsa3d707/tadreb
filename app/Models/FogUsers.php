<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class FogUsers extends Model
{
    protected $table = 'fog_users';
    protected $guarded = ['id'];


    public function groub(): BelongsTo
    {
        return $this->belongsTo(Groubs::class);
    }


    public function medanya(): BelongsTo
    {
        return $this->belongsTo(Medanya::class);
    }
    public function leyaqa(): BelongsTo
    {
        return $this->belongsTo(Leyaqa::class);
    }

    public function tests(): HasMany
    {
        return $this->hasMany(Test::class, 'users_id', 'id');
    }
}
