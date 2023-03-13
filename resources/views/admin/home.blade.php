@extends('.admin.app')
@section('title')
 Anasayfa
@endsection
@section('content')
    <div class="ibox">
        <div class="ibox-title">
          <h5>Katılımcı Profili (standlı firma) <span class="badge badge-warning">Onay Beklemede</span></h5>   
        </div>
        <div class="ibox-content">
        	<table class="table table-striped table-bordered table-hover display responsive nowrap mt-3" id="data" >
                  <thead>
                    <tr>
                      <th>Firma Adı</th> 
                      <th>Yetkili Ad Soyad</th> 
                      <th class="text-left">Email</th>  
                      <th class="text-center">Durum</th> 
                      <th class="text-center">Kayıt Tarihi</th> 
                      <th class="text-right" width="10%">İşlemler</th>
                    </tr>
                  </thead>
                  <tbody>
                      @forelse($users as $user)
                      <tr>
                          <td scope="row">{{ $user->companyname }}</td>
                          <td scope="row">{{ $user->name }}</td>
                          <td scope="row">{{ $user->email }}</td> 
                          
                          <td class="text-center">
                            @if($user->status == "1")
                              <span class="badge bg-success">Aktif</span>
                            @else
                              <span class="badge bg-danger">Pasif</span>
                            @endif  
                          </td> 
                          <td class="text-center">
                            <span title="{{ $user->created_at }}">{{ $user->created_at->diffForHumans() }}</span>
                          </td>
                          
                          <td class="text-right">
                             
                              <a href="{{ route('users.edit',$user->id) }}" class="btn btn-sm btn-success"><i class="fa fa-edit"></i></a>
                              <a onclick="return confirm('Kullanıcı Silinecek onaylıyormusunuz.')" href="{{ route('users.destroy',$user->id) }}" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></a>
                          </td>
                      </tr> 
                    @empty
                      <tr>
                          <th colspan="6">
                              <div class="alert alert-info text-center">
                                  İçerik eklenmemiştir.
                              </div>
                          </th> 
                      </tr> 
                    @endempty
                  </tbody>
                </table>
        </div>
    </div>

    <div class="ibox">
        <div class="ibox-title">
          <h5>Satın Almacı Profili <span class="badge badge-warning">Onay Beklemede</span></h5>   
        </div>
        <div class="ibox-content">
        	<table class="table table-striped table-bordered table-hover display responsive nowrap mt-3" id="data" >
                  <thead>
                    <tr>
                      <th>Firma Adı</th> 
                      <th>Yetkili Ad Soyad</th> 
                      <th class="text-left">Email</th>  
                      <th class="text-center">Durum</th> 
                      <th class="text-center">Kayıt Tarihi</th> 
                      <th class="text-right" width="10%">İşlemler</th>
                    </tr>
                  </thead>
                  <tbody>
                      @forelse($companys as $company)
                      <tr>
                          <td scope="row">{{ $company->companyname }}</td>
                          <td scope="row">{{ $company->name }}</td>
                          <td scope="row">{{ $company->email }}</td> 
                          
                          <td class="text-center">
                            @if($company->status == "1")
                              <span class="badge bg-success">Aktif</span>
                            @else
                              <span class="badge bg-danger">Pasif</span>
                            @endif  
                          </td> 
                          <td class="text-center">
                            <span title="{{ $company->created_at }}">{{ $company->created_at->diffForHumans() }}</span>
                          </td>
                          
                          <td class="text-right">
                             
                              <a href="{{ route('users.edit',$company->id) }}" class="btn btn-sm btn-success"><i class="fa fa-edit"></i></a>
                              <a onclick="return confirm('Kullanıcı Silinecek onaylıyormusunuz.')" href="{{ route('users.destroy',$company->id) }}" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></a>
                          </td>
                      </tr> 
                    @empty
                      <tr>
                          <th colspan="6">
                              <div class="alert alert-info text-center">
                                  İçerik eklenmemiştir.
                              </div>
                          </th> 
                      </tr> 
                    @endempty
                  </tbody>
                </table>
        </div>
    </div>
@endsection
 