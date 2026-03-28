<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
// use Illuminate\Database\Eloquent\Relations\HasMany;

class Test extends Model
{
    protected $table = 'tests';
    protected $guarded = ['id'];


    public function user(): BelongsTo
    {
        return $this->belongsTo(FogUsers::class, 'users_id', 'id');
    }

    public function medanya(): BelongsTo
    {
        return $this->belongsTo(Medanya::class, 'medanya_id', 'id');
    }
    public function leyaqa(): BelongsTo
    {
        return $this->belongsTo(Leyaqa::class, 'leyaqa_id', 'id');
    }
}
