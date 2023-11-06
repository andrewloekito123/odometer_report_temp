<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class fleet_vehicle_odometer extends Model
{
    use HasFactory;
    protected $table = 'fleet_vehicle_odometer';
    protected $primaryKey = 'id';
    public $timestamps = false;

    public function fleet_vehicle()
    {
        return $this->belongsToMany(fleet_vehicle::class, 'id', 'vehicle_id');
    }
}
