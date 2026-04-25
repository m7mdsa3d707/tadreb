<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class DahyaEntry extends Model
{
    protected $guarded = ['id'];
    // Display as MM:SS
    public function getDurationFormattedAttribute(): ?string
    {
        if (!$this->duration) return '—';
        return substr($this->duration, 3, 5);
    }

    public function dahyaWeek(): BelongsTo
    {
        return $this->belongsTo(DahyaWeek::class);
    }

    public function fogUser(): BelongsTo
    {
        return $this->belongsTo(FogUsers::class, 'fog_user_id');
    }

}
