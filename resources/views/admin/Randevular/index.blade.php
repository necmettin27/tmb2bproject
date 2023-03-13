@extends('.admin.app')
@section('title')
  Randevu Yönetimi
@endsection
@section('content')
    <div class="ibox">
        <div class="ibox-title">
            Randevu Yönetimi
        </div>
         <div class="ibox-content">
           <a href="{{ route('export.randevular') }}" class="btn btn-primary"><i class="fa fa-file-excel-o" aria-hidden="true"></i> Excel</a>
           <a href="{{ route('randevuyonetimi.create') }}" class="btn btn-primary float-right"><i class="fa fa-plus"></i> Yeni Randevu Ekle</a>
           <table class="table table-striped table-bordered table-hover display responsive nowrap mt-3">
                <thead>
                  <tr>
                    <th width="3">İd</th> 
                    <th width="30%">Görüşme Yapan</th> 
                    <th width="30%">Görüşme Gelen</th>   
                    <th>Tarih</th> 
                    <th>Saat</th> 
                    <th>G.Alan</th>  
                    <th>İşlemler</th>
                  </tr>
                </thead>
                <tbody> 
                    @forelse ( $randevular as $randevu )
                        <tr
                            @if($randevu->status == 0)
                               class=" bg-danger"
                            @elseif($randevu->status == 1)
                                class=" bg-primary"
                            @elseif($randevu->status == 2)
                                class=" bg-warning"
                            @endif
                        >
                          <td width="5%">{{ $randevu->id }}</td>
                          <td width="20%"><a style="color:white;" href="{{route('randevuyonetimi.ozelliste',$randevu->TalepEdenUser->id)}}">{{ $randevu->TalepEdenUser->companyname }}</a></td>
                          <td width="20%"><a style="color:white;" href="{{route('randevuyonetimi.ozelliste',$randevu->GelenUser->id)}}">{{ $randevu->GelenUser->companyname }}</a></td>
                          <td width="10%">{{ $randevu->gorusme_tarih }}</td>
                          <td width="10%">{{ $randevu->Getsaat->saat }}</td>
                          <td width="7%">
                            @if($randevu->GelenUser->masano !='')
                                {{$randevu->GelenUser->masano}}
                            @else
                                {{ $randevu->TalepEdenUser->masano }}
                            @endif
                          </td>
                          
                             

                            <td width="15%" class="text-center">
                                  
                                <a onclick="return confirm('Veriniz silinecek. Onaylıyor musunuz?')" href="{{ route('randevuyonetimi.destroy',$randevu->id) }}" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></a>
                            </td>
                        </tr>
                    @empty
                    <tr>
                        <td colspan="8">
                            <div class="alert alert-info text-center">İçerik bulunamadı.</div>
                        </td>
                    </tr>
                    @endforelse
                </tbody>
              </table>
         </div>
    </div>
@endsection
 

  