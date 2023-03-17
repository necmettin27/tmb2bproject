<?php

namespace App\Http\Controllers\Company;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\CompanyUpdateRequest;
use App\Models\User; 
use App\Models\Sektorler;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function register()
    {
        return view('auth.companyregister');
    }

    public function edit()
    {
        return view('company.edit');
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
        $datas = Sektorler::withCount('users')->orderBy('id','DESC')->where('status','1')->paginate(50);   
        return view('company.users.sektorler',compact('datas'));
    }

    public function firmalar($sektor_id)
    {
        $sektor = Sektorler::whereId($sektor_id)->where('status','1')->first() ?? abort(404,'Sektör Bulunamadı');
        $datas = $sektor->users()->where('status','1');
        if(request()->get('s')){
           $datas = $datas->where('companyname','LIKE','%'.request()->get('s').'%');
        }
        if(Auth::user()->status == 1){
            $datas = $datas->where('status','1');
        }else{
            $datas = $datas->where('status','50');
        }
        $datas = $datas->paginate(20);
       return view('company.users.firmalar',compact('sektor','datas'));
    }
    public function firmadetay($id)
    {
        $data = User::whereId($id)->where('status','1')->where('type','user')->first() ?? abort(404,"Firma Bulunamadı");
        return view('company.users.firmadetay',compact('data'));
    }
}
