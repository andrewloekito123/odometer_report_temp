<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

<body>
    @php
        $listData = Session::get('data');
    @endphp
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            Dropdown
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Action</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" aria-disabled="true">Disabled</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container-fluid">
        <div class="row mt-3 d-flex">
            <div class="col-2 d-flex">
                <h1>Odometer</h1>
            </div>
            <div class="col-1 d-flex justify-content-start mt-3">
                <form action="{{ route('newOdometer') }}" method="GET">
                    <input type="submit" value="Make New Odometer">
                </form>
            </div>
            <div class="col-9 d-flex justify-content-end mt-2">
                <button type="button" class="btn btn-success">Switch to Report</button>
            </div>
        </div>
    </div>
    <div class="container-fluid mt-3">
        <table class="table">
            <thead>
                <tr class="table-dark">
                    <th scope="col">date</th>
                    <th scope="col">driver</th>
                    <th scope="col">name</th>
                    <th scope="col">value</th>
                    <th scope="col">unit</th>
                    <th scope="col">status</th>
                    <th scope="col">in_out</th>
                    <th scope="col">Action</th>
                </tr>
            <tbody>
                @foreach ($listData as $list)
                    <tr>
                        <td>{{ $list->date }}</td>
                        <td>{{ $list->login }}</td>
                        <td>{{ $list->name }}</td>
                        <td>{{ $list->value }}</td>
                        <td>km</td>
                        <td>{{$list->status}}</td>
                        <td>
                            {{-- <form action="{{ route('in_out_change') }}" method="POST">
                                @csrf
                                <input type="hidden" name="item_id" value="{{ $list->id }}">
                                <select name="in_out" class="inOutSelect">
                                    <option value={{ $list->in_out }}>{{ $list->in_out }}</option>
                                    @php
                                        if ($list->in_out == 'in') {
                                            echo '<option value="out">out</option>';
                                        } else {
                                            echo '<option value="in">in</option>';
                                        }
                                    @endphp
                                </select>
                            </form> --}}
                            {{$list->in_out}}
                        </td>
                        <td>
                            <form action="{{ route('status_change') }}" method="POST">
                                @csrf
                                <input type="hidden" name="item_id" value="{{ $list->id }}">
                                @php
                                    if ($list->status == 'ongoing') {
                                        echo '<button type="submit" class="btn btn-success">Complete</button>';
                                    } else {
                                        echo ' ';
                                    }
                                @endphp
                            </form>
                        </td>
                @endforeach
            </tbody>
            </thead>
        </table>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $('.statusSelect').on('change', function() {
                var formData = $(this).closest('form').serialize();

                $.ajax({
                    url: '{{ route('status_change') }}',
                    type: 'POST',
                    data: formData,
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    success: function(response) {
                        console.log(response);
                        // Handle success response if needed
                    },
                    error: function(error) {
                        console.error(error);
                        // Handle error response if needed
                    }
                });
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            $('.inOutSelect').on('change', function() {
                var formData = $(this).closest('form').serialize();

                $.ajax({
                    url: '{{ route('in_out_change') }}',
                    type: 'POST',
                    data: formData,
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    success: function(response) {
                        console.log(response);
                        // Handle success response if needed
                    },
                    error: function(error) {
                        console.error(error);
                        // Handle error response if needed
                    }
                });
            });
        });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
    </script>
</body>

</html>
