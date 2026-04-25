<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Dahya extends Model
{
    protected $table = 'dahyas';
    protected $guarded = ['id'];

    protected $casts = [
        'date' => 'date',
    ];

    // Display as MM:SS (drops the leading "00:")
    public function getDurationFormattedAttribute(): string
    {
        // duration is stored as "00:23:45" — return "23:45"
        return substr($this->duration, 3, 5);
    }

    public function fogUser(): BelongsTo
    {
        return $this->belongsTo(FogUsers::class, 'fog_user_id');
    }
}
