<?php

namespace App\Http\Controllers;

use App\Models\Barang;
use App\Models\DetailPenjualan;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DetailController extends Controller
{
    public function index()
    {
        $details = DetailPenjualan::with('user', 'barang')->get();
        $barang = Barang::orderBy('id', 'desc')->get();
        $user = User::orderBy('id', 'desc')->get();

        return view('detail.index', compact('details', 'barang', 'user'));
    }
    public function show(string $id)
    {
        $details = DB::table('detail_penjualans')
            ->join('penjualans', 'detail_penjualans.id_penjualan', '=', 'penjualans.id')
            ->join('barangs', 'detail_penjualans.id_barang', '=', 'barangs.id')
            ->join('users', 'penjualans.id_user', '=', 'users.id')
            ->where('penjualans.id', $id)
            ->select('detail_penjualans.*', 'barangs.*', 'users.*')
            ->get();;

        $barang = Barang::orderBy('id', 'desc')->get();
        $user = User::orderBy('id', 'desc')->get();
        return view('detail.index', compact('details', 'barang', 'user'));
    }
}
