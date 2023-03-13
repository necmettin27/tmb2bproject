<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\Exportable;
use App\Models\Randevular;

class CompanyRandevuExport implements FromView
{
    use Exportable;
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): View
    {
        return view('exports.companyrandevular',[
            'randevular' => Randevular::where('gorusme_yapan',auth()->user()->id)->orWhere('gorusme_gelen',auth()->user()->id)->get()
        ]);
    }
}
