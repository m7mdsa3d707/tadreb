<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class DahyaWeek extends Model
{
    protected $guarded = ['id'];
    protected $casts = ['date' => 'date'];

    public function entries(): HasMany
    {
        return $this->hasMany(DahyaEntry::class);
    }

}
