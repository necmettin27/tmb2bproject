<x-app-layout>
  <x-slot name="header">
    @lang('translate.sektoruneait',['name'=>$sektor->title_tr])
    
  </x-slot>
  <x-slot name="back"><a class="btn btn-danger float-right" style="margin-top: -35px" href="{{ route('user.sektorler') }}"><i class="fas fa-arrow-left"></i> @lang('translate.geri')</a></x-slot>
  <div class="card">
      <div class="card-body">
          <h5 class="card-title">
              
              <form class="float-right" action="">
                <div class="">
                  <input type="text" class="form-control" name="s" value="{{ request()->get('s') }}" placeholder="@lang('translate.arama')"> 
                </div>
              </form>
          </h5>
          <table class="table table-striped">
              <thead>
                <tr>
                  <th>@lang('translate.companyname')</th>  
                  <th>@lang('translate.name')</th>  
                  <th>@lang('translate.email')</th>  
                  <th class="text-left">@lang('translate.ulke')</th> 
                 
                </tr>
              </thead>
              <tbody> 
                  @forelse($datas as $data)
                  <tr>
                      <td scope="row"><a href="{{route('user.firmalardetay',$data->id)}}" style="text-decoration: none;color:black;">{{ $data->companyname }}</a></td> 
                      <td scope="row">{{ $data->name }}</td> 
                      <td scope="row">{{ $data->email }}</td> 
                      <td scope="row">
                         @if(app()->isLocale('tr'))
                        {{ $data->getUlke->name }}
                        @else
                         {{ $data->getUlke->name_en }}
                        @endif
                      </td> 
 
                  </tr> 
                @empty
                  <tr>
                      <th colspan="5">
                          <div class="alert alert-info text-center">
                             @lang('translate.icerikeklenmemis')
                          </div>
                      </th> 
                  </tr> 
                @endempty
              </tbody>
            </table> 
            {{ $datas->withQueryString()->links() }}
      </div>
  </div>
  
</x-app-layout>
