<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Sektorler;
use App\Http\Requests\CompanyUpdateRequest;

class UserController extends Controller
{
    public function edit()
    {
        return view('user.edit');
    }
    public function update(CompanyUpdateRequest $request)
    {
        $request->offsetUnset('_method');
        $request->offsetUnset('_token');
        User::whereId(auth()->user()->id)->update($request->post());
        return redirect()->back()->withSuccess(\Lang::get('translate.guncellendi'));
    }

    public function sektorler()
    {
        $datas = Sektorler::withCount('firmalar')->orderBy('id','DESC')->where('status','1')->paginate(50);   
        return view('user.firmalar.sektorler',compact('datas'));
    }

    public function firmalar($sektor_id)
    {
        $sektor = Sektorler::whereId($sektor_id)->where('status','1')->first() ?? abort(404,'Sektör Bulunamadı');
        $datas = $sektor->firmalar();
        if(request()->get('s')){
           $datas = $datas->where('companyname','LIKE','%'.request()->get('s').'%');
        }
        $datas = $datas->paginate(20);
       return view('user.firmalar.firmalar',compact('sektor','datas'));
    }
    public function firmadetay($id)
    {
        $data = User::whereId($id)->where('status','1')->where('type','company')->first() ?? abort(404,"Firma Bulunamadı");
        return view('user.firmalar.firmadetay',compact('data'));
    }
}
