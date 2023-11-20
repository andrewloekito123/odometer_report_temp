<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class NewOdometerController extends Controller
{
    function viewPage(Request $request)
    {
        $vehicleList = DB::table('fleet_vehicle')->get();
        $driverList = DB::table('res_users')->get();
        return view('Odometer_form',compact('vehicleList','driverList'));
    }
    function newOdometer(Request $request)
    {
        $temp = DB::query()->select('id')->from('res_users')->where('login', '=', $request->input('driver'))->get();
        $temp2 = DB::query()->select('id')->from('fleet_vehicle')->where('name', '=', $request->input('vehicle'))->get();
        $vehicle_id = $temp2[0]->id;
        $create_uid = $temp[0]->id;
        $write_uid = $temp[0]->id;
        $name = $request->input('vehicle');
        $date = $request->input('date');
        $create_date = $request->input('create_date');
        $write_date = $request->input('write_date');
        $value = $request->input('value');
        $status = "ongoing";
        $in_out = "out";

        DB::insert("
        INSERT INTO fleet_vehicle_odometer
        (vehicle_id, create_uid, write_uid, name, date, create_date, write_date, value, status, in_out)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    ", [$vehicle_id, $create_uid, $write_uid, $name, $date, $create_date, $write_date, $value, $status, $in_out]);
        return redirect('index');
    }
}
