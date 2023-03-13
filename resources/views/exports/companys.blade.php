<table>
    <thead>
      <tr>
        <th>Firma Adı</th>   
        <th>Yetkili</th> 
        <th>Ülke</th>   
        <th>Sektör</th>   
        <th>Email</th>   
        <th>Telefon</th>   
        <th>Web Site</th>   
        <th>Kayıt Tarihi</th>   
      </tr>
    </thead>
    <tbody> 
        @foreach ( $users as $user )
            <tr> 
                <td>{{$user->companyname}}</td> 
                <td>{{$user->name}}</td>  
                <td>
                    @if(app()->isLocale('tr'))
                        {{$user->getUlke->name}}
                    @else
                         {{$user->getUlke->name_en}}
                    @endif
                </td> 
                <td>
                     @if(app()->isLocale('tr'))
                        {{$user->getSektor->title_tr}}
                    @else
                         {{$user->getSektor->title_en}}
                    @endif
                </td>
                <td>{{$user->email}}</td>
                <td>{{$user->phone}}</td>
                <td>{{$user->website}}</td>
                <td>{{$user->created_at}}</td>
            </tr>
        @endforeach
    </tbody>
  </table>  