<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Leyaqa extends Model
{
    protected $table =  'leyaqas';
    protected $guarded = ['id'];

    public function tests(): HasMany
{
    return $this->hasMany(Test::class);
}
}
