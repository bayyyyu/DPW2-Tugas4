@extends('template.Adminbase')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12 mt-5">
                <div class="card">
                    <div class="card-header">
                        Data Produk
                        <a href="{{url('AdminProduk/create')}}" class="btn btn-light float-right"><i class="mdi mdi-plus"></i>Tambah Data</a>
                    </div>
                    <div class="card-body">
                        <table class="table">
                            <thead>
                                <th>No</th>
                                <th>Aksi</th>
                                <th>Nama</th>
                                <th>Harga</th>
                                <th>Stok</th>
                            </thead>
                            <tbody>
                                @foreach($list_produk as $produk)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>
                                        <div class="btn-group ">
                                            <a href="{{url('AdminProduk', $produk->id)}}" class="btn btn-light"><i class="mdi mdi-information"></i></a>
                                            <a href="{{url('AdminProduk', $produk->id)}}/edit" class="btn btn-warning"><i class="mdi mdi-pencil"></i></a>
                                            @include('template.utils.delete', ['url'=> url('AdminProduk', $produk->id)])
                                        </div>  
                                    </td>
                                    <td>{{$produk->nama}}</td>
                                    <td>{{$produk->harga}}</td>
                                    <td>{{$produk->stok}}</td>
                                </tr>
                                @endforeach
                            </tbody>

                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection