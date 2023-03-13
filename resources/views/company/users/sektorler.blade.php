<x-app-layout>
    <x-slot name="header">
      @lang('translate.sektorlervefirmayonetimi')
    </x-slot>
    <div class="card">
        <div class="card-body">
           
            <table class="table table-striped">
                <thead>
                  <tr>
                    @if(app()->isLocale('tr'))
                        <th scope="col">@lang('translate.baslik_tr')</th>  
                      @else
                      <th scope="col">@lang('translate.baslik_en')</th>  
                    @endif
                    <th class="text-right">@lang('translate.islemler')</th>
                  </tr>
                </thead>
                <tbody>
                    @forelse($datas as $data)
                    <tr>
                        @if(app()->isLocale('tr'))
                         <td>{{ $data->title_tr }}</td>
                        @else
                            <td>{{ $data->title_en }}</td>
                        @endif
            
                        <td class="text-right"> 
                            <a href="{{ route('user.firmalar',$data->id) }}" class="btn btn-sm btn-primary" ><i class="fas fa-building"></i></a>
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
              {{ $datas->links() }}
        </div>
    </div>
    
</x-app-layout>
