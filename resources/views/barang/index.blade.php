@extends('layouts.app')
@section('title', 'Data Barang')
@section('judulcard', 'Barang')
@section('content')
    <div class="table-responsive">
        <div align="right" class="mb-3">
            <a href="{{ route('barang.create') }}" class="btn btn-primary btn-sm"><i
                    class="fas fa-plus mr-1"></i><strong>Add</strong></a>
        </div>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Category</th>
                    <th>Unit / Nama Barang</th>
                    <th>Type Unit (Satuan)</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($dataBarang as $key => $db)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $db->kategori->nama_kategori }}</td>
                        <td>{{ $db->nama_barang }}</td>
                        <td>{{ $db->satuan }}</td>
                        <td>{{ $db->qty }}</td>
                        <td>Rp. {{ number_format($db->harga) }}</td>
                        <td>
                            <div class="dropdown">
                                <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                                    <i class="bx bx-dots-vertical-rounded"></i>
                                </button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="{{ route('barang.edit', $db->id) }}"><i
                                            class="bx bx-edit-alt me-1"></i>
                                        Edit</a>
                                    <form action="{{ route('barang.destroy', $db->id) }}" method="POST">
                                        @csrf
                                        <input type="hidden" name="_method" value="DELETE">
                                        <button type="submit" class="dropdown-item"><i
                                                class="bx bx-trash me-1"></i>Hapus</button>
                                    </form>
                                </div>
                            </div>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
