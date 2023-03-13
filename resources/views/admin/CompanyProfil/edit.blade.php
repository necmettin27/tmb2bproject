@extends('.admin.app')
@section('title')
    Profil düzenle
@endsection
@section('content')
    <div class="ibox">
        <div class="ibox-title">
            Profil düzenle
        </div>
         <div class="ibox-content">
            <form action="{{ route('companyprofil.update',$data->id) }}" method="POST">
               @csrf
               @method('PUT')
               <div class="row">
                    <div class="mb-3 col-6">
                        <label for="title">@lang('translate.baslik_tr')</label>
                        <input type="text" class="form-control" value="{{ $data->title_tr }}" name="title_tr">
                    </div>
                    <div class="mb-3 col-6">
                        <label for="title">@lang('translate.baslik_en')</label>
                        <input type="text" class="form-control" value="{{ $data->title_en }}" name="title_en">
                    </div>
                     
                    <div class="mb-3 col-12">
                        <button class="btn btn-danger" type="submit">@lang('translate.kaydet')</button>
                    </div>
               </div>
               
           </form>
        </div>
    </div>
@endsection
 