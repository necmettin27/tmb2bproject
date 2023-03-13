<x-app-layout>
    <x-slot name="header">
      @lang('translate.firmaduzenle')
    </x-slot>
   
    <div class="card mt-3">
        <div class="card-body">
            <form action="{{ route('updatebilgi') }}" method="POST">
                @csrf
                @method('PUT')
                <div class="row">
             
                     <div class="mb-3 col-6">
                        <label for="status">@lang('translate.companyname')</label>
                        <input type="text" class="form-control" value="{{ auth()->user()->companyname }}" name="companyname">
                    </div>
                    
                     <div class="mb-3 col-6">
                        <label for="status">@lang('translate.name')</label>
                        <input type="text" class="form-control" value="{{ auth()->user()->name }}" name="name">
                    </div>

                     
                     <div class="mb-3 col-6">
                        <label for="status">@lang('translate.country')</label>
                        <select class="form-control" name="country">
                            <option value=""> {{ __('register.choose') }}</option>
                            @foreach ( \App\Models\Ulkeler::orderBy('name','ASC')->get() as $ulke )
                                <option {{ auth()->user()->country == $ulke->id ? 'selected':'' }} value="{{ $ulke->id }}">{{ $ulke->name }}</option>
                            @endforeach
                        </select>
                    </div>
                     <div class="mb-3 col-6">
                        <label for="status">@lang('translate.sector')</label>
                        <select class="form-control" name="sector" required>
                            <option value=""> {{ __('register.choose') }}</option>
                            @foreach ( \App\Models\Sektorler::orderBy('title_tr','ASC')->get() as $sektor )
                                <option {{ auth()->user()->sector == $sektor->id ? 'selected':'' }} value="{{ $sektor->id }}">
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
                        <input type="text" class="form-control" value="{{ auth()->user()->phone }}" name="phone">
                    </div>

                    <div class="mb-3 col-6">
                        <label for="status">@lang('translate.website')</label>
                        <input type="text" class="form-control" value="{{ auth()->user()->website }}" name="website">
                    </div>
                   
                    <div class="mb-3 col-12">
                        <label for="status">@lang('register.companydesciption')</label>
                        <textarea class="editor" name="companydesciption">{{ auth()->user()->companydesciption }}</textarea>
                    </div>
                    <div class="mb-3 col-12">
                        <label for="status">@lang('register.productandservices')</label>
                        <textarea class="editor" name="productandservices">{{ auth()->user()->productandservices }}</textarea>
                    </div>
                    
                    
                     <div class="mb-3 col-12">
                         <button class="btn btn-danger" type="submit">@lang('translate.update')</button>
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
  