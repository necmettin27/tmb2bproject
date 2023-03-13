@extends('admin.app')
@section('title') Katılımcı Profili (standlı firma) @endsection
 @section('content')

    <div class="ibox">
        <div class="ibox-title">
         Katılımcı Profili (standlı firma)
        </div>
         <div class="ibox-content">
            <a href="{{ route('export.users') }}" download class="btn btn-primary"><i class="fas fa-file-excel"></i> Excel</a>
            <br>
            <strong>Toplam : {{$count}}</strong>
            <form class="float-right" action="">
    
                <input type="text" class="form-control" name="s" value="{{ request()->get('s') }}" placeholder="Arama"> 
    
            </form>
          
            <table class="table table-striped table-bordered table-hover display responsive nowrap mt-3" id="data" >
                  <thead>
                    <tr>
                      <th>Firma Adı</th> 
                      <th>Yetkili Ad Soyad</th> 
                      <th class="text-left">Email</th> 
                      <th class="text-left">G.Alan</th> 
                      <th class="text-center">Durum</th> 
                      <th class="text-center">Kayıt Tarihi</th> 
                      <th class="text-right" width="10%">İşlemler</th>
                    </tr>
                  </thead>
                  <tbody>
                      @forelse($datas as $data)
                      <tr>
                          <td scope="row">{{ $data->companyname }}</td>
                          <td scope="row">{{ $data->name }}</td>
                          <td scope="row">{{ $data->email }}</td>
                          <td scope="row">{{ $data->masano }}</td>
                          
                          <td class="text-center">
                            @if($data->status == "1")
                              <span class="badge bg-success">Aktif</span>
                            @else
                              <span class="badge bg-danger">Pasif</span>
                            @endif  
                          </td> 
                          <td class="text-center">
                            <span title="{{ $data->created_at }}">{{ $data->created_at->diffForHumans() }}</span>
                          </td>
                          
                          <td class="text-right">
                             
                              <a href="{{ route('users.edit',$data->id) }}" class="btn btn-sm btn-success"><i class="fa fa-edit"></i></a>
                              <a onclick="return confirm('Kullanıcı Silinecek onaylıyormusunuz.')" href="{{ route('users.destroy',$data->id) }}" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></a>
                          </td>
                      </tr> 
                    @empty
                      <tr>
                          <th colspan="7">
                              <div class="alert alert-info text-center">
                                  İçerik eklenmemiştir.
                              </div>
                          </th> 
                      </tr> 
                    @endempty
                  </tbody>
                </table>
 
                <div class="navi"> 
                  {{ $datas->withQueryString()->links() }}
              </div>
     
        </div>
 
 
    </div>

@endsection