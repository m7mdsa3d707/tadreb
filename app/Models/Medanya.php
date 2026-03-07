<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Medanya extends Model
{
    protected $table = 'medanyas';
    protected $guarded = ['id'];

    public function fogUsers() : HasMany
    {
        return $this->hasMany(FogUsers::class);
    }

    public function tests() : HasMany
    {
        return $this->hasMany(Test::class);
    }
}
