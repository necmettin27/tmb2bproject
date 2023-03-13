<x-app-layout>
 
    <x-slot name="header">
      @lang('translate.home')
    </x-slot>
    <div class="card mt-3">
      <div class="card-body">
          <h5 class="card-title">
            <a href="{{ route('randevu.export') }}" class="btn btn-primary"><i class="fas fa-file-excel"></i> Excel</a>
               
          </h5>
          <table class="table table-striped">
            <thead>
              <tr>
                <th>@lang('translate.companyname')</th>   
                <th>@lang('translate.yetkili')</th> 
                <th>@lang('translate.ulke')</th>                    
                <th>@lang('translate.tarih')</th> 
                <th>@lang('translate.saat')</th> 
                <th>@lang('translate.durum')</th> 
                
              </tr>
            </thead>
            <tbody> 
                @forelse ( $randevular as $randevu )
                    <tr>
                        @if($randevu->gorusme_gelen != auth()->user()->id)
                            <td>{{ $randevu->GelenUser->companyname }}</td>
                            <td>{{ $randevu->GelenUser->name }}</td> 
                            <td>{{ $randevu->GelenUlke->name }}</td> 
                        @else
                            <td>{{ $randevu->TalepEdenUser->companyname }}</td>
                            <td>{{ $randevu->TalepEdenUser->name }}</td>
                            <td>{{ $randevu->TalepEdenUlke->name }}</td> 
                        @endif
                        <td>{{ $randevu->gorusme_tarih }}</td>
                        <td>{{ $randevu->getSaat->saat }}</td>
                        <td>
                            @if($randevu->status == 0)
                                <span class="badge bg-danger">@lang('translate.red')</span>
                            @elseif($randevu->status == 1)
                                <span class="badge bg-success">@lang('translate.onaylandi')</span>
                            @elseif($randevu->status == 2)
                                <span class="badge bg-warning">@lang('translate.onayasamasinda')</span>
                            @endif
                        </td>
                        
                    </tr>
                @empty
                <tr>
                  <td colspan="8">
                      <div class="alert alert-info text-center">
                          @lang('translate.alinmisrandevuyok')
                      </div>
                  </td>
              </tr>
                @endforelse
            </tbody>
          </table>  
      </div>
  </div>
   
</x-app-layout>
