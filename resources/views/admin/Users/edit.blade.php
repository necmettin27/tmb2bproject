@extends('.admin.app')
@section('title')
@lang('translate.kullaniciduzeniyor',['name'=>$data->name])
@endsection
@section('content')
    <div class="ibox">
        <div class="ibox-title">
           @lang('translate.kullaniciduzeniyor',['name'=>$data->name])
        </div>
         <div class="ibox-content">
        <form action="{{ route('users.update',$data->id) }}" method="POST">
               @csrf
               @method('PUT')
               <div class="row">
                <div class="mb-3 col-6">
                    <label for="status">@lang('translate.companyname')</label>
                    <input type="text" class="form-control" value="{{ $data->companyname }}" name="companyname">
                </div>
                
                 <div class="mb-3 col-6">
                    <label for="status">@lang('translate.name')</label>
                    <input type="text" class="form-control" value="{{ $data->name }}" name="name">
                </div>

                 
                 <div class="mb-3 col-6">
                    <label for="status">@lang('translate.country')</label>
                    <select class="form-control" name="country">
                        <option value=""> {{ __('register.choose') }}</option>
                        @foreach ( \App\Models\Ulkeler::orderBy('name','ASC')->get() as $ulke )
                            <option {{ $data->country == $ulke->id ? 'selected':'' }} value="{{ $ulke->id }}">{{ $ulke->name }}</option>
                        @endforeach
                    </select>
                </div>
                 <div class="mb-3 col-6">
                    <label for="status">@lang('translate.sector')</label>
                    <select class="form-control" name="sector" required>
                        <option value=""> {{ __('register.choose') }}</option>
                        @foreach ( \App\Models\Sektorler::orderBy('title_tr','ASC')->get() as $sektor )
                            <option {{ $data->sector == $sektor->id ? 'selected':'' }} value="{{ $sektor->id }}">
                                @if(app()->getLocale() == "tr")
                                {{ $sektor->title_tr }}
                                @else
                                {{ $sektor->title_en }}
                                @endif
                               
                            </option>
                        @endforeach
                    </select>
                </div>

                <div class="mb-3 col-6">
                    <label for="status">@lang('translate.phone')</label>
                    <input type="text" class="form-control" value="{{ $data->phone }}" name="phone">
                </div>

                <div class="mb-3 col-6">
                    <label for="status">@lang('translate.website')</label>
                    <input type="text" class="form-control" value="{{ $data->website }}" name="website">
                </div>
               
                <div class="mb-3 col-12">
                    <label for="status">@lang('translate.companydesciption')</label>
                    <textarea class="editor" name="companydesciption">{{ $data->companydesciption }}</textarea>
                </div>
                <div class="mb-3 col-12">
                    <label for="status">@lang('register.productandservices')</label>
                    <textarea class="editor" name="productandservices">{{ $data->productandservices }}</textarea>
                </div>

                <div class="mb-3 col-6">
                    <label for="status">Kullanıcı Tipi</label>
                    <select class="form-control" name="type">
                        <option {{ $data->type == 'user' ? 'selected':'' }}  value="user">Katılımcı Profili (standlı firma)</option>
                        <option {{ $data->type == 'company' ? 'selected':'' }}  value="company">Satın Almacı Profilli Firma</option>
                    </select>
                </div>
                <div class="mb-3 col-6">
                    <label for="status">@lang('translate.durum')</label>
                    <select class="form-control" name="status">
                        <option {{ $data->status == 1 ? 'selected':'' }}  value="1">@lang('translate.aktif')</option>
                        <option {{ $data->status == 0 ? 'selected':'' }}  value="0">@lang('translate.pasif')</option>
                    </select>
                </div>
                <div class="mb-3 col-12">
                    <label for="status">Görüşme Alan</label>
                    <input type="text" class="form-control" value="{{ $data->masano }}" name="masano">
                </div>
                
                
                 <div class="mb-3 col-12">
                     <button class="btn btn-danger" type="submit">@lang('translate.update')</button>
                 </div>
               </div>
           </form>
       </div>
   </div>

@endsection

@section('js')
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
@endsection
