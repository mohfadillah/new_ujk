@extends('layouts.app')
@section('judulcard', ' Penjualan')
@section('content')
    <div class="table-responsive text-nowrap">
        <div align="right" class="mb-3">
            <a href="{{ route('penjualan.create') }}" type="button" class="btn btn-primary">Tambah</a>
        </div>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama Pengguna</th>
                    <th>Kode Transaksi</th>
                    <th>Tanggal Transaksi</th>
                    <th>Nominal Bayar</th>
                    <th>Kembalian</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($dataPenjualan as $key => $dp)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $dp->user->nama_lengkap }}</td>
                        <td>{{ $dp->kode_transaksi }}</td>
                        <td>{{ $dp->tanggal_transaksi }}</td>
                        <td>{{'Rp ' . number_format($dp->nominal_bayar) }}</td>
                        <td>{{'Rp ' . number_format($dp->kembalian) }}</td>
                        <td>
                            <a href="{{ route('detail.show', $dp->id) }}"
                                class="btn btn-sm btn-warning text-darkblue">
                                <span class="far fa-eye"> Detail</span></a>
                        </td>
                    </tr>
                @endforeach
                <!-- You can add more rows as needed -->
            </tbody>
        </table>
    </div>

@endsection
