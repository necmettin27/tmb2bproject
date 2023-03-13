<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CompanyProfil extends Model
{
    use HasFactory;
    protected $table = 'company_profils';
    protected $fillable = [
        'title_tr',
        'title_en',
    ];
}
