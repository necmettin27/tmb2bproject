<x-app-layout>
    <x-slot name="header">
     @lang('translate.randevuyonetimi')
    </x-slot>
    <h5 class="card-title">@lang('translate.hizlirandevual') </h5>
    <div class="card">
        <div class="card-body">
            <div class="alert alert-info">
                <p>
                    Türkiye’ den Katılım Sağlayan, İmalatçı, İhtalatçı ve İhracatçı firmalarımızın dikkatine;<br/> 
                    1) Kullanmış Olduğunuz bu sistem ( B2B) eşleştirme sistemidir. <br/>
                    2) Bu Sistem içerisinde sadece Türk (Yerli) katılıcılarımız randevu oluşturabilir. <br/>
                    3) Oluşturduğunuz randevular Afrika’ dan gelen ziyaretçilerimize Mail ve Matbuu Form olarak iletilir. <br/>
                    4) Afrika Kıta’ sından gelen ziyaretçilerimize bu randevulara riayet etmesi tavsiye ve rica edilir. <br/>
                    5)  Afrika Kıtası’ ndan gelen Ziyaretçilerimiz görüşemeler esnasında, farklı bir firma ile görüşme yapabilir. <br/>
                    6) Afrika Kıtasından gelen Ziyaretçilerimiz masalardaki görüşmelerini olması gerekenden daha uzun tutabilir <br/>
                    7) Siz Kıymetli Türk Firmalarımız da. Sizinle ilgili olduğunu gözlemlediğiniz Afrikalı Ziyaretçilerimizi masanıza davet edebilirsiniz <br/>
                    Teşekkür ederiz. <br/>
                    WCI FORUM
                </p>
            </div>
            @if($settings->status == 1)
            @if(auth()->user()->status == 1)
            <form action="{{ route('randevular.store') }}" method="POST">
                @csrf
                <div class="row">
                    <div class="col-md-4 mb-3">
                        <label>@lang('translate.grupsektor')</label>
                        <select class="form-control" name="sektor" id="sektor" required>
                            <option value="">@lang('translate.seciniz')</option>
                            @foreach ( $sektorler as $sektor )
                                <option value="{{ $sektor->id }}">
                                @if(app()->getLocale()=="tr")
                                {{ $sektor->title_tr }}
                                @else
                                {{ $sektor->title_en }}
                                @endif
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label>@lang('translate.ulke')</label>
                        <select class="form-control" name="ulke" id="ulke" required>
                            <option value="">@lang('translate.seciniz')</option>
                            <option value="all">@lang('translate.tumu')</option>
                            @foreach ( $ulkeler as $ulke )
                            @if(app()->isLocale('tr'))
                             <option value="{{ $ulke->id }}">{{ $ulke->name }}</option>
                            @else
                             <option value="{{ $ulke->id }}">{{ $ulke->name_en }}</option>
                            @endif
                               
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label>@lang('translate.tarih')</label>
                        <input type="text" name="date" id="randevutarih" class="form-control" required>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label>@lang('translate.firmalar')</label>
                        <select class="form-control" name="company" id="company" required>
                            <option value="">@lang('translate.seciniz')</option>
                        </select>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label>@lang('translate.firmayetkilileri')</label>
                        <select class="form-control" name="company_user" id="company_user" required>
                            <option value="">@lang('translate.seciniz')</option>
                        </select>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label>@lang('translate.randevusaati')</label>
                        <select class="form-control" name="time" id="randetime" required>
                            <option value="">@lang('translate.seciniz')</option>
                        </select>
                    </div>
                    <div class="col-md-12 text-right mb-3">
                        <button class="btn btn-primary">@lang('translate.randevuekle')</button>
                    </div>

                </div>
            </form>
            @else
            <div class="alert alert-info">
                @lang('translate.hesaponaylanmadi')
            </div>
            @endif
            @else
            <div class="alert alert-info">
                @lang('translate.randevualimlaribaslamadi')
            </div>
            @endif
        </div>
    </div>
    <div class="card mt-3">
        <div class="card-body">
            <h5 class="card-title">
                <a href="{{ route('randevu.export') }}" class="btn btn-primary"><i class="fas fa-file-excel"></i> Excel</a>
            </h5>
            <table class="table table-striped">
                <thead>
                  <tr>
                    <th>@lang('translate.companyname')</th>   
                    <th>@lang('translate.yetkili')</th> 
                    <th>@lang('translate.ulke')</th>                    
                    <th>@lang('translate.tarih')</th> 
                    <th>@lang('translate.saat')</th> 
                    <th>G.Alan</th> 
                    <th>@lang('translate.durum')</th> 
                    <th>@lang('translate.islemler')</th>
                  </tr>
                </thead>
                <tbody> 
                    @forelse ( $randevular as $randevu )
                        <tr>
                             
                            <td>{{ $randevu->GelenUser->companyname }}</td>
                            <td>{{ $randevu->GelenUser->name }}</td> 
                               @if(app()->isLocale('tr'))
                            <td>{{ $randevu->GelenUlke->name }}</td> 
                                @else
                             <td>{{ $randevu->GelenUlke->name_en }}</td> 
                             @endif
                            
                            <td>{{ $randevu->gorusme_tarih }}</td>
                            <td>{{ $randevu->getSaat->saat }}</td>
                            <td>
                                @if($randevu->GelenUser->masano !='')
                                    {{$randevu->GelenUser->masano}}
                                @else
                                    {{ $randevu->TalepEdenUser->masano }}
                                @endif
                            </td>
                            <td>
                                 @if($randevu->status == 0)
                                <span class="badge bg-danger">@lang('translate.red')</span>
                            @elseif($randevu->status == 1)
                                <span class="badge bg-success">@lang('translate.onaylandi')</span>
                            @elseif($randevu->status == 2)
                                <span class="badge bg-warning">@lang('translate.onayasamasinda')</span>
                            @endif
                            </td>
                            <td class="text-center">
                                @if($randevu->randevutalepeden != auth()->user()->id && $randevu->status ==2)
                                    <a href="{{ route('randevular.edit',$randevu->id) }}" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i></a>
                                @endif
                                <a onclick="return confirm('@lang('translate.verilersilinecek')')" href="{{ route('randevular.destroy',$randevu->id) }}" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i></a>
                            </td>
                        </tr>
                    @empty
                    <tr>
                        <td colspan="8">
                            <div class="alert alert-info text-center">
                                 @lang('translate.alinmisrandevuyok')
                            </div>
                        </td>
                    </tr>
                    @endforelse
                </tbody>
              </table>  
        </div>
    </div>
    <x-slot name="css">
        <link rel="stylesheet" media="screen" type="text/css" href="/css/bootstrap-daterangepicker.min.css">
        <meta name="csrf-token" content="{{ csrf_token() }}" />
    </x-slot>
    <x-slot name="js">
        <script src="/js/jquery-3.6.0.min.js"></script>
        <script type="text/javascript" src="/js/moment/moment-with-locales.min.js"></script>
        <script type="text/javascript" src="/js/eonasdan-bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>
        <script type="text/javascript" src="/js/daterangepicker/daterangepicker.js"></script>

        <script type="text/javascript" src="/js/eonasdan-bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>
        <script type="text/javascript">
            $(function() {
                    function cb(start, end) {
                        $('#reportrange span').html(start.format('D MMMM, YYYY') + ' - ' + end.format('D MMMM, YYYY'));
                    }
                    cb(moment().subtract(29, 'days'), moment());
                    $('#randevutarih').daterangepicker({
                        singleDatePicker: true,
                        showDropdowns: true,
                        locale:{format: 'D/MM/YYYY', },
                        startDate: "{{ \Carbon\Carbon::createFromFormat('Y-m-d', $settings->start)->format('d/m/Y')}}",
                        endDate: '{{ \Carbon\Carbon::createFromFormat('Y-m-d', $settings->end)->format('d/m/Y')}}',
                        minDate: '{{ \Carbon\Carbon::createFromFormat('Y-m-d', $settings->start)->format('d/m/Y')}}',
                        maxDate: '{{ \Carbon\Carbon::createFromFormat('Y-m-d', $settings->end)->format('d/m/Y')}}'
                    })
                });
        </script>
        <script>
             $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $('#sektor').change(function(){
                var sektor = this.value;
                var ulke = document.getElementById('ulke').value;
                if(ulke !=''){
                    $.ajax({
                        type : 'POST',
                        url :  "{{ route('randevular.firmalar') }}",
                        data:{ ulke,sektor},
                        success:function(response){
                        if(response.count!=0){
                            $('#company').html('');
                            $('#company').append('<option value="">@lang('translate.firmaseciniz')</option>');
                            response.datas.forEach(function(data, index) {
                            $('#company').append('<option value="'+data.id+'">'+data.companyname+'</option>')
                            });
                        }else{
                            $('#company').html('<option value="">@lang('translate.firmabulunamadi')</option>');
                        }
                        }
                    });
                 }
            });
           $('#ulke').change(function(){
               var sektor = document.getElementById('sektor');
               if(sektor.value !=''){
                sektor = sektor.value;
                var ulke = this.value;
                $.ajax({
                    type : 'POST',
                    url :  "{{ route('randevular.firmalar') }}",
                    data:{ ulke,sektor},
                    success:function(response){
                       if(response.count!=0){
                        $('#company').html('');
                        $('#company').append('<option value="">@lang('translate.firmaseciniz')</option>');
                        response.datas.forEach(function(data, index) {
                           $('#company').append('<option value="'+data.id+'">'+data.companyname+'</option>')
                        });
                       }else{
                        $('#company').html('<option value="">@lang('translate.firmabulunamadi')</option>');
                       }
                    }
                });
               }else{
                   alert("@lang('translate.sektorseciniz')");
               }
           });
           $('#company').change(function(){
               var id = this.value;
                $.ajax({
                    type : 'POST',
                    url :  "{{ route('randevular.firmayetkili') }}",
                    data:{ id},
                    success:function(response){
                        if(response.count!=0){
                            $('#company_user').html('');
                            $('#company_user').append('<option value="">@lang('translate.firmayetkilisisec')</option>');
                            response.datas.forEach(function(data, index) {
                            $('#company_user').append('<option value="'+data.id+'">'+data.name+'</option>')
                            });
                        }else{
                            $('#company_user').html('<option value="">@lang('translate.firmayetkilibulunamadi')</option>');
                        }
                    }
                });
           });
           $('#company_user').change(function(){
               var userid = this.value;
               var date = $('#randevutarih').val();
            
               var firma = $('#company').val();
                $.ajax({
                    type : 'POST',
                    url :  "{{ route('randevular.saat') }}",
                    data:{ userid,date,firma},
                    success:function(response){ 
                        $('#randetime').html(response.saat);
                    }
                });
           });
        </script>
    </x-slot>
  </x-app-layout>
  