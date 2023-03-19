<?php

namespace App\Http\Controllers\Company;

use App\Http\Controllers\Controller;
use App\Models\Randevular;
use App\Models\Sektorler;
use App\Models\Settings;
use App\Models\Ulkeler;
use App\Models\User;
use App\Models\Saatler;
use Illuminate\Http\Request;

class RandevuController extends Controller
{
    public function index()
    {
        $settings = Settings::first();
        if(app()->getLocale()=="tr"){
            $title = 'title_tr';
        }else{
            $title = 'title_en';
        }
        $sektorler = Sektorler::where('status',"1")->orderBy($title,'ASC')->get();
        $ulkeler = Ulkeler::orderBy('name','ASC')->get();
        $randevular = Randevular::where('gorusme_yapan',auth()->user()->id)->orWhere('gorusme_gelen',auth()->user()->id)->get();   
        return view('company.randevular.index',compact('randevular','ulkeler','sektorler','settings'));
    }

    public function store(Request $request)
    {
       $randd =  Randevular::where([['gorusme_gelen','=',$request->company_user],['gorusme_tarih','=',$request->date],['gorusme_saat','=',$request->time]])->orWhere([['gorusme_yapan','=',$request->company_user],['gorusme_tarih','=',$request->date],['gorusme_saat','=',$request->time]])->get();
        if(count($randd)>0){
            return redirect()->back()->withError('Randevu başka biri tarafından alındı.Lütfen başka saatlere bakınız.');
        }else{
            $firma = User::find($request->company);
            $data = new Randevular;

            //Görüşme Yapan Talep Eden
            $data->gorusme_yapan = $request->company_user;
            $data->gorusmeyapan_sector = $firma->sector;
            $data->gorusmeyapan_country = $firma->country;

            $data->randevutalepeden = auth()->user()->id;

            //Görüşme talep edilen
            $data->gorusme_gelen = auth()->user()->id;
            $data->gorusmegelen_sector = auth()->user()->sector;
            $data->gorusmegelen_country = auth()->user()->country;
            

            $data->gorusme_tarih = $request->date;
            $data->gorusme_saat = $request->time;

            if($firma->randevuonay == 1){
                $data->status = "1";
            }else{
                $data->status = "2";
            }
            
            $data->save();
        return redirect()->back()->withSuccess('Başarıyla eklendi');
        }
        
    }

    public function destroy($id)
    {
        $data = Randevular::whereId($id)->where('gorusme_yapan',auth()->user()->id)->orWhere('gorusme_gelen',auth()->user()->id)->first() ?? abort(404,'Randevu bulunamadı');
        $data->delete();
        return redirect()->back()->withSuccess('Randevu başarıyla silindi.');
    }

    public function edit($id)
    {
        $data = Randevular::whereId($id)->where('gorusme_gelen',auth()->user()->id)->orWhere('gorusme_yapan',auth()->user()->id)->where('status','2')->first() ?? abort(404,"Size ait randevu bulunamadı.");
       return view('company.randevular.edit',compact('data'));
    }
    public function update(Request $request,$id)
    {
        //->where('gorusme_gelen',auth()->user()->id)->orWhere('gorusme_yapan',auth()->user()->id)
        $data =  Randevular::whereId($id)->first() ?? abort(404,"Size ait randevu bulunamadı.");
        $data->update($request->post());
        return redirect()->route('company.randevular')->withSuccess(\Lang::get('translate.basarili'));
    }

    public function firmalar(Request $request)
    {
        $datas = User::where('type','user')->where('status','1');
        $datas = $datas->where('sector',$request->sektor);
        if($request->ulke != "all"){
            $datas = $datas->where('country',$request->ulke);
        }
        
        $datas = $datas->get();
        $count = count($datas);
        return response()->json(['count'=>$count,'datas'=>$datas]);
    }
    public function firmayetkili(Request $request)
    {
        $datas = User::where('id',$request->id)->where('status',"1")->get();
        $count = count($datas);
        return response()->json(['count'=>$count,'datas'=>$datas]);
    }

    public function saat(Request $request)
    {
        $kullaniciid = auth()->user()->id;
        $yetkiliid = $request->userid;
        $tarih = $request->date; 
        $saatler = Saatler::get();
        $saats = '<option value="">Seçiniz</option>';
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
}
