@extends('layouts.app')
@section('cardTitle', 'Kategori Barang')
@section('judulcard', ' Category')
@section('content')
    <div class="table-responsive text-nowrap">
        <div align="right" class="mb-3">
            <a href="{{ route('kategori.create') }}" type="button" class="btn btn-primary">Tambah</a>
        </div>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama Kategori</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($dataKategori as $key => $dk)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $dk->nama_kategori }}</td>
                        <td>
                            <div class="dropdown">
                                <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                                    <i class="bx bx-dots-vertical-rounded"></i>
                                </button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="{{ route('kategori.edit', $dk->id) }}"><i
                                            class="bx bx-edit-alt me-1"></i>
                                        Edit</a>
                                    <form action="{{ route('kategori.destroy', $dk->id) }}" method="POST">
                                        @csrf
                                        <input type="hidden" name="_method" value="DELETE">
                                        <button type="submit" class="dropdown-item"><i class="bx bx-trash me-1"></i>Hapus</button>
                                    </form>
                                </div>
                            </div>
                        </td>
                    </tr>
                @endforeach
                <!-- You can add more rows as needed -->
            </tbody>
        </table>
    </div>

@endsection
