<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class fleet_vehicle extends Model
{
    use HasFactory;
    protected $table = 'fleet_vehicle';
    protected $primaryKey = 'id';
    public $timestamps = false;

    public function driver()
    {
        return $this->belongsTo(res_users::class, 'driver_id', 'id');
    }
    public function future_driver()
    {
        return $this->belongsTo(res_users::class, 'future_driver_id', 'id');
    }
    public function fleet_vehicle_model()
    {
        return $this->hasOne(fleet_vehicle_model::class,'brand_id','id');
    }
    public function fleet_vehicle_odometer()
    {
        return $this->hasMany(fleet_vehicle_odometer::class,'vehicle_id','id');
    }
}
