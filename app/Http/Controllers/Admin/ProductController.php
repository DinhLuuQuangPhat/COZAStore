<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    //
    function Index()
    {
        $products = Product::all();
        return view('admin/products/show', ['products' => $products]);
    }
    public function AddProduct()
    {
        return view('admin/products/insert');
    }

    public function StoreProduct(Request $request)
    {
        $request->validate([
            'name' => 'required|unique:categories',
        ]);

        $image = $request->file('HinhAnh');
        $img_name = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        $request->HinhAnh->move(public_path('images'), $img_name);
        $img_url = 'images/' . $img_name;

        Product::insert([
            'name' => $request->name,
            'gia' => $request->gia,
            'HinhAnh' => $request->HinhAnh,
            'idcate' => $request->idcate,
            'MoTa' => $request->MoTa,
            'SoLuong' => $request->SoLuong,
            'LX' => $request->LX,
        ]);
        return redirect()->route('allproduct')->with('message', 'Thêm sản phẩm thành công');
    }

    public function EditProduct($id)
    {
        $product_info = Product::findOrFail($id);

        return view('admin/products/update', compact('product_info'));
    }

    public function UpdateProduct(Request $request)
    {
        $id = $request->id;

        $request->validate([
            'name' => 'required|unique:categories',
        ]);

        $image = $request->file('HinhAnh');
        $img_name = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        $request->HinhAnh->move(public_path('images'), $img_name);
        $img_url = 'images/' . $img_name;

        Product::findOrFail($id)->update([
            'name' => $request->name,
            'gia' => $request->gia,
            'HinhAnh' => $request->HinhAnh,
            'idcate' => $request->idcate,
            'MoTa' => $request->MoTa,
            'SoLuong' => $request->SoLuong,
            'LX' => $request->LX,
        ]);
        return redirect()->route('allproduct')->with('message', 'Thêm sản phẩm thành công');
    }

    public function DeleteProduct($id)
    {
        Product::findOrFail($id)->delete();
        return redirect()->route('allproduct')->with('message', 'Xóa sản phẩm thành công');
    }
}
