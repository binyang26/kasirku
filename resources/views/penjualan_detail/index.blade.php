@extends('layouts.master')

@section('title')
    Transaksi Penjualan
@endsection

@push('css')
<style>
    .tampil-bayar {
        font-size: 5em;
        text-align: center;
        height: 100px;
    }

    .tampil-terbilang {
        padding: 10px;
        background: #f0f0f0;
    }

    .table-penjualan tbody tr:last-child {
        display: none;
    }

    .costum_button {
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 5px 10px;
    font-size: 16px;
    font-family: Arial, sans-serif;
    color: #333;
    background-color: #f9f9f9;
    cursor: not-allowed;
}


    @media(max-width: 768px) {
        .tampil-bayar {
            font-size: 3em;
            height: 70px;
            padding-top: 5px;
        }
    }
</style>
@endpush

@section('breadcrumb')
    @parent
    <li class="active">Transaksi Penjualan</li>
@endsection

@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="box">
            <div class="box-body">
                <div class="col-lg">
                    <div class="tampil-bayar"></div>
                </div>
                <div class="row">

                    
                    <div class="row box-body" style="margin-left: 3rem; margin-top: 5rem">
                        <div class="col-lg-5" >
                            <form action="{{ route('transaksi.simpan') }}" class="form-penjualan" method="post">
                                @csrf
                                <input type="hidden" name="id_penjualan" value="{{ $id_penjualan }}">
                                <input type="hidden" name="total" id="total">
                                <input type="hidden" name="total_item" id="total_item">
                                <input type="hidden" name="bayar" id="bayar">
                                <input type="hidden" name="id_member" id="id_member" value="{{ $memberSelected->id_member }}">
    
                                <div class="form-group row">
                                    <label for="totalrp" class="col-lg-2 control-label">Total</label>
                                    <div class="col-lg-8">
                                        <input type="text" id="totalrp" class="costum_button" readonly>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="kode_member" class="col-lg-2 control-label">Member</label>
                                    <div class="col-lg-8">
                                        <div class="input-group">
                                            <input type="text" class="costum_button" id="kode_member" value="{{ $memberSelected->kode_member }}">
                                            <span class="input-group-btn">
                                                <button onclick="tampilMember()" class="btn btn-info btn-flat" type="button">Pilih</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="diskon" class="col-lg-2 control-label">Diskon</label>
                                    <div class="col-lg-8">
                                        <input type="number" name="diskon" id="diskon" class="costum_button" 
                                            value="{{ ! empty($memberSelected->id_member) ? $diskon : 0 }}" 
                                            readonly>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    
                                    <label for="bayar" class="col-lg-2 control-label">Bayar</label>
                                    <div class="col-lg-8">
                                        <input type="text" id="bayarrp" class="costum_button" readonly>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="diterima" class="col-lg-2 control-label">Diterima</label>
                                    <div class="col-lg-8">
                                        <input type="number" id="diterima" class="costum_button" name="diterima" value="{{ $penjualan->diterima ?? 0 }}">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="kembali" class="col-lg-2 control-label">Kembali</label>
                                    <div class="col-lg-8">
                                        <input type="text" id="kembali" name="kembali" class="costum_button" value="0" readonly>
                                    </div>
                                </div>
    
                                
                            </form>
                        </div>
                        <div class="col-lg-7">
                            <form class="form-produk">
                                @csrf
                                <div class="form-group row">
                                    <div class="col-lg-5">
                                        <div class="input-group">
                                            <input type="hidden" name="id_penjualan" id="id_penjualan" value="{{ $id_penjualan }}">
                                            <input type="hidden" name="id_produk" id="id_produk">
                                            <span class="input-group-btn">
                                                <button onclick="tampilProduk()" class="btn btn-info btn-rounded" type="button">Pilih Produk</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </form>
            
                            <table class="table table-stiped table-bordered table-penjualan">
                                <thead>
                                    <th width="5%">No</th>
                                    <th>Kode</th>
                                    <th>Nama</th>
                                    <th>Harga</th>
                                    <th width="15%">Jumlah</th>
                                    <th>Diskon</th>
                                    <th>Subtotal</th>
                                    <th width="15%">Hapus</th>
                                </thead>
                            </table>

                            <div class="">
                                <button type="submit" class="btn btn-primary btn-sm btn-rounded btn-simpan">Simpan</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
</div>

@includeIf('penjualan_detail.produk')
@includeIf('penjualan_detail.member')
@endsection

@extends('penjualan_detail.info')