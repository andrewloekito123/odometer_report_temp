<?php

namespace App\Http\Controllers;

use App\Models\fleet_vehicle_odometer;
use Illuminate\Contracts\Session\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class OdometerController extends Controller
{
    public function viewIndex(Request $request)
    {
        // $data = DB::select('select * from fleet_vehicle_odometer order by date desc');
        $data = DB::select('SELECT o.date, u.login, v.name, o.create_date, o.write_date, o.value, o.status, o.in_out, o.status, o.id
        from fleet_vehicle_odometer o
        join fleet_vehicle v on o.vehicle_id = v.id
        join res_users u on v.driver_id = u.id
        order by date desc');
        // dd($data);
        $request->session()->put('data', $data);
        return view('index');
    }
    function updateStatus(Request $request)
    {
        $status = $request->input('status');
        $itemId = $request->input('item_id');
        fleet_vehicle_odometer::where('id', $itemId)->update(['status' => $status]);
        return redirect('/index');
    }
    function updateInOut(Request $request)
    {
        $inOut = $request->input('in_out');
        $itemId = $request->input('item_id');
        fleet_vehicle_odometer::where('id', $itemId)->update(['in_out' => $inOut]);
        return redirect('/index');
    }
}
