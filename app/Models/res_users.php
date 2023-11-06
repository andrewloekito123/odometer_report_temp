<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class res_users extends Model
{
    use HasFactory;

    protected $table = 'res_users';
    protected $primaryKey = 'id';
    public $timestamps = false;

    public function driver()
    {
        return $this->hasMany(fleet_vehicle::class, 'driver_id', 'id');
    }
    public function future_driver()
    {
        return $this->hasMany(fleet_vehicle::class, 'future_driver_id', 'id');
    }
}
