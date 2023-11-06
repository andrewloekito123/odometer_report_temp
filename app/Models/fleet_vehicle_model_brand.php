<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class fleet_vehicle_model_brand extends Model
{
    use HasFactory;
    protected $table = 'fleet_vehicle_model_brand';
    protected $primaryKey = 'id';
    public $timestamps = false;

    public function fleet_vehicle_model_brand()
    {
        return $this->belongsTo(fleet_vehicle_model::class, 'brand_id', 'id');
    }
}
