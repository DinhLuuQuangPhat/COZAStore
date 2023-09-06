@extends('admin.layout')
@section('content')
    <div class="header">
        <div class="left">
            <h1>SẢN PHẨM</h1>
            <ul class="breadcrumb">
                <li><a href="#">
                        Home
                    </a></li>
                /
                <li><a href="#" class="active">Sản phẩm</a></li>
            </ul>
        </div>
        <a href="#" class="report">
            <i class='bx bx-cloud-download'></i>
            <span>Thêm</span>
        </a>
    </div>

    <div class="bottom-data">
        <div class="orders">
            <div class="header">
                <i class='bx bx-receipt'></i>
                <h3>Sản phẩm</h3>
            </div>
            <table>
                <thead>
                    <tr>
                        <th>Tên</th>
                        <th>Thương hiệu</th>
                        <th>Giá</th>
                        <th>Số lượng</th>
                        <th>Lượt xem</th>
                        <th>Chức năng</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($list as $l)
                        <tr>
                            <td>
                                {{-- <img src="images/profile-1.jpg"> --}}
                                <p>{{ $l->TenSP }}</p>
                            </td>
                            <td>{{ $l->MaTH }}</td>
                            <td>{{ $l->GiaMoi }}</td>
                            <td>{{ $l->SoLuong }}</td>
                            <td>{{ $l->LX }}</td>
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
