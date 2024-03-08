@extends('layouts.master')

@section('title')
    Daftar Member
@endsection

@section('breadcrumb')
    @parent
    <li class="active">Daftar Member</li>
@endsection

@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="box">
            <div class="box-header with-border">
                <button onclick="addForm('{{ route('member.store') }}')" class="btn btn-success btn btn-rounded">Tambah</button>
            </div>
            <div class="box-body table-responsive">
                <form action="" method="post" class="form-member">
                    @csrf
                    <table class="table table-stiped table-bordered">
                        <thead>
                            <th width="5%">No</th>
                            <th></th>
                            <th>Telepon</th>
                            <th>Alamat</th>
                            <th width="15%">Aksi</th>
                        </thead                        <tbody>
                            <?php $i = 1; ?>
                            @foreach ($member as $item)
                                <tr>
                                    <td>{{$i++}}</td>
                                    <td>{{$item->nama}}</td>
                                    <td>{{$item->alamat}}</td>
                                    <td>{{$item->telepon}}</td>
                                </tr>
                                @endforeach
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>

@includeIf('member.form')
@endsection

@extends('member.info')