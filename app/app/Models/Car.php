<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Car extends Model
{
    use HasFactory;

    protected $table = 'cars';
    protected $primaryKey = 'Id';
    public $timestamps = false;

    protected $fillable = [
        'Make',
        'model',
        'Year',
        'price',
        'Handling',
        'Speed',
        'Comfort',
        'Looks'
    ];


}
