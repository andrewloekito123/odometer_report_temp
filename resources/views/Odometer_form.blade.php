<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

<body>

    <div class="container-fluid">
        <h1>FIELDS</h1>
        <form action="{{ route('InsertNewOdometer') }}" method="POST" class="col-4">
            @csrf
            Date
            <br>
            <input type="date" class="form-control" name="date" id="">
            <br>
            Vehicle
            <br>
            <select name="vehicle" id="" class="form-select">
                @foreach ($vehicleList as $vehicle)
                    <option value="{{ $vehicle->name }}">{{ $vehicle->name }}</option>
                @endforeach
            </select>
            <br>
            Driver
            <br>
            <select name="driver" id="" class="form-select">
                @foreach ($driverList as $driver)
                    <option value="{{ $driver->login }}">{{ $driver->login }}</option>
                @endforeach
            </select>
            <br>
            Value
            <input type="text" name="value" id="" class="form-control">
            <br>
            <button type="submit" class="btn btn-success">Insert Data</button>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
    </script>
</body>

</html>
