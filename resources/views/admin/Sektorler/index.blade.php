@extends('.admin.app')
@section('title')
@lang('translate.sektorlervefirmayonetimi')
@endsection
@section('content')
    <div class="ibox">
        <div class="ibox-title">
          Sektörler Yönetimi
        </div>
         <div class="ibox-content">
            <a href="{{ route('sektorler.create') }}" class="btn btn-sm btn-primary" >Sektör Ekle <i class="fa fa-plus"></i></a>
             <table  class="table table-striped table-bordered table-hover display responsive nowrap mt-3" id="data">
                <thead>
                  <tr>
                    <th scope="col">@lang('translate.baslik_tr')</th> 
                    <th scope="col">@lang('translate.baslik_en')</th> 
                    <th class="text-center">@lang('translate.firmasayisi')</th> 
                    <th class="text-center">@lang('translate.durum')</th> 
                    <th class="text-right">@lang('translate.islemler')</th>
                  </tr>
                </thead>
                <tbody>
                    @forelse($datas as $data)
                    <tr>
                        <td>{{ $data->title_tr }}</td>
                        <td>{{ $data->title_en }}</td>
                        <td class="text-center">
                          {{ $data->firmalar_count }}
                        </td> 
                        <td class="text-center">
                        @if($data->status == "1")
                          <span class="badge bg-success">Aktif</span>
                        @else
                          <span class="badge bg-danger">Pasif</span>
                        @endif  
                        </td> 
                        
                        <td class="text-right"> 
                             
                            <a href="{{ route('sektorler.edit',$data->id) }}" class="btn btn-sm btn-success"><i class="fa fa-edit"></i></a>
                            <a onclick="return confirm('Sektör ve sektör altında bulunan firmalar silinecektir. Onaylıyor musunuz?')" href="{{ route('sektorler.destroy',$data->id) }}" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></a>
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
              <div class="navi">
                  {{ $datas->links('pagination::bootstrap-4') }}
              </div>
              
         </div>
    </div>
@endsection

 