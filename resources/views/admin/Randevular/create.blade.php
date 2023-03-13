@extends('.admin.app')
@section('title')
Randevu ekle
@endsection
@section('content')
    <div class="ibox">
        <div class="ibox-title">
           @lang('translate.profilekle')
        </div>
         <div class="ibox-content">
            <form action="{{route('randevuyonetimi.store')}}" method="POST">
               @csrf
               <div class="row">
                    <div class="mb-3 col-6">
                        <label for="title">Katılımcı Profilli Firmalar</label>
                        <select class="form-control" name="gorusme_yapan" id="gorusme_yapan" required>
                            <option value="">Seçiniz</option>
                            @foreach($users as $user)
                                <option value="{{$user->id}}">{{$user->companyname}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="mb-3 col-6">
                        <label for="title">Satın Almacı Profilli Firmalar</label>
                        <select class="form-control" name="gorusme_gelen" id="gorusme_gelen" required>
                            <option value="">Seçiniz</option>
                            @foreach($companys as $company)
                                <option value="{{$company->id}}">{{$company->companyname}}</option>
                            @endforeach
                        </select>
                    </div> 
                    <div class="mb-3 col-6">
                        <label for="title">Tarih</label>
                        <input type="text" class="form-control" name="gorusme_tarih" id="randevutarih">
                    </div> 
                    <div class="mb-3 col-6">
                        <label for="title">Saat</label>
                        <select class="form-control" name="time" id="randetime" required>
                            <option value="">@lang('translate.seciniz')</option>
                        </select>
                    </div>  
                    <div class="mb-3 col-12">
                        <button class="btn btn-danger" type="submit">@lang('translate.kaydet')</button>
                    </div>
               </div>
               
           </form>
        </div>
    </div>
@endsection
@section('css')
<link rel="stylesheet" media="screen" type="text/css" href="/css/bootstrap-daterangepicker.min.css">
@endsection
 @section('js')
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

        <script type="text/javascript">
            $('#gorusme_yapan').change(function(){
               var gorusme_yapan = this.value;
               var date = $('#randevutarih').val();
               var gorusme_gelen = $('#gorusme_gelen').val();
               if(gorusme_gelen!=""){
                    $.ajax({
                        type : 'POST',
                        url :  "{{ route('randevuyonetimi.sorgula') }}",
                        data:{ gorusme_yapan,gorusme_gelen,date},
                        success:function(response){ 
          
                            $('#randetime').html(response.saat);
                        }
                    });
                }
           });

           $('#gorusme_gelen').change(function(){
               var gorusme_gelen = this.value;
               var date = $('#randevutarih').val();
               var gorusme_yapan = $('#gorusme_yapan').val();
               if(gorusme_yapan != ""){
                $.ajax({
                    type : 'POST',
                    url :  "{{ route('randevuyonetimi.sorgula') }}",
                    data:{ gorusme_yapan,gorusme_gelen,date},
                    success:function(response){ 
                      
                        $('#randetime').html(response.saat);
                    }
                });
                }
           });
        </script>
 @endsection