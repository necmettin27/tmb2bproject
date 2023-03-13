<li class="@if(request()->routeIs('admin.index')) active @endif">
    <a href="/admin"><i class="fa fa-home"></i> <span class="nav-label">@lang('translate.home')</span></a>
</li>

<li class="@if(request()->is('admin/users*')) active @endif">
    <a href="{{ route('users.index') }}"><i class="fa fa-users"></i> <span class="nav-label">Katılımcı Profilli Firmalar</span></a>
</li>
<li class="@if(request()->is('admin/companys*')) active @endif">
    <a href="{{ route('companys.index') }}"><i class="fa fa-users"></i> <span class="nav-label">Satın Almacı Profilli Firmalar</span></a>
</li>

<li class="@if(request()->is('admin/sektorler*')) active @endif">
    <a href="{{ route('sektorler.index') }}"><i class="fa fa-users"></i> <span class="nav-label">@lang('translate.sektorlervefirmayonetimi')</span></a>
</li>

<li class="@if(request()->is('admin/companyprofil*')) active @endif">
    <a href="{{ route('companyprofil.index') }}"><i class="fa fa-users"></i> <span class="nav-label">@lang('translate.profilyonetimi')</span></a>
</li>

<li class="@if(request()->is('admin/randevuyonetimi*')) active @endif">
    <a href="{{ route('randevuyonetimi.index') }}"><i class="fa fa-users"></i> <span class="nav-label">@lang('translate.randevuyonetimi')</span></a>
</li>

<li class="@if(request()->is('admin/settings*')) active @endif">
    <a href="{{ route('settings.index') }}"><i class="fa fa-users"></i> <span class="nav-label">@lang('translate.randevuayarlari')</span></a>
</li>

 
