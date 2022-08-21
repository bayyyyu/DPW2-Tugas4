<?php

namespace App\Http\Controllers\WebControllers;

class indexController extends Controller{
    function showBeranda(){
        return view('index');
    }

    function showProduk(){
        return view('products');
    }

    function showDetailProduk(){
        return view('detail_products');
    }

    function showKategori(){
        return view('category');
    }
}
