<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ShopController extends Controller
{
    //
    public function Index()
    {
        $products = Product::all();
        return view('public/shop', ['products' => $products]);
    }
    public function Detail($id)
    {
        $products = Product::all();
        $product = Product::find($id);
        $data = ['products' => $products, 'product' => $product];
        return view('public/shop-detail', $data);
    }
}
