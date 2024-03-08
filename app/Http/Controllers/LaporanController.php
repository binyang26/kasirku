<?php

namespace App\Http\Controllers;


use App\Models\Penjualan;
use App\Models\Produk;
use App\Models\PenjualanDetail;
use Illuminate\Pagination\Paginator;


class LaporanController extends Controller
{
    public function index()
    {
        Paginator::useBootstrap();
        $totalPenjualan = Penjualan::sum('bayar');
        $data = PenjualanDetail::orderBy('created_at', 'desc')->paginate(6);
        $totalPengeluaran = Produk::sum('harga_beli');
        $totalIncome = $totalPenjualan - $totalPengeluaran;
        return view('laporan.index', compact('totalPenjualan','data','totalPengeluaran', 'totalIncome'));
    }
    
}
