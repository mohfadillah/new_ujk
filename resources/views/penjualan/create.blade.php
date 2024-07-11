@extends('layouts.app')
@section('title', 'Add Barang')
@section('titlecate', 'Barang')
@section('content')
<form action="{{ route('penjualan.store') }}" method="POST">
    @csrf
    <div class="form-group mb-3">
        <label for="">User</label>
        <select id="" class="form-control" name="id_user">
            <option value="">Select User</option>
            @foreach ($users as $user)
                <option value="{{ $user->id }}">{{ $user->nama_lengkap }}</option>
            @endforeach
        </select>
    </div>
    <div class="form-group mb-3">
        <label for="">Kode Transaksi</label>
        <input type="text" class="form-control" name="kode_transaksi" readonly value="{{$kode_transaksi}}">
    </div>
    <div class="form-group mb-3">
        <label for="">Tanggal Transaksi</label>
        <input type="date" class="form-control" name="tanggal_transaksi">
    </div>
    <br><br>
    <div class="table-transaction">
        <div class="mb-3" align="right">
            <button type="button" class="btn btn-primary btn-sm btn-add"><i class="fas fa-plus"> Add</i></button>
        </div>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Nama Barang</th>
                    <th>Jumlah</th>
                    <th>Harga</th>
                    <th>Total Harga</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
    <div class="form-group mb-3">
        <label for="total">Total Harga</label>
        <input type="text" id="total" class="form-control" readonly>
    </div>
    <div class="form-group mb-3">
        <label for="bayar" name="nominal_bayar">Nominal Bayar</label>
        <input type="number" id="bayar" class="form-control" oninput="calculateChange()">
    </div>
    <div class="form-group mb-3">
        <label for="kembalian" name="kembalian">Kembalian</label>
        <input type="text" id="kembalian" class="form-control" readonly>
    </div>
    <div class="form-group mb-3">
        <input type="hidden" name="nominal_bayar" id="hidden_nominal_bayar">
        <input type="hidden" name="kembalian" id="hidden_kembalian">
        <input type="submit" class="btn btn-primary" value="Save" onclick="setHiddenValues()">
        <input type="reset" class="btn btn-danger" value="Cancel">
        <a href="{{ url()->previous() }}" class="btn btn-info">Back</a>
    </div>
</form>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        document.querySelector('.btn-add').addEventListener('click', function () {
            const tbody = document.querySelector('table tbody');
            const tr = document.createElement('tr');

            tr.innerHTML = `
                <td>
                    <select name='id_barang[]' class='form-control select-barang'>
                        <option value=''>Select Barang</option>
                        @foreach ($barang as $item)
                            <option value='{{ $item->id }}'>{{ $item->nama_barang }}</option>
                        @endforeach
                    </select>
                </td>
                <td><input type="number" class="form-control jumlah" name="jumlah[]" oninput="calculateTotal()"></td>
                <td><input type="number" class="form-control harga" name="harga[]" oninput="calculateTotal()"></td>
                <td><input type="text" class="form-control total-harga" name="total_harga[]" readonly></td>
                <td><button type="button" class="btn btn-danger btn-sm btn-remove"><i class="fas fa-minus"> Remove</i></button></td>
            `;

            tbody.appendChild(tr);

            tr.querySelector('.btn-remove').addEventListener('click', function () {
                tr.remove();
                calculateTotal();
            });
        });
    });

    function calculateTotal() {
        const rows = document.querySelectorAll('table tbody tr');
        let total = 0;

        rows.forEach(row => {
            const jumlah = row.querySelector('.jumlah').value;
            const harga = row.querySelector('.harga').value;
            const totalHarga = row.querySelector('.total-harga');

            const subtotal = jumlah * harga;
            totalHarga.value = subtotal;
            total += subtotal;
        });

        document.getElementById('total').value = total;
        calculateChange();
    }

    function calculateChange() {
        const total = parseFloat(document.getElementById('total').value);
        const bayar = parseFloat(document.getElementById('bayar').value);
        const kembalian = bayar - total;

        document.getElementById('kembalian').value = kembalian;
    }

    function setHiddenValues() {
        document.getElementById('hidden_nominal_bayar').value = document.getElementById('bayar').value;
        document.getElementById('hidden_kembalian').value = document.getElementById('kembalian').value;
    }
</script>
@endsection
