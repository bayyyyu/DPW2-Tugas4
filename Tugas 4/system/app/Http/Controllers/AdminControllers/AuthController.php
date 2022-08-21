<?php

namespace App\Http\Controllers\AdminControllers;

class AuthController extends Controller
{
    function showLogin(){
        return view('login');
    }
    function processLogin(){
        return view('login');
    }
    function logout(){
        return view('login');
    }
    function registration(){
        return view('login');
    }
    function forgotPassword(){
        return view('login');
    }
}