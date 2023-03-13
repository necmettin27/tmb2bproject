<x-app-layout>
    <x-slot name="header">
      @lang('translate.randevuonaylama')
    </x-slot>
    <x-slot name="back"><a class="btn btn-danger float-right" style="margin-top: -35px" href="{{ route('company.randevular') }}"><i class="fas fa-arrow-left"></i> Geri</a></x-slot>
    <div class="card mt-3">
        <div class="card-body">
            <form action="{{ route('randevular.update',$data->id) }}" method="POST">
                @csrf
                @method('PUT')
                <div class="row">

                    @if($data->gorusme_gelen != auth()->user()->id)
                    <div class="mb-3 col-12">
                        <p>
                            <span class="font-bold">@lang('translate.companyname'): </span>{{ $data->GelenUser->companyname }}
                        </p>
                        <p>
                            <span class="font-bold">@lang('translate.name'): </span>{{ $data->GelenUser->name }}
                        </p>
                        <p>
                            <span class="font-bold">@lang('translate.website'): </span>{{ $data->GelenUser->website }}
                        </p>
                        <p>
                            <span class="font-bold">@lang('translate.email'): </span>{{ $data->GelenUser->email }}
                        </p>
                        
                        @if($data->GelenUser->companydesciption)
                           <p>
                               <span class="font-bold">@lang('translate.companydesciption'): </span><br/>
                               {!! $data->GelenUser->companydesciption !!}
                           </p> 
                       @endif
                        @if($data->GelenUser->productandservices)
                           <p>
                               <span class="font-bold">@lang('translate.productandservices'): </span><br/>
                               {!! $data->GelenUser->productandservices !!}
                           </p> 
                       @endif
                    </div>
                     @else

                     <div class="mb-3 col-12">
                        <p>
                            <span class="font-bold">@lang('translate.companyname'): </span>{{ $data->TalepEdenUser->companyname }}
                        </p>
                        <p>
                            <span class="font-bold">@lang('translate.name'): </span>{{ $data->TalepEdenUser->name }}
                        </p>
                        <p>
                            <span class="font-bold">@lang('translate.website'): </span>{{ $data->TalepEdenUser->website }}
                        </p>
                        <p>
                            <span class="font-bold">@lang('translate.email'): </span>{{ $data->TalepEdenUser->email }}
                        </p>
                        
                        @if($data->TalepEdenUser->companydesciption)
                           <p>
                               <span class="font-bold">@lang('translate.companydesciption'): </span><br/>
                               {!! $data->TalepEdenUser->companydesciption !!}
                           </p> 
                       @endif
                        @if($data->TalepEdenUser->productandservices)
                           <p>
                               <span class="font-bold">@lang('translate.productandservices'): </span><br/>
                               {!! $data->TalepEdenUser->productandservices !!}
                           </p> 
                       @endif
                    </div>

                     @endif



                     
                     <div class="mb-3 col-12">
                        <label for="status">Durum</label>
                        <select class="form-control" name="status">
                            <option {{ $data->status=="1" ? 'selected':''  }} value="1">@lang('translate.onayla')</option>
                            <option {{ $data->status=="0" ? 'selected':''  }} value="0">@lang('translate.red')</option>
                            <option {{ $data->status=="2" ? 'selected':''  }} value="2">@lang('translate.onayasamasinda')</option>
                        </select>
                    </div>
                    
                     <div class="mb-3 col-12">
                         <button class="btn btn-danger" type="submit">@lang('translate.update')</button>
                     </div>
                </div>
                
            </form>
            
        </div>
    </div>
 
  </x-app-layout>
  