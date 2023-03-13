@extends('.admin.app')
@section('title')
@lang('translate.profilekle')
@endsection
@section('content')
    <div class="ibox">
        <div class="ibox-title">
           @lang('translate.profilekle')
        </div>
         <div class="ibox-content">
            <form action="{{ route('companyprofil.store') }}" method="POST">
               @csrf
               <div class="row">
                    <div class="mb-3 col-6">
                        <label for="title">@lang('translate.baslik_tr')</label>
                        <input type="text" class="form-control" value="{{ old('title_tr') }}" name="title_tr">
                    </div>
                    <div class="mb-3 col-6">
                        <label for="title">@lang('translate.baslik_en')</label>
                        <input type="text" class="form-control" value="{{ old('title_en') }}" name="title_en">
                    </div>
                     
                    <div class="mb-3 col-12">
                        <button class="btn btn-danger" type="submit">@lang('translate.kaydet')</button>
                    </div>
               </div>
               
           </form>
        </div>
    </div>
@endsection
 