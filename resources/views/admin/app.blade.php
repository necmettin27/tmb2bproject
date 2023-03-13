<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>
    <link href="{{asset('backend/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('backend/font-awesome/css/font-awesome.css')}}" rel="stylesheet">
    <link href="{{asset('backend/css/animate.css')}}" rel="stylesheet">
    <link href="{{asset('backend/css/style.css')}}" rel="stylesheet">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <link rel="shortcut icon" href="{{asset('backend/design/fav.jpg')}}" type="image/x-icon">

    <link href="{{asset('backend/toggle/bootstrap4-toggle.min.css')}}" rel="stylesheet">
    <link href="{{asset('backend/css/plugins/jquery-confirm/jquery-confirm.css')}}" rel="stylesheet">
    <link href="{{asset('backend/toast/jquery.toast.css')}}" rel="stylesheet">

    @yield('css')
    <script  src="{{asset('backend/js/jquery-2.1.1.js')}}"></script>
    <style>
        .ibox-content{padding-bottom: 70px;}
        body.mini-navbar .navbar-default .nav > li > a {text-align: center; }
        .navi svg{width: 14px;}
        .flex {display: flex;}
        .justify-between {justify-content: space-between; }
     
        .align-items-center {align-items: center !important; }
    </style>
</head>
<body class="">
<div id="wrapper">
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element">
                        <a href="/">
                          <center> <x-favicon></x-favicon></center>
                        </a>
                    </div>
                    <div class="logo-element" style="padding: 5px;">
                         <center> <x-favicon></x-favicon></center>
                    </div>
                </li>

                @include('.admin.menu')

            </ul>

        </div>
    </nav>

    <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                </div>
                <ul class="nav navbar-top-links navbar-right">
                     
                    <li>
                        <a data-toggle="dropdown"  href="#" aria-expanded="false">
                            <span class="block ">Hoşgeldiniz {{Auth::user()->name}} <i class="fa fa-angle-double-down" aria-hidden="true"></i></span>
                        </a>
                        <div class="dropdown profile-element">
                            <ul class="dropdown-menu animated fadeInRight m-t-xs" x-placement="bottom-start" style="position: absolute; top: 0px; will-change: top, left;">
                                <li><a class="dropdown-item" href="">Profilim</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="">Çıkış Yap</a></li>
                            </ul>
                        </div>
                    </li>
             

                    <li>
                        <form method="POST" action="{{ route('logout') }}">
                                @csrf
                                 <a style="color:black" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                this.closest('form').submit();">
                            <i class="fa fa-sign-out"></i> Çıkış Yap
                        </a>
                            </form>
                       
                    </li>
                </ul>

            </nav>
        </div>
         @if($errors->any())
            <div class="alert alert-danger">
            @foreach($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
            </div>
        @endif
        @if(session('success'))
            <div class="alert alert-success">
                <i class="fa fa-check"></i> {{ session('success') }}
            </div>
        @endif
        @if(session('error'))
            <div class="alert alert-success">
                <i class="fa fa-check"></i> {{ session('error') }}
            </div>
        @endif
        @yield('content')

        <div class="footer">
            <div class="float-right">
                Tm Akreditasyon Yönetim Paneli.
            </div>
            <div>
                <strong>Copyright</strong> TmAkreditasyon &copy; {{date('Y')}}
            </div>
        </div>

    </div>
</div>

<script src="{{asset('backend/js/jquery-ui.min.js')}}"></script>
<script src="{{asset('backend/js/popper.min.js')}}"></script>
<script src="{{asset('backend/js/bootstrap.js')}}"></script>
<script src="{{asset('backend/js/plugins/metisMenu/jquery.metisMenu.js')}}"></script>
<script src="{{asset('backend/js/plugins/slimscroll/jquery.slimscroll.min.js')}}"></script>

<script src="{{asset('backend/js/inspinia.js')}}"></script>
<script src="{{asset('backend/js/plugins/pace/pace.min.js')}}"></script>
<script>
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    })
</script>
<script src="{{asset('backend/js/plugins/jquery-confirm/jquery-confirm.js')}}"></script>
<script src="{{asset('backend/toggle/bootstrap4-toggle.min.js')}}"></script>
<script src="{{asset('backend/toast/jquery.toast.js')}}"></script>

@yield('js')
<script>
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    function success(title,text) {
        $.toast({
            text: text,
            heading: title,
            icon: 'success',
            showHideTransition: 'fade',
            allowToastClose: true,
            hideAfter: 2000,
            stack: 5,
            position: 'bottom-right',
            textAlign: 'left',
            loader: true,
            loaderBg: '#9EC600'
        });
    }
    function error(title,text) {
        $.toast({
            text: text,
            heading: title,
            icon: 'error',
            showHideTransition: 'fade',
            allowToastClose: true,
            hideAfter: 2000,
            stack: 5,
            position: 'bottom-right',
            textAlign: 'left',
            loader: true,
            loaderBg: '#c60c02'
        });
    }
 
   

</script>

</body>

</html>
