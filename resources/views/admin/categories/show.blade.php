@extends('admin.layout')
@section('content')
    <div class="header">
        <div class="left">
            <h1>Loại</h1>
            <ul class="breadcrumb">
                <li><a href="/admin">
                        Home
                    </a></li>
                /
                <li><a href="#" class="active">Loại</a></li>
            </ul>
        </div>
        <a href="{{ route('addcategory') }}" class="report">
            <i class='bx bx-cloud-download'></i>
            <span>Thêm</span>
        </a>
    </div>

    <div class="bottom-data">
        <div class="orders">
            <div class="header">
                <i class='bx bx-receipt'></i>
                <h3>Loại</h3>
            </div>
            @if (session()->has('message'))
                <script>
                    alert('{{ session()->get('message') }}');
                </script>
            @endif
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Tên</th>
                        <th>Chức năng</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($categories as $c)
                        <tr>
                            <td>{{ $c->id }}</td>
                            <td>{{ $c->name }}</td>
                            <td>
                                <div class="header" style="justify-content: normal">
                                    <a href="{{ route('editcategory', $c->id) }}" class="report">
                                        <span>Sửa</span>
                                    </a>
                                    <a href="{{ route('deletecategory', $c->id) }}" class="report">
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
