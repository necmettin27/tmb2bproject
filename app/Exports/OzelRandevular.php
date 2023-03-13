<?php

namespace App\Exports;

use App\Models\Randevular;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView; 

class OzelRandevular implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */
    protected $id;
    public function __construct($id)
    {
        $this->userid = $id;
    }

    public function view(): View
    {
        return view('exports.admin.allrandevular',[
            'randevular' => Randevular::where('gorusme_yapan',$this->userid)->orWhere('gorusme_gelen',$this->userid)->get()
        ]);
    }
}
