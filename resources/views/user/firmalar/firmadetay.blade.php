<x-app-layout>
  <x-slot name="header">
  {{$data->companyname}}
    
  </x-slot>
  <x-slot name="back"><a class="btn btn-danger float-right" style="margin-top: -35px" href="{{ route('user.firmalar',$data->sector) }}"><i class="fas fa-arrow-left"></i> @lang('translate.geri')</a></x-slot>
  <div class="card">
      <div class="card-body">
 
          <div class="mb-3 col-12">
                    <p>
                        <span class="font-bold">@lang('translate.companyname'): </span>{{ $data->companyname }}
                    </p>
                    <p>
                        <span class="font-bold">@lang('translate.name'): </span>{{ $data->name }}
                    </p>
                    <p>
                        <span class="font-bold">@lang('translate.website'): </span>{{ $data->website }}
                    </p>
                    <p>
                        <span class="font-bold">@lang('translate.email'): </span>{{ $data->email }}
                    </p>
                    <p>
                        <span class="font-bold">@lang('translate.ulke'): </span>{{ $data->GetUlke->name }}
                    </p>
                    
                    @if($data->companydesciption)
                       <p>
                           <span class="font-bold">@lang('translate.companydesciption'): </span><br/>
                           {!! $data->companydesciption !!}
                       </p> 
                   @endif
                   @if($data->productandservices)
                       <p>
                           <span class="font-bold">@lang('translate.productandservices'): </span><br/>
                           {!! $data->productandservices !!}
                       </p> 
                   @endif
                </div>
           
      </div>
  </div>
  
</x-app-layout>
