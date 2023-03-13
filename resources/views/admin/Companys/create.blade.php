<x-app-layout>
    <x-slot name="header">{{ $sektor->title_tr }} sektörü için firma ekle</x-slot>
    <x-slot name="back"><a class="btn btn-danger float-right" style="margin-top: -35px" href="{{ route('firmalar.index',$sektor->id) }}"><i class="fas fa-arrow-left"></i> Geri</a></x-slot>
    <div class="card">
        <div class="card-body">
           <form action="{{ route('firmalar.store',$sektor->id) }}" method="POST">
               @csrf
               <div class="row">
                    <div class="mb-3 col-6">
                        <label for="title">@lang('translate.companyname')</label>
                        <input type="text" class="form-control" value="{{ old('companyname') }}" name="companyname">
                    </div>
                    <div class="mb-3 col-6">
                        <label for="title">@lang('translate.name')</label>
                        <input type="text" class="form-control" value="{{ old('name') }}" name="name">
                    </div>
                    <div class="mb-3 col-6">
                        <label for="status">@lang('translate.ulke')</label>
                        <select class="form-control" name="country">
                            <option value="">@lang('translate.choose')</option>
                            @foreach ( $ulkeler as $ulke )
                                <option  {{ old('country') == $ulke->id ? 'selected':'' }} value="{{ $ulke->id }}">{{ $ulke->iso_code }} - {{ $ulke->name }}</option> 
                            @endforeach
                        </select>
                    </div>
                    <div class="mb-3 col-6">
                        <label for="status">@lang('translate.profil')</label>
                        <select class="form-control" name="profile">
                            <option value="">@lang('translate.choose')</option>
                            @foreach ( $profils as $profil )
                                <option {{ old('profile') == $profil->id ? 'selected':'' }} value="{{ $profil->id }}">{{ $profil->title_tr }}</option> 
                            @endforeach
                        </select>
                    </div>
                    <div class="mb-3 col-6">
                        <label for="title">@lang('translate.website')</label>
                        <input type="text" class="form-control" value="{{ old('website') }}" name="website">
                    </div>
                    <div class="mb-3 col-6">
                        <label for="title">@lang('translate.phone')</label>
                        <input type="text" class="form-control" value="{{ old('phone') }}" name="phone">
                    </div>
                    <div class="mb-3 col-12">
                        <label for="title">@lang('translate.email')</label>
                        <input type="text" class="form-control" value="{{ old('email') }}" name="email">
                    </div>
                    
                    <div class="mb-3 col-6">
                        <label for="title">@lang('translate.password')</label>
                        <input type="text" class="form-control" name="password">
                    </div>
                    <div class="mb-3 col-6">
                        <label for="title">@lang('translate.password_tekrar')</label>
                        <input type="text" class="form-control" name="password_confirmation">
                    </div>
                    
                    <div class="mb-3 col-12">
                        <label for="title">@lang('translate.hedefurun')</label>
                        <textarea class="form-control editor" rows="5" id="desciption_tr" name="productandservices">{{ old('productandservices') }}</textarea>
                    </div>
                    <div class="mb-3 col-12">
                        <label for="title">@lang('register.companydesciption')</label>
                        <textarea class="form-control editor" rows="5" id="desciption_en" name="companydesciption">{{ old('companydesciption') }}</textarea>
                    </div>
                    
                    <div class="mb-3 col-6">
                        <label for="status">@lang('translate.durum')</label>
                        <select class="form-control" name="status">
                            <option value="1">@lang('translate.aktif')</option>
                            <option value="0">@lang('translate.pasif')</option>
                        </select>
                    </div>
                    <div class="mb-3 col-6">
                        <label for="status">{{ __('register.randevuonay') }}</label>
                        <select class="form-control" name="randevuonay">
                            <option value="1">@lang('translate.otomatikonaylansin')</option>
                            <option value="2">@lang('translate.onayimasunulsun')</option>
                        </select>
                    </div>
                    <div class="mb-3 col-12">
                        <button class="btn btn-danger" type="submit">@lang('translate.kaydet')</button>
                    </div>
               </div>
               
           </form>
          
        
        </div>
    </div>
    <x-slot name="js">
        <script type="text/javascript" src="{{ asset('tinymce/js/tinymce/tinymce.min.js') }}"></script>
        <script>
            tinymce.init({
                selector: '.editor',
                height: 300,
                menubar: true,
                plugins: [
                    'advlist autolink lists link image charmap print preview anchor',
                    'searchreplace visualblocks code fullscreen',
                    'insertdatetime media table paste code help wordcount'
                ],
                toolbar: 'undo redo | formatselect | ' +
                'bold italic backcolor | alignleft aligncenter ' +
                'alignright alignjustify | bullist numlist outdent indent | ' +
                'removeformat | help',
                content_style: 'body { font-family:Helvetica,Arial,sans-serif; font-size:14px }'
                });
         

        </script>
     </x-slot>
</x-app-layout>
