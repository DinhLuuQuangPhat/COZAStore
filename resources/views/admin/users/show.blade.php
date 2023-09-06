@extends('admin.layout')
@section('content')
    <div class="header">
        <div class="left">
            <h1>Tài Khoản</h1>
            <ul class="breadcrumb">
                <li><a href="/admin">
                        Home
                    </a></li>
                /
                <li><a href="#" class="active">Tài Khoản</a></li>
            </ul>
        </div>
        <a href="{{ route('adduser') }}" class="report">
            <i class='bx bx-cloud-download'></i>
            <span>Thêm</span>
        </a>
    </div>

    <div class="bottom-data">
        <div class="orders">
            <div class="header">
                <i class='bx bx-receipt'></i>
                <h3>Tài Khoản</h3>
            </div>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Tên</th>
                        <th>Email</th>
                        <th>Role</th>
                        <th>Chức năng</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($users as $u)
                        <tr>
                            <td>{{ $u->id }}</td>
                            <td>{{ $u->name }}</td>
                            <td>{{ $u->email }}</td>
                            <td>{{ $u->role }}</td>
                            <td>
                                <div class="header" style="justify-content: normal">
                                    <a href="#" class="report">
                                        <span>Sửa</span>
                                    </a>
                                    <a href="#" class="report">
                                        <span>Xoá</span>
                                    </a>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

    </div>
@endsection
