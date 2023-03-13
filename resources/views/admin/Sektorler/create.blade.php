@extends('.admin.app')
@section('title')
 Sektör Oluştur
@endsection
@section('content')
    <div class="ibox">
        <div class="ibox-title">
           Sektör Oluştur
        </div>
         <div class="ibox-content">
            <form action="{{ route('sektorler.store') }}" method="POST">
               @csrf
               <div class="row">
                    <div class="mb-3 col-6">
                        <label for="title">Başlık TR</label>
                        <input type="text" class="form-control" value="{{ old('title_tr') }}" name="title_tr">
                    </div>
                    <div class="mb-3 col-6">
                        <label for="title">Başlık EN</label>
                        <input type="text" class="form-control" value="{{ old('title_en') }}" name="title_en">
                    </div>
                    <div class="mb-3 col-12">
                        <label for="status">Durum</label>
                        <select class="form-control" name="status">
                            <option value="1">Aktif</option>
                            <option value="1">Pasif</option>
                        </select>
                    </div>
                    <div class="mb-3 col-12">
                        <button class="btn btn-danger" type="submit">Kaydet</button>
                    </div>
               </div>
               
           </form>
        </div>
    </div>
@endsection
 
