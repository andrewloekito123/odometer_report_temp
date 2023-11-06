<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    @php
        $vehicleList = Session::get('vehicleList');
        $driverList = Session::get('driverList');
    @endphp
    <h1>FIELDS</h1>
    <form action="" method="POST">
        @csrf
        <input type="date" name="date" id="">
        <select name="" id="">
        @foreach ($vehicleList as $vehicle)
            <option value=""></option>
        @endforeach
        </select>
        <select name="" id="">
        @foreach ($driverList as $driver)
            <option value=""></option>
        @endforeach
        </select>
        <input type="text" name="value" id="">
    </form>
</body>
</html>
