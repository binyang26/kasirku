@extends('layouts.master')

@section('title')
    Dashboard
@endsection

@section('breadcrumb')
    @parent
    <li class="active">Dashboard</li>
@endsection

@section('content')
<!-- Small boxes (Stat box) -->
<div class="box" style="padding-bottom: 25rem">
    <div class="box-body">
        <div class="box-body text-center">
            <h1>KASIR</h1>

            <br><br>
            <br>
            <a href="{{ route('transaksi.baru') }}" class="btn btn-success btn-lg">Transaksi Baru</a>
            <br><br><br>
        </div>


        
            <!-- ./col -->
        </div>
    </div>
</div>
<!-- /.row (main row) -->
@endsection