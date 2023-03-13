<table>
<thead>
  <tr> 
    <th>Görüşme Yapan</th> 
    <th>Görüşme Gelen</th>   
    <th>Tarih</th> 
    <th>Saat</th> 
    <th>G.Alan</th>  
  </tr>
</thead>
<tbody> 
    @foreach ( $randevular as $randevu )
        <tr>
          <td> {{ $randevu->TalepEdenUser->companyname }}</td>
          <td> {{ $randevu->GelenUser->companyname }}</td>
          <td>{{ $randevu->gorusme_tarih }}</td>
          <td>{{ $randevu->Getsaat->saat }}</td>
          <td>
            @if($randevu->GelenUser->masano !='')
                {{$randevu->GelenUser->masano}}
            @else
                {{ $randevu->TalepEdenUser->masano }}
            @endif
          </td>
             
        </tr>
    @endforeach
</tbody>
</table>