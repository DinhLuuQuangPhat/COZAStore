<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    //
    public function Index()
    {
        $users = User::all();
        return view('admin/users/show', ['users' => $users]);
    }
    public function AddUser()
    {
        return view('admin/users/insert');
    }

    public function UpdateUser()
    {
    }

    public function DeleteUser()
    {
    }
}
