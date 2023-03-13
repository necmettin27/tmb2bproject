<x-app-layout>
    <x-slot name="header">Randevu Düzenleme</x-slot>
 
    <div class="card">
        <div class="card-body">
           <form action="{{ route('randevuyonetimi.update',$data->id) }}" method="POST">
               @csrf
               @method('PUT')
               <div class="row">
                    <div class="col-6">
                        <h3>Görüşme Yapan</h3>
                        <div class="mb-3 col-12">
                            <label for="title">Ad Soyad</label>
                            <input type="text" class="form-control" value="{{ $data->getUserYapan->name }}" readonly>
                        </div>
                        <div class="mb-3 col-12">
                            <label for="title">Email</label>
                            <input type="text" class="form-control" value="{{ $data->getUserYapan->email }}" readonly>
                        </div>
                        <h3>Randevu Bilgileri</h3>
                        <div class="mb-3 col-12">
                            <label for="title">Tarih</label>
                            <input type="text" class="form-control" value="{{ $data->gorusme_tarih }}" readonly>
                        </div>
                        <div class="mb-3 col-12">
                            <label for="title">Saat</label>
                            <input type="text" class="form-control" value="{{ $data->getSaat->saat }}" readonly>
                        </div>
                    </div>
                    <div class="col-6">
                        <h3>Görüşme Gelen</h3>
                        <div class="mb-3 col-12">
                            <label for="title">Firma Adı TR</label>
                            <input type="text" class="form-control" value="{{ $data->getCompany->title_tr }}" readonly>
                        </div>
                        <div class="mb-3 col-12">
                            <label for="title">Firma Adı EN</label>
                            <input type="text" class="form-control" value="{{ $data->getCompany->title_en }}" readonly>
                        </div>
                        <div class="mb-3 col-12">
                            <label for="title">Yetkili</label>
                            <input type="text" class="form-control" value="{{ $data->getUserGelen->name }}" readonly>
                        </div>
                        <div class="mb-3 col-12">
                            <label for="title">Ünvan</label>
                            <input type="text" class="form-control" value="{{ $data->getUserGelen->title_tr }} / {{ $data->getUserGelen->title_en }}" readonly>
                        </div>
                       
                    </div>
                     
                    <div class="mb-3 col-12">
                        <label for="status">Randevu Durumu</label>
                        <select class="form-control" name="status">
                            <option {{ $data->status == 1 ? 'selected' : '' }} value="1">Onaylandı</option>
                            <option {{ $data->status == 0 ? 'selected' : '' }} value="0">Red</option>
                            <option {{ $data->status == 2 ? 'selected' : '' }} value="2">Onay Aşamsında</option>
                        </select>
                    </div>
                    <div class="mb-3 col-12">
                        <button class="btn btn-danger" type="submit">Güncelle</button>
                    </div>
               </div>
               
           </form>
          
        
        </div>
    </div>
    
</x-app-layout>
