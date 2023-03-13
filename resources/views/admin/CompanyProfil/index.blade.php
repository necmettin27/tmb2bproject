@extends('.admin.app')
@section('title')
 @lang('translate.profil')
@endsection
@section('content')
    <div class="ibox">
        <div class="ibox-title">
           @lang('translate.profil')
        </div>
         <div class="ibox-content">
             <a href="{{ route('companyprofil.create') }}" class="btn btn-sm btn-primary" >@lang('translate.profilekle') <i class="fa fa-plus"></i></a>
              <table class="table table-striped table-bordered table-hover display responsive nowrap mt-3" id="data" >
                <thead>
                  <tr>
                    <th scope="col">@lang('translate.baslik_tr')</th> 
                    <th scope="col">@lang('translate.baslik_en')</th>   
                    <th class="text-right">@lang('translate.islemler')</th>
                  </tr>
                </thead>
                <tbody>
                    @forelse($datas as $data)
                    <tr>
                        <td>{{ $data->title_tr }}</td>
                        <td>{{ $data->title_en }}</td>
                       
                        <td class="text-right">  
                            <a href="{{ route('companyprofil.edit',$data->id) }}" class="btn btn-sm btn-success"><i class="fa fa-edit"></i></a>
                            <a onclick="return confirm('Profil silinecek onaylıyor musunuz?')" href="{{ route('companyprofil.destroy',$data->id) }}" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></a>
                        </td>
                    </tr> 
                  @empty
                    <tr>
                        <th colspan="3">
                            <div class="alert alert-info text-center">
                               @lang('translate.icerikeklenmemis')
                            </div>
                        </th> 
                    </tr> 
                  @endempty
                </tbody>
              </table> 
          </div>
    </div>
@endsection
 