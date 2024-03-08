@extends('layouts.master')

@section('title')
    Daftar Kategori
@endsection


@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="box">
            <div class="box-header with-border">
                <button onclick="addForm('{{ route('kategori.store') }}')" class="btn btn-success btn btn-rounded">Tambah</button>
            </div>
            <div class="box-body table-responsive">
                <table class="table table-stiped table-bordered">
                    <thead>
                        <th width="5%">No</th>
                        <th>Kategori</th>
                        <th width="15%">Aksi</th>
                    </thead>
                    <tbody>
                        @foreach ($kategori as $item)
                        <?php $i = 1; ?>
                        <tr>
                            <td>{{$i++}}</td>
                            <td>{{$item->nama_kategori}}</td>
                            <td></td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

@includeIf('kategori.form')
@endsection

@extends('kategori.info')