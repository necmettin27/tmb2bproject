<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Maatwebsite\Excel\Excel;
use App\Exports\UserRandevuExport;
use App\Exports\CompanyRandevuExport;


class ExportRandevularController extends Controller
{
    private $excel;

    public function __construct(Excel $excel)
    {
        $this->excel = $excel;
    }
    
    public function export()
    { 
        return $this->excel->download(new UserRandevuExport,'randevular.xlsx');
    }

    public function exportcompany()
    {
        return $this->excel->download(new CompanyRandevuExport,'companyrandevular.xlsx');
    }

   

}
