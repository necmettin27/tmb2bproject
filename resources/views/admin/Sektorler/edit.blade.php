@extends('.admin.app')
@section('title')
{{ $data->title_tr }} sektörünü düzenle
@endsection
@section('content')
    <div class="ibox">
        <div class="ibox-title">
           {{ $data->title_tr }} sektörünü düzenle
        </div>
         <div class="ibox-content">
                 <form action="{{ route('sektorler.update',$data->id) }}" method="POST">
                   @csrf
                   @method('PUT')
                   <div class="row">
                        <div class="mb-3 col-6">
                            <label for="title">Başlık</label>
                            <input type="text" class="form-control" value="{{ $data->title_tr }}" name="title_tr">
                        </div>
                        <div class="mb-3 col-6">
                            <label for="title">Başlık EN</label>
                            <input type="text" class="form-control" value="{{ $data->title_en }}" name="title_en">
                        </div>
                        <div class="mb-3 col-12">
                            <label for="status">Durum</label>
                            <select class="form-control" name="status">
                                <option {{ $data->status == 1 ? 'selected' : '' }} value="1">Aktif</option>
                                <option {{ $data->status == 0 ? 'selected' : '' }} value="0">Pasif</option>
                            </select>
                        </div>
                        <div class="mb-3 col-12">
                            <button class="btn btn-danger" type="submit">Güncelle</button>
                        </div>
                   </div>
                   
               </form>
        </div>
    </div>
@endsection
 


