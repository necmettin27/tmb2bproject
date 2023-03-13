@extends('.admin.app')
@section('title')
 Ayarlar
@endsection
@section('content')
    <div class="ibox">
        <div class="ibox-title">
            Ayarlar
        </div>
         <div class="ibox-content">
            <form action="{{ route('settings.update',$data->id) }}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="card mb-3">
                <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <label for="start">Randevu Başlangıç Tarihi</label>
                                <input type="date" class="form-control" name="start" value="{{ $data->start }}">
                            </div>
                            <div class="col-md-6">
                                <label for="start" >Randevu Bitiş Tarihi</label>
                                <input type="date" class="form-control" name="end" value="{{ $data->end }}">
                            </div>
                        </div>
                </div>
            </div>
            <div class="card mb-3">
                <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <label for="status">Randevu Durumu</label>
                                <select class="form-control" name="status">
                                    <option {{ $data->status == "1" ? 'selected':'' }} value="1">Aktif</option>
                                    <option {{ $data->status == "0" ? 'selected':'' }} value="0">Pasif</option>
                                </select>
                            </div>
                            <div class="col-md-6">
                                @if($data->logo)
                                <a href="{{ asset($data->logo) }}" target="_blank" class="btn btn-success mt-4"><i class="fa fa-eye"></i> Logoyu görüntüle </a>
                                <a onclick="return confirm('Veriniz silinecek. Onaylıyor musunuz?')"  href="{{ route('settings.destroy',$data->id) }}" class="btn btn-danger mt-4 float-right"><i class="fa fa-trash"></i> Logoyu Sil </a>
                                @else
                                    <label for="logo">Logo</label>
                                    <input type="file" class="form-control" name="logo">
                                @endif
                            </div>
                        </div>
                </div>
            </div>
            <div class="card mb-3">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <button class="btn btn-danger btn-block">Kaydet</button> 
                        </div>
                    </div>
                </div>
            </div>
    </form>
          </div>
    </div>
@endsection
 