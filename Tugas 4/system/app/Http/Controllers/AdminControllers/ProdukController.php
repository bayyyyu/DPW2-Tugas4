<?php

namespace App\Http\Controllers\AdminControllers;
use App\Models\Produk;

class ProdukController extends Controller {
    function index(){
        $data ['list_produk'] = Produk::all();
        return view('AdminProduk.index', $data);
    }
    function create(){
        return view('AdminProduk.create');
    }
    function store(){
        $admin_produk = new produk;
        $admin_produk->nama = request('nama');
        $admin_produk->harga = request('harga');
        $admin_produk->berat = request('berat');
        $admin_produk->deskripsi = request('deskripsi');
        $admin_produk->stok = request('stok');
        $admin_produk->save();
        return redirect('AdminProduk')-> with('success', 'Data Berhasil Ditambahkan');
    }

    function show(Produk $produk){
        $data['produk'] = $produk;
        return view('AdminProduk.show', $data);
    }

    function edit(Produk $produk){
        $data['produk'] = $produk;
        return view('AdminProduk.edit', $data);
    }
    
    function update(Produk $produk){
        $produk->nama = request('nama');
        $produk->harga = request('harga');
        $produk->berat = request('berat');
        $produk->deskripsi = request('deskripsi');
        $produk->stok = request('stok');
        $produk->save();

        return redirect('AdminProduk')-> with('success', 'Data Berhasil Diedit');
    }
    function destroy(Produk $produk){
        $produk-> delete();

        return redirect('AdminProduk')-> with('danger', 'Data Berhasil Dihapus');
    }


}