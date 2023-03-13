<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Randevular extends Model
{
    use HasFactory;
    protected $table = 'randevulars';
    protected $fillable = ['gorusme_yapan','gorusme_gelen','gorusme_tarih','gorusme_saat','gorusmeyapan_sector','gorusmeyapan_country','gorusmegelen_sector','gorusmegelen_country','status','randevutalepeden'];


    public function TalepEdenUser(){
        return $this->hasOne('App\Models\User','id','gorusme_yapan');
    }
    public function TalepEdenUlke(){
        return $this->hasOne('App\Models\Ulkeler','id','gorusmeyapan_country');
    }
    public function TelepEdenSektor(){
        return $this->hasOne('App\Models\Sektorler','id','gorusmeyapan_sector');
    }

    public function GelenUser(){
        return $this->hasOne('App\Models\User','id','gorusme_gelen');
    }
    public function GelenUlke(){
        return $this->hasOne('App\Models\Ulkeler','id','gorusmegelen_country');
    }
    public function GelenSektor(){
        return $this->hasOne('App\Models\Sektorler','id','gorusmegelen_sector');
    }
    public function getSaat(){
        return $this->hasOne('App\Models\Saatler','id','gorusme_saat');
    }
    
    
}
