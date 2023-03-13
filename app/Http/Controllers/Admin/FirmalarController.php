<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Sektorler;
use App\Models\Ulkeler;
use App\Models\CompanyProfil;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\FirmalarCreateRequest; 
use App\Http\Requests\FirmalarUpdateRequest; 

class FirmalarController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($sektor_id)
    {
        $sektor = Sektorler::whereId($sektor_id)->first() ?? abort(404,'Sektör Bulunamadı');
        $datas = $sektor->firmalar();
        if(request()->get('s')){
           $datas = $datas->where('companyname','LIKE','%'.request()->get('s').'%');
        }
        $datas = $datas->paginate(20);
       return view('admin.Firmalar.index',compact('sektor','datas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($sektor_id)
    {
        $sektor = Sektorler::find($sektor_id) ?? abort(404,'Sektör Bulunamadı.');
        $ulkeler = Ulkeler::orderBy('name','ASC')->get();
        $profils = CompanyProfil::get();
        return view('admin.Firmalar.create',compact('sektor','ulkeler','profils'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(FirmalarCreateRequest $request,$sektor_id)
    { 
        $data = [
            'companyname' => $request['companyname'],
            'name' => $request['name'],
            'email' => $request['email'],
            'phone' => $request['phone'],
            'company_profile' => $request['profile'],
            'country' => $request['country'],
            'website' => $request['website'], 
            'productandservices' => $request['productandservices'],
            'companydesciption' => $request['companydesciption'],
            'status' => $request['status'],
            'type' => 'company',
            'email_verified_at' => '2021-10-31 13:12:04',
            'randevuonay' => $request['randevuonay'],
            'password' => Hash::make($request['password']),
        ];
        Sektorler::find($sektor_id)->firmalar()->create($data);
        return redirect()->back()->withSuccess(\Lang::get('translate.basarili'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($sektor_id,$id)
    {
        $firma = Sektorler::find($sektor_id)->firmalar()->whereId($id)->first() ?? abort(404,'Firma veya Sektör bulunamadı.');
        $ulkeler = Ulkeler::get();
        $profils = CompanyProfil::get();
        return view('admin.Firmalar.edit',compact('firma','ulkeler','profils'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(FirmalarUpdateRequest $request, $sektor_id,$id)
    {
        Sektorler::find($sektor_id)->firmalar()->whereId($id)->first()->update($request->post());
        return redirect()->back()->withSuccess('Veriniz Başarıyla Güncellendi.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($sektor_id,$id)
    {
        $data = Sektorler::find($sektor_id)->firmalar()->whereId($id)->first() ?? abort(404,'Sektör bulunamadı.'); 
        $data->delete();
        return redirect()->back()->withSuccess('Firma başarıyla silindi');
    }
}
