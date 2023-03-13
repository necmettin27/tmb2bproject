<table>
    <thead>
      <tr>
        <th>Firma Adı</th>   
        <th>Yetkili</th> 
        <th>Ülke</th> 
        <th>Tarih</th> 
        <th>Saat</th>  
        <th>Durum</th>   
      </tr>
    </thead>
    <tbody> 
        @foreach ( $randevular as $randevu )
            <tr>
                @if($randevu->gorusme_gelen != auth()->user()->id)
                <td>{{ $randevu->GelenUser->companyname }}</td>
                <td>{{ $randevu->GelenUser->name }}</td> 
                <td>{{ $randevu->GelenUlke->name }}</td> 
            @else
                <td>{{ $randevu->TalepEdenUser->companyname }}</td>
                <td>{{ $randevu->TalepEdenUser->name }}</td>
                <td>{{ $randevu->TalepEdenUlke->name }}</td> 
            @endif
            <td>{{ $randevu->gorusme_tarih }}</td>
            <td>{{ $randevu->getSaat->saat }}</td>
                <td>
                    @if($randevu->status == 0)
                        <span class="badge bg-danger">Red</span>
                    @elseif($randevu->status == 1)
                        <span class="badge bg-success">Onaylandı</span>
                    @elseif($randevu->status == 2)
                        <span class="badge bg-warning">Onay Aşamasında</span>
                    @endif
                </td>
                
               
            </tr>
        @endforeach
    </tbody>
  </table>  