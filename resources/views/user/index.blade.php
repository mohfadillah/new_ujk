@extends('layouts.app')
@section('judulcard', ' Pengguna')
@section('content')
    <div class="table-responsive text-nowrap">
        <div align="right" class="mb-3">
            <a href="{{ route('user.create') }}" type="button" class="btn btn-primary">Tambah</a>
        </div>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Email</th>
                    <th>Level</th>
                    {{-- <th>Actions</th> --}}
                </tr>
            </thead>
            <tbody>
                @foreach ($dataUser as $key => $du )
                <tr>
                    <td>{{$loop->iteration}}</td>
                    <td>{{$du->nama_lengkap}}</td>
                    <td>{{$du->email}}</td>
                    <td>{{$du->nama_level}}</td>
                    {{-- <td>
                        <div class="dropdown">
                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                                <i class="bx bx-dots-vertical-rounded"></i>
                            </button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-edit-alt me-1"></i>
                                    Edit</a>
                                <a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-trash me-1"></i>
                                    Delete</a>
                            </div>
                        </div>
                    </td> --}}
                </tr>
                @endforeach
                <!-- You can add more rows as needed -->
            </tbody>
        </table>
    </div>

@endsection

{{-- <td><span class="badge bg-label-success me-1">Completed</span></td>
<td><span class="badge bg-label-info me-1">Scheduled</span></td>
<td><span class="badge bg-label-warning me-1">Pending</span></td>
<td><span class="badge bg-label-primary me-1">Active</span></td> --}}


{{-- <div class="dropdown">
    <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
        <i class="bx bx-dots-vertical-rounded"></i>
    </button>
    <div class="dropdown-menu">
        <a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-edit-alt me-1"></i>
            Edit</a>
        <a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-trash me-1"></i>
            Delete</a>
    </div>
</div> --}}
