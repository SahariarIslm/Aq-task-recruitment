<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SensorMetadata extends Model
{
    use HasFactory;
    protected $fillable = ['slave_address'];
}
