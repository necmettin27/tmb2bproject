<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Randevular;

class HomeController extends Controller
{
    public function index()
    {
        if(auth()->user()->type == "admin"){
            return redirect()->route('admin.index');

        }elseif(auth()->user()->type == "company"){
           return redirect('/company/randevular');

        }else{

            return redirect('/randevular');
        }
        
    }

   
}
