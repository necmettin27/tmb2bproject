<?php

namespace App\Exports;

use App\Models\Randevular;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView; 

class AllRandevular implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): View
    {
        return view('exports.admin.allrandevular',[
            'randevular' => Randevular::get()
        ]);
    }
}
