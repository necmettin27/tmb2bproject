<a href="{{ auth()->user()->type == "admin" ? route('admin.index') : route('dashboard') }} ">
    <img src="{{ asset('favicon.png') }}" style="max-width: 60px;margin-top: 10px;margin-bottom: 10px;">
 </a>
 