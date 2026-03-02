<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Groubs extends Model
{
    /** @use HasFactory<\Database\Factories\GroubsFactory> */
    use HasFactory;

    protected $table = 'groubs';
    protected $guarded = ['id'];
    // protected $fillable = ['name'];

    public function fogUsers() : HasMany
    {
        return $this->hasMany(FogUsers::class);
    }
}