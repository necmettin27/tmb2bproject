<?php

namespace App\Http\Controllers\Admin;
use App\Models\Sektorler;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\SektorlerCreateRequest;
use App\Http\Requests\SektorlerUpdateRequest;

class SektorlerController extends Controller
{
    public function index(Request $request)
    {
        $datas = Sektorler::withCount('firmalar')->orderBy('id','DESC')->paginate(20);   
        return view('admin.Sektorler.index',compact('datas'));
    }

    public function create()
    {
        return view('admin.Sektorler.create');
    }

    public function store(SektorlerCreateRequest $request)
    {
        Sektorler::create($request->post());
        return redirect()->route('sektorler.index')->withSuccess('Veriniz Başarıyla Eklendi.');
    }

    public function edit($id)
    {
        $data = Sektorler::find($id) ?? abort(404,'Sektör bulunamadı.'); 
        return view('admin.Sektorler.edit',compact('data'));
    }

    public function update(SektorlerUpdateRequest $request,$id)
    {
        $data = Sektorler::find($id) ?? abort(404,'Sektör bulunamadı.'); 
        Sektorler::where('id',$id)->update($request->except(['_method','_token']));
        return redirect()->route('sektorler.index')->withSuccess('Verileriniz başarıyla güncellendi');
    }
    public function destroy($id)
    {
        $data = Sektorler::find($id) ?? abort(404,'Sektör bulunamadı.'); 
        $data->delete();
        return redirect()->route('sektorler.index')->withSuccess('Sektör başarıyla silindi');
    }
}
