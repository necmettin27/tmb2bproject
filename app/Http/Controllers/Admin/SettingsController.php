<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Settings;
use Illuminate\Http\Request;
use App\Http\Requests\SettingsUpdateRequest;

class SettingsController extends Controller
{
    public function index()
    {
        $data = Settings::first();
        return view('admin.Settings.index',compact('data'));
    }

    public function update(SettingsUpdateRequest $request,$id)
    {
       
        $data = Settings::find($id) ?? abort(404,'Ayar bulunamadı');
        if($request->hasFile('logo')){
            $filename = 'logo.'.$request->logo->extension();
            $fileNameWithUpload = 'uploads/'.$filename;

            $request->logo->move(public_path('uploads'),$filename);
            $request->merge([
                'logo' => $fileNameWithUpload
            ]);
        } 
        $request->offsetUnset('_method');
        $request->offsetUnset('_token');
        Settings::where('id',$id)->update($request->post());
        return redirect()->back()->withSuccess('Başarıyla güncellendi');
    }
    public function destroy($id)
    {
        $data = Settings::find($id);
        \File::delete(public_path($data->logo));
        Settings::where('id',$id)->update(['logo'=>'']);
        return redirect()->route('settings.index')->withSuccess('Logo başarıyla silindi');
    }

}
