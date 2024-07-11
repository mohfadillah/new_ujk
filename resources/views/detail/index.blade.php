@extends('layouts.app')
@section('content')
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Detail Penjualan</title>

        <style>
            /* CSS untuk menyembunyikan tombol saat dicetak */
            @media print {
                #print {
                    display: none !important;
                }

                #back {
                    display: none !important;
                }
            }
        </style>
    </head>

    <body>
        <div id="printable" align="center">
            <h1 class="printable mb-2">Data Penjualan</h1>
            <h3>Book's Corner</h3>
            <hr>
        </div>
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Nama</th>
                        <th>Nama Barang</th>
                        <th>Jumlah</th>
                        <th>Harga</th>
                        <th>Total Harga</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($details as $detail)
                        <tr>
                            <td>{{ $detail->nama_lengkap }}</td>
                            <td>{{ $detail->nama_barang }}</td>
                            <td>{{ $detail->jumlah }}</td>
                            <td>{{'Rp ' . number_format($detail->harga, 2, ',', '.') }}</td>
                            <td>{{'Rp ' . number_format($detail->total_harga, 2, ',', '.') }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <button class="btn btn-primary btn-sm" id="print" onclick="printData()">Print</button>
        <a class="btn btn-danger btn-sm" id="back" href="{{ url()->previous() }}">Back</a>
        <script>
            function printData() {
                var printButton = document.getElementById('print');
                var backButton = document.getElementById('back');
                printButton.style.display = 'none';
                backButton.style.display = 'none';
                window.print();
            }
        </script>
    </body>

    </html>
@endsection
``
