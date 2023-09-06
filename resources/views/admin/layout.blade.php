<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="/css/style.css">
    <title>ADMIN</title>
</head>

<body>

    <!-- Sidebar -->
    <div class="sidebar">
        <a href="#" class="logo">
            <i class='bx bx-code-alt'></i>
            <div class="logo-name"><span>COZA</span>Store</div>
        </a>
        <ul class="side-menu">
            <li class="active"><a href="/admin"><i class='bx bxs-dashboard'></i>Home</a></li>
            <li><a href="{{ route('alluser') }}"><i class='bx bx-store-alt'></i>Users</a></li>
            <li><a href="{{ route('allcategory') }}"><i class='bx bx-message-square-dots'></i>Categories</a></li>
            <li><a href="{{ route('allproduct') }}"><i class='bx bx-analyse'></i>Products</a></li>
            {{-- <li><a href="#"><i class='bx bx-group'></i>Users</a></li>
            <li><a href="#"><i class='bx bx-cog'></i>Settings</a></li> --}}
        </ul>
        <ul class="side-menu">
            <li>
                <form method="POST" action="{{ route('logout') }}">
                    @csrf
                    <x-dropdown-link :href="route('logout')" class="logout"
                        onclick="event.preventDefault();
                                    this.closest('form').submit();">
                        <i class='bx bx-log-out-circle'></i>
                        {{ __('Log Out') }}
                    </x-dropdown-link>
                </form>
            </li>
        </ul>
    </div>
    <!-- End of Sidebar -->

    <!-- Main Content -->
    <div class="content">
        <!-- Navbar -->
        <nav>
            <i class='bx bx-menu'></i>
            <form action="#">
                <div class="form-input">
                    <input type="search" placeholder="Search...">
                    <button class="search-btn" type="submit"><i class='bx bx-search'></i></button>
                </div>
            </form>
            <input type="checkbox" id="theme-toggle" hidden>
            <label for="theme-toggle" class="theme-toggle"></label>
            <a href="#" class="notif">
                <i class='bx bx-bell'></i>
                <span class="count">0</span>
            </a>
            <a href="#" class="profile">
                <img src="{{ asset('/images/profile-1.jpg') }}">
            </a>
        </nav>

        <!-- End of Navbar -->
        <main>
            @yield('content')
        </main>

    </div>

    <script src="/js/index.js"></script>
</body>

</html>
