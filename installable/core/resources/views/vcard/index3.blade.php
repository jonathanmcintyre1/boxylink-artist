@extends('vcard.layout')

@if ($vcard->direction == 2)
    @section('rtl', 'dir=rtl')
@endif

@if ($vcard->direction == 2)
@section('rtl-css')
<link rel="stylesheet" href="{{asset('assets/front/css/profile/vcard-rtl.css')}}">
@endsection
@endif

@section('content')
    <!--====== Start Page Wrapper ======-->
    <div class="page-wrapper">
        <div class="container p-0">
            <div class="page-content page-content-two">
                <div class="page-banner bg_cover" style="background-image: url({{!empty($vcard->cover_image) ? asset('assets/front/img/user/vcard/' . $vcard->cover_image) : asset('assets/front/img/user/vcard/vcard_cover.jpg')}});"></div>
                <div class="admin-wrapper">
                    <div class="admin-card text-center">
                        <div class="thumb">
                            <img src="{{!empty($vcard->profile_image) ? asset('assets/front/img/user/vcard/' . $vcard->profile_image) : asset('assets/front/img/user/blank_propic.png')}}" alt="Thumb">
                        </div>
                        <div class="content">
                            <div class="admin-title">
                                <h5>{{$vcard->name}}</h5>
                                <span class="position">{{$vcard->occupation}}</span>
                            </div>
                            <p>{{$vcard->introduction}}</p>
                        </div>
                    </div>
                </div>
                @if (!empty($infos))
                    <div class="page-info-widget">
                        @foreach ($infos as $info)
                            <div class="info-widget d-flex align-items-center">
                                <div class="icon icon-1" style="background: #{{$info['color']}};">
                                    <i class="{{$info['icon']}}"></i>
                                </div>
                                <div class="content">
                                    <span class="title">{{$info['label']}}</span>
                                    <h5><a>{{$info['value']}}</a></h5>
                                </div>
                            </div>
                        @endforeach
                    </div>
                @endif
            </div>
        </div>
    </div><!--====== End Page Wrapper ======-->
    <!--====== Shape Curve SVG ======-->
    <svg style="visibility: hidden; position: absolute;" width="0" height="0" xmlns="http://www.w3.org/2000/svg" version="1.1">
        <defs>
            <filter id="radius"><feGaussianBlur in="SourceGraphic" stdDeviation="8" result="blur" />    
                <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 25 -10" result="goo" />
                <feComposite in="SourceGraphic" in2="goo" operator="atop"/>
            </filter>
        </defs>
    </svg>
@endsection