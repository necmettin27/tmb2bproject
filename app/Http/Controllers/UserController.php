<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Sektorler;
use App\Http\Requests\CompanyUpdateRequest;
use Illuminate\Support\Facades\Auth;

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

        $datas = User::where('type','company')->where('status','1');
        if(request()->get('s')){
           $datas = $datas->where('companyname','LIKE','%'.request()->get('s').'%');
        }
        if(Auth::user()->status == 1){
            $datas = $datas->where('status','1');
        }else{
            $datas = $datas->where('status','50');
        }
        $sektorAditr = $sektor->title_tr;
        $sektorAdien = $sektor->title_en;
        $datas = $datas->where(function($q) use ($sektor,$sektorAditr,$sektorAdien){
            $q = $q->where('sector',$sektor);
            $q = $q->orWhere('companydesciption','LIKE','%'.$sektorAditr.'%');
            $q = $q->orWhere('companydesciption','LIKE','%'.$sektorAdien.'%');
            $q = $q->orWhere('companydesciption','LIKE','%GENEL TİCARET%');
            $q = $q->orWhere('companydesciption','LIKE','%GENERAL TRADE%');
        });

        $datas = $datas->paginate(20);
       return view('user.firmalar.firmalar',compact('sektor','datas'));
    }
    public function firmadetay($id)
    {
        $data = User::whereId($id)->where('status','1')->where('type','company')->first() ?? abort(404,"Firma Bulunamadı");
        return view('user.firmalar.firmadetay',compact('data'));
    }
}
