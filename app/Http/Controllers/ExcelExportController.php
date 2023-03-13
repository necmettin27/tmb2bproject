<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Maatwebsite\Excel\Excel;
use App\Exports\UserRandevuExport;
use App\Exports\CompanyRandevuExport;
use App\Exports\CompanysExport;
use App\Exports\UsersExport;
use App\Exports\AllRandevular;
use App\Exports\OzelRandevular;
use App\Models\User;

class ExcelExportController extends Controller
{
    private $excel;

    public function __construct(Excel $excel)
    {
        $this->excel = $excel;
    }

    public function usersexport()
    {
      return $this->excel->download(new UsersExport,'users.xlsx');
    }

    public function companysexport()
    {
      return $this->excel->download(new CompanysExport,'companys.xlsx');
    }

    public function randevular()
    {
      return $this->excel->download(new AllRandevular,'randevular.xlsx');
    }

    public function ozelrandevular($id)
    {
      $user = User::find($id);
      return $this->excel->download(new OzelRandevular($id),$user->companyname.'-randevular.xlsx');
    }

}
