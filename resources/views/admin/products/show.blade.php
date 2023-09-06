@extends('admin.layout')
@section('content')
    <div class="header">
        <div class="left">
            <h1>Sản Phẩm</h1>
            <ul class="breadcrumb">
                <li><a href="/admin">
                        Home
                    </a></li>
                /
                <li><a href="#" class="active">Sản Phẩm</a></li>
            </ul>
        </div>
        <a href="{{ route('addproduct') }}" class="report">
            <i class='bx bx-cloud-download'></i>
            <span>Thêm</span>
        </a>
    </div>

    <div class="bottom-data">
        <div class="orders">
            <div class="header">
                <i class='bx bx-receipt'></i>
                <h3>Sản Phẩm</h3>
            </div>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Tên</th>
                        <th>Thương hiệu</th>
                        <th>Giá</th>
                        <th>Hình Ảnh</th>
                        <th>Số lượng</th>
                        <th>Lượt xem</th>
                        <th>Chức năng</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($products as $p)
                        <tr>
                            <td>{{ $p->id }}</td>
                            <td>{{ $p->name }}</td>
                            <td>{{ $p->idcate }}</td>
                            <td>{{ $p->gia }}</td>
                            <td><img src="{{ asset($p->HinhAnh) }}" alt=""></td>
                            <td>{{ $p->SoLuong }}</td>
                            <td>{{ $p->LX }}</td>
                            <td>
                                <div class="header" style="justify-content: normal">
                                    <a href="{{ route('editproduct', $p->id) }}" class="report">
                                        <span>Sửa</span>
                                    </a>
                                    <a href="{{ route('deleteproduct', $p->id) }}" class="report">
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
