<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\CompanyProfil;
use App\Http\Requests\CompanyprofilCreateRequest; 

class CompanyProfilController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datas = CompanyProfil::all();
        return view('admin.CompanyProfil.index',compact('datas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.CompanyProfil.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CompanyprofilCreateRequest $request)
    {
        CompanyProfil::create($request->post());
        return redirect()->route('companyprofil.index')->withSuccess(\Lang::get('translate.basarili'));
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
    public function edit($id)
    {
        $data = CompanyProfil::find($id) ?? abort(404,"Profil Bulunamadı");
        return view('admin.CompanyProfil.edit',compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = CompanyProfil::find($id) ?? abort(404,"Bulunamadı");
        $data->update($request->post());
        return redirect()->route('companyprofil.index')->withSuccess(\Lang::get('translate.basarili'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = CompanyProfil::find($id) ?? abort(404,"Bulunamadı");
        $data->delete();
        return redirect()->route('companyprofil.index')->withSuccess(\Lang::get('translate.basarili'));
    }
}
