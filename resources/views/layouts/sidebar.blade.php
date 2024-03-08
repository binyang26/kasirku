<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">

        </div>
        
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu " data-widget="tree">
            <li class="">
                <a href="{{ route('dashboard') }}" class="">
                    <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                </a>
            </li>

            @if (auth()->user()->level == 1)
            <li class="header">Fitur</li>
            <li>
                <a href="{{ route('kategori.index') }}">
                    <i class="fa fa-cube"></i> <span>Kategori</span>
                </a>
            </li>
            <li>
                <a href="{{ route('produk.index') }}">
                    <i class="fa fa-cubes"></i> <span>Produk</span>
                </a>
            </li>
            <li>
                <a href="{{ route('member.index') }}">
                    <i class="fa fa-id-card"></i> <span>Member</span>
                </a>
            </li>

            <li>
                <a href="{{ route('user.index') }}">
                    <i class="fa fa-users"></i> <span>Kasir</span>
                </a>
            </li>
            <li>
                <a href="#" class="btn btn-default btn-flat"
                onclick="$('#logout-form').submit()"><span>Logout</span></a>
                <form action="{{ route('logout') }}" method="post" id="logout-form" style="display: none;">
                    @csrf
                    </form>
            </li>

            @else
            <li class="header">Fitur</li>
            <li>
                <a href="{{ route('transaksi.baru') }}">
                    <i class="fa fa-cart-arrow-down"></i> <span>Transaksi</span>
                </a>
            </li>

            <li>
                <a href="#" class="btn btn-default btn-flat"
                onclick="$('#logout-form').submit()"><span>Logout</span></a>
                <form action="{{ route('logout') }}" method="post" id="logout-form" style="display: none;">
                    @csrf
                    </form>
            </li>
            @endif
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>

