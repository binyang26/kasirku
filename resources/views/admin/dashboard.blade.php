@extends('layouts.master')

@section('title')
    Dashboard
@endsection

@section('breadcrumb')
    @parent
    <li class="active">Dashboard</li>
@endsection

@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="box" style="padding-bottom: 15rem">
            <div class="box-header with-border">
            <button id="printButton" class="btn btn-success btn btn-rounded" onclick="printLaporan()">Print Laporan</button>
            </div>
            <div class="box-body table-responsive" >

                <div class="row">
                    <div class="col-lg-4 col-xs-6 text-center">
                        <!-- small box -->
                        <div class="small-box bg-aqua">
                            <div class="inner">
                                <h3>Rp. {{ $totalPengeluaran }}</h3>
                
                                <p>Total Modal</p>
                            </div>
                        
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-4 col-xs-6 text-center">
                        <!-- small box -->
                        <div class="small-box bg-green">
                            <div class="inner">
                                <h3>Rp. {{ $totalPenjualan}}</h3>
                
                                <p>Total Pendapatan Kotor</p>
                            </div>
                            
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-4 col-xs-6 text-center">
                        <!-- small box -->
                        <div class="small-box bg-yellow">
                            <div class="inner">
                                <h3>Rp. {{ $totalIncome }}</h3>
                
                                <p>Total Pendapatan Bersih</p>
                            </div>
                           
                        </div>
                    </div>

                </div>


            </div>
            <table class="table table-stiped table-bordered">
                <thead>
                    <th width="5%">No</th>
                    <th>Id Transaksi</th>
                    <th>Produk</th>
                    <th>Harga Produk</th>
                    <th>Jumlah Terjual</th>
                    <th>Diskon</th>
                    <th>Total</th>
                    <th>Tanggal</th>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    @foreach ($data as $item)
                        <tr>
                            <td>{{$i++}}</td>
                            <td>{{$item->id_penjualan}}</td>
                            <td>{{$item->id_produk}}</td>
                            <td>{{$item->harga_jual}}</td>
                            <td>{{$item->jumlah}}</td>
                            <td>{{$item->diskon}}</td>
                            <td>{{$item->subtotal}}</td>
                            <td>{{$item->created_at->format('Y-m-d H:i')}}</td>
                        </tr>

                    @endforeach
                </tbody>
                
            </table>

            <div id="pagination" class="text-center">
                {{ $data->links() }}
            </div>
            
        </div>
    </div>
</div>

<<script>
    function printLaporan() {

        var printButton = document.getElementById('printButton');
        printButton.style.display = 'none';

        var pagination = document.getElementById('pagination');
        pagination.style.display = 'none';

        window.print();

        printButton.style.display = 'block';
        pagination.style.display = 'block';
    }
</script>
@endsection

