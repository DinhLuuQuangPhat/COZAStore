<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    //
    public function Index()
    {
        $products = Product::all();
        return view('public/home', ['products' => $products]);
    }
}
