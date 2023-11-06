<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class NewOdometerController extends Controller
{
    function viewPage(Request $request)
    {
        return view('Odometer_form');
    }
    function newOdometer(Request $request)
    {
        $vehicle_id = $request->input('vehicle_id');
        $create_uid = $request->input('create_uid');
        $write_uid = $request->input('write_uid');
        $name = $request->input('name');
        $date = $request->input('date');
        $create_date = $request->input('create_date');
        $write_date = $request->input('write_date');
        $value = $request->input('value');
        $status = "ongoing";
        $in_out = $request->input('in_out');
        
        return redirect('Odometer_form');
    }
}
