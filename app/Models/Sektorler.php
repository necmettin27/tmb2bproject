<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sektorler extends Model
{
    use HasFactory;
    protected $table = 'sektorler';
    protected $fillable = ['title_tr','title_en','title_fr','title_ar','title_de','status'];

    public function firmalar(){
       return $this->hasMany('App\Models\User','sector','id')->where('type','company');
    }
    
    public function company(){
       return $this->hasMany('App\Models\User','sector','id')->where('type','company');
    }

    public function users(){
       return $this->hasMany('App\Models\User','sector','id')->where('type','user');
    }

}
