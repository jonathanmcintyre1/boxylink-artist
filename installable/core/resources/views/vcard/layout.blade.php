<!DOCTYPE html>
<html lang="en" @yield('rtl')>
    <head>
        <!--====== Required meta tags ======-->
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!--====== Title ======-->
        <title>{{$vcard->name}}</title>
        <link rel="shortcut icon" href="{{asset('assets/front/img/user/vcard/' . $vcard->profile_image)}}" type="image/x-icon">
        <!--====== Bootstrap css ======-->
        <link rel="stylesheet" href="{{asset('assets/front/css/bootstrap.min.css')}}">
        <!--====== FontAwesoem css ======-->
        <link rel="stylesheet" href="{{asset('assets/front/css/all.min.css')}}">
        <!--====== Style css ======-->
        <link rel="stylesheet" href="{{asset('assets/front/css/profile/vcard.css')}}">
        <!--====== RTL css ======-->
        @yield('rtl-css')
    </head>
    <body class="@yield('body')">

        @yield('content')

        <!--====== Jquery js ======-->
        <script src="{{asset('assets/front/js/vendor/jquery-3.4.1.min.js')}}"></script>
        <!--====== Popper js ======-->
        <script src="{{asset('assets/front/js/popper.min.js')}}"></script>
        <!--====== Bootstrap js ======-->
        <script src="{{asset('assets/front/js/bootstrap.min.js')}}"></script>
    </body>
</html>