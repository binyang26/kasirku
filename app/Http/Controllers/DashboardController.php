<?php

namespace App\Http\Controllers;

use App\Models\Penjualan;
use App\Models\Produk;
use App\Models\PenjualanDetail;
use Illuminate\Pagination\Paginator;
use Barryvdh\DomPDF\Facade as PDF;

class DashboardController extends Controller
{
    public function index()
    {
        Paginator::useBootstrap();
        $totalPenjualan = Penjualan::sum('bayar'); 
        $data = PenjualanDetail::orderBy('created_at', 'desc')->paginate(6);
        $totalPengeluaran = Produk::sum('harga_beli');
        $totalIncome = $totalPenjualan - $totalPengeluaran;
        
       
        if (auth()->user()->level == 1) {
            return view('admin.dashboard', compact('totalPenjualan','data','totalPengeluaran', 'totalIncome'));
        } else {
            return view('kasir.dashboard');
        }
    }

    public function generatePdf()
    {
        $pdf = PDF::loadView('admin.pdf', compact('totalPenjualan','data','totalPengeluaran', 'totalIncome'));

        return $pdf->download('laporan-kasir.pdf');
    }
}
