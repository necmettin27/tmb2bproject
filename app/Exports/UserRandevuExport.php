<?php

namespace App\Exports;

use App\Models\Randevular;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\Exportable;

class UserRandevuExport implements FromView
{
    use Exportable;
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): View
    {
        return view('exports.userrandevular',[
            'randevular' => Randevular::where('gorusme_yapan',auth()->user()->id)->orWhere('gorusme_gelen',auth()->user()->id)->get()
        ]);
    }
}
