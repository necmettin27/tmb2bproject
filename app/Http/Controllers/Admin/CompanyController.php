<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Randevular;

class CompanyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $s = $request->get('s');
        $datas = User::where('type','company');
        if($s){
            $datas = $datas->where(function($query) use ($s){
                $query->orwhere('name','LIKE',"%$s%");
                $query->orwhere('companyname','LIKE',"%$s%");
                $query->orwhere('email','LIKE',"%$s%");
            });
        }
        $datas = $datas->orderBy('companyname','ASC')->paginate(50);
        return view('admin.Companys.index',compact('datas'));
    }
    public function edit($id)
    {
        $data = User::find($id) ?? abort(404,'Kullanıcı Bulunamadı');
        return view('admin.Companys.edit',compact('data'));
    }

    public function update(Request $request, $id)
    {
        User::find($id)->update($request->post());
        return redirect()->route('companys.index')->withSuccess(\Lang::get('translate.guncellendi'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = User::find($id) ?? abort(404,'Kullanıcı Bulunamadı');
        $data->delete();
        Randevular::where('gorusme_yapan','=',$id)->orWhere('gorusme_gelen','=',$id)->delete();
        return redirect()->route('companys.index')->withSuccess(\Lang::get('translate.silindi'));
    }

   
}
