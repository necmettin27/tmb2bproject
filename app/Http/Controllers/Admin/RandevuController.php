<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Randevular;
use App\Models\User;
use App\Models\Settings;
use App\Models\Saatler;

class RandevuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
         /*$randevular = \DB::table('randevulars')
         ->leftJoin('users as a', 'a.id', '=', 'randevulars.gorusme_yapan')
         ->leftJoin('users as b', 'b.id', '=', 'randevulars.gorusme_gelen')
         ->leftJoin('saatlers', 'saatlers.id', '=', 'randevulars.gorusme_saat')
         ->select('randevulars.id','a.companyname as  gorusme_yapan','b.companyname as gorusme_gelen','randevulars.gorusme_tarih','saatlers.saat','randevulars.status')
        ->get();*/
       // return $randevular;
        $randevular = Randevular::get();
        return view('admin.Randevular.index',compact('randevular'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $users = User::where('type','user')->orderBy('companyname','ASC')->get();
        $companys = User::where('type','company')->orderBy('companyname','ASC')->get();
         $settings = Settings::first();
        return view('admin.Randevular.create',compact('users','companys','settings'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         
        $gorusme_yapan = $request->gorusme_yapan; //User
        $gorusme_gelen = $request->gorusme_gelen; //Company
        $gorusme_tarih = $request->gorusme_tarih;
        $time = $request->time;

        $randd =  Randevular::where([['gorusme_gelen','=',$gorusme_gelen],['gorusme_tarih','=',$gorusme_tarih],['gorusme_saat','=',$time]])
        ->orWhere([['gorusme_yapan','=',$gorusme_yapan],['gorusme_tarih','=',$gorusme_tarih],['gorusme_saat','=',$time]])
        ->get();
        if(count($randd)>0){
            return redirect()->back()->withError('Randevu başka biri tarafından alındı.Lütfen başka saatlere bakınız.');
        }else{

            $user = User::find($gorusme_yapan);
            $company = User::find($gorusme_gelen);

            $data = new Randevular;

            //Görüşme Yapan Talep Eden
            $data->gorusme_yapan = $gorusme_yapan;
            $data->gorusmeyapan_sector = $user->sector;
            $data->gorusmeyapan_country = $user->country;
            $data->randevutalepeden = $user->id;

            //Görüşme talep edilen
            $data->gorusme_gelen = $gorusme_gelen;
            $data->gorusmegelen_sector = $company->sector;
            $data->gorusmegelen_country = $company->country;

            $data->gorusme_tarih = $gorusme_tarih;
            $data->gorusme_saat = $time;

            $data->status = "1";
            
            $data->save();
        return redirect()->back()->withSuccess('Başarıyla eklendi');
        }
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
        $data = Randevular::find($id) ?? abort(404,"Randevu Bulunamadı");
        return view('admin.Randevular.edit',compact('data'));
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
        Randevular::find($id)->update($request->post());
        return redirect()->route('randevuyonetimi.index')->withSuccess("Randevu durumu başarıyla güncellendi");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = Randevular::whereId($id)->first() ?? abort(404,"Randevu bulunamadı");
        $data->delete();
        return redirect()->route('randevuyonetimi.index')->withSuccess("Randevu başarıyla silindi");
    }

    public function sorgula(Request $request)
    {   
        $kullaniciid = $request->gorusme_yapan;;
        $yetkiliid = $request->gorusme_gelen;
        $tarih = $request->date; 

        $saatler = Saatler::get();
        $saats = '<option value="">'.\Lang::get("translate.choose").'</option>';
        foreach($saatler as $saat){
            $saatid = $saat->id;
            $data = Randevular::where(function($d) use ($saatid,$yetkiliid,$kullaniciid,$tarih){
                $d->where([['gorusme_saat',"=",$saatid],["gorusme_tarih","=",$tarih]])
                ->where(function($e) use ($kullaniciid){
                    $e->where("gorusme_yapan","=",$kullaniciid)
                    ->orWhere("gorusme_gelen","=",$kullaniciid);
                });
                
            })
            ->orWhere(function($f) use ($yetkiliid,$tarih,$saatid){
                $f->where([['gorusme_saat',"=",$saatid],["gorusme_tarih","=",$tarih]])
                ->where(function($s) use ($yetkiliid){
                    $s->where("gorusme_yapan","=",$yetkiliid)
                    ->orWhere("gorusme_gelen","=",$yetkiliid);
                });
            })
            ->where(function($query){
                $query->where("status","=","1")
                ->orWhere("status","=","2");
            })->first();
           if($data !="" || $data !=null){
               
           }else{
               $inactivesaat = ['1','2','3'];
                 if($tarih == "21/03/2023" AND in_array($saatid, $inactivesaat)){
                  
                }else{
                     $saats.='<option value="'.$saat->id.'">'.$saat->saat.'</option>';
                }
               
           }
        }
        return response()->json(['saat'=>$saats]);

    }

    public function ozelliste($id)
    {
        $user = User::find($id) ?? abort(404,"Firma bulunamadı");
        $randevular = Randevular::where('gorusme_yapan',$id)->orWhere('gorusme_gelen',$id)->get();
        return view('admin.Randevular.ozelliste',compact('user','randevular'));
        
    }
}
