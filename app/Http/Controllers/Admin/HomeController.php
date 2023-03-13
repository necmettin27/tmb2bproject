<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\User;

class HomeController extends Controller
{
    public function index()
    {
        $users = User::where('status','0')->where('type','user')->get();
        $companys = User::where('status','0')->where('type','company')->get();
        return view('admin.home',compact('users','companys'));
    }

    
}
