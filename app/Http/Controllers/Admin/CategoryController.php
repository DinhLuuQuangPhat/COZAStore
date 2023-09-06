<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    //
    public function Index()
    {
        $categories = Category::all();
        return view('admin/categories/show', ['categories' => $categories]);
    }
    public function AddCategory()
    {
        return view('admin/categories/insert');
    }

    public function StoreCategory(Request $request)
    {
        $request->validate([
            'name' => 'required|unique:categories',
        ]);

        Category::insert([
            'name' => $request->name,
        ]);
        return redirect()->route('allcategory')->with('message', 'Thêm danh mục thành công');
    }

    public function EditCategory($id)
    {
        $category_info = Category::findOrFail($id);

        return view('admin/categories/update', compact('category_info'));
    }

    public function UpdateCategory(Request $request)
    {
        $id = $request->id;

        $request->validate([
            'name' => 'required|unique:categories',
        ]);

        Category::findOrFail($id)->update([
            'name' => $request->name,

        ]);
        return redirect()->route('allcategory')->with('message', 'Cập nhật danh mục thành công');
    }
    public function DeleteCategory($id)
    {
        Category::findOrFail($id)->delete();
        return redirect()->route('allcategory')->with('message', 'Xóa danh mục thành công');
    }
}
