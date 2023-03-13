<?php

use Illuminate\Support\Facades\Route; 

use App\Models\User;

Route::get('lang/{lang}', 'LocalizationController@lang_change')->name('LangChange');


/**********---Admin-----**************/

Route::group(['middleware'=>['auth','isAdmin'],'prefix'=>'admin'],function(){
    Route::get('/','Admin\HomeController@index')->name('admin.index');

    Route::get('sektorler/{id}','Admin\SektorlerController@destroy')->whereNumber('id')->name('sektorler.destroy');
    Route::resource('sektorler', 'Admin\SektorlerController');

    Route::get('sektor/{sektor_id}/firmalar/{id}','Admin\FirmalarController@destroy')->whereNumber('id')->name('firmalar.destroy');
    Route::resource('sektor/{sektor_id}/firmalar', 'Admin\FirmalarController');

    Route::get('companys/user/{id}','Admin\CompanyController@destroy')->whereNumber('id')->name('companys.destroy');
    Route::resource('companys','Admin\CompanyController');

    Route::get('settings/{id}','Admin\SettingsController@destroy')->whereNumber('id')->name('settings.destroy');
    Route::resource('settings','Admin\SettingsController');

    Route::get('users/{id}','Admin\UsersController@destroy')->whereNumber('id')->name('users.destroy');
    Route::resource('users', 'Admin\UsersController');

    Route::get('randevuyonetimi/{id}','Admin\RandevuController@destroy')->whereNumber('id')->name('randevuyonetimi.destroy');
    Route::post('randevuyonetimi/sorgula','Admin\RandevuController@sorgula')->name('randevuyonetimi.sorgula');
    Route::get('randevuyonetimi/{id}/ozelliste','Admin\RandevuController@ozelliste')->name('randevuyonetimi.ozelliste');
    Route::resource('randevuyonetimi','Admin\RandevuController');   

    Route::get('companyprofil/{id}','Admin\CompanyProfilController@destroy')->whereNumber('id')->name('companyprofil.destroy');
    Route::resource('companyprofil','Admin\CompanyProfilController');   

    //ExportDatas
    Route::get('export/users','ExcelExportController@usersexport')->name('export.users');
    Route::get('export/companys','ExcelExportController@companysexport')->name('export.companys');
    Route::get('export/randevular','ExcelExportController@randevular')->name('export.randevular');
    Route::get('export/{id}/randevular/','ExcelExportController@ozelrandevular')->name('export.ozelrandevular');
    

});



/*****************---User---**********************/

Route::middleware(['auth'])->group(function () {
    Route::get('/','HomeController@index')->name('dashboard');

    Route::middleware(['user'])->group(function(){
        Route::post('randevular/firmalar','UserRandevuController@firmalar')->name('randevular.firmalar');
        Route::post('randevular/firmayetkili','UserRandevuController@firmayetkili')->name('randevular.firmayetkili');
        Route::post('randevular/saat','UserRandevuController@saat')->name('randevular.saat');
        Route::get('randevular/{id}','UserRandevuController@destroy')->whereNumber('id')->name('randevular.destroy');
        Route::resource('randevular','UserRandevuController');
        Route::get('export/randevular','ExportRandevularController@export')->name('randevu.export');

        Route::get('edit','UserController@edit')->name('editbilgi');
        Route::put('update','UserController@update')->name('updatebilgi');

        Route::get('sektorler','UserController@sektorler')->name('user.sektorler');
        Route::get('sektorler/{id}/firmalar','UserController@firmalar')->name('user.firmalar');
        Route::get('firmalar/{id}/firma','UserController@firmadetay')->name('user.firmalardetay');
    });
});



/*****************---Company---**********************/
Route::middleware(['guest'])->group(function () {
    Route::get('company-register','Company\AuthController@register');
});


Route::group(['middleware'=>['auth','company'],'prefix'=>'company'],function(){

    Route::get('/','Company\RandevuController@index')->name('company.index');

    Route::post('randevular/firmalar','Company\RandevuController@firmalar')->name('companyrandevular.firmalar');
    Route::post('randevular/firmayetkili','Company\RandevuController@firmayetkili')->name('companyrandevular.firmayetkili');
    Route::post('randevular/saat','Company\RandevuController@saat')->name('companyrandevular.saat');
    Route::post('randevular/store','Company\RandevuController@store')->name('companyrandevular.store');
    Route::get('randevular','Company\RandevuController@index')->name('company.randevular');
    Route::get('randevular/edit/{id}','Company\RandevuController@edit')->name('companyrandevu.edit');
    Route::put('randevular/edit/{id}/update','Company\RandevuController@update')->name('companyrandevu.update');
    Route::get('randevular/{id}','Company\RandevuController@destroy')->whereNumber('id')->name('companyrandevu.destroy');

    Route::get('edit','Company\AuthController@edit')->name('company.edit');
    Route::put('update','Company\AuthController@update')->name('company.update');

    Route::get('export/randevular','ExportRandevularController@exportcompany')->name('company.randevuexport');

    Route::get('sektorler','Company\AuthController@sektorler')->name('user.sektorler');
    Route::get('sektorler/{id}/firmalar','Company\AuthController@firmalar')->name('user.firmalar');
    Route::get('firmalar/{id}/firma','Company\AuthController@firmadetay')->name('user.firmalardetay');

});

Route::get('/updateuser',function(){
    $datas = User::where('type','user')->get();
    foreach ($datas as $key => $data) {
        $email = 'user'.$key.'@null.com'; 
        $phone = '9999999999'; 
        
        User::where('id',$data->id)->update(['email' => $email,'website'=>'https://www.tmonlineregistry.com','phone' => $phone]);
    }
});


Route::get('panel', function(){ 
    return Redirect::to('/', 301); 
});

