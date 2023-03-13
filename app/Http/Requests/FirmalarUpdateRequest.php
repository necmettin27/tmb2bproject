<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class FirmalarUpdateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'companyname' => ['required', 'string', 'max:255'],
            'name' => ['required', 'string', 'max:255'],
            'country' => ['required', 'string', 'max:255'],
            'company_profile' => ['required', 'string', 'max:255'],
        ];
    }
    public function attributes()
    {
        return [
            'companyname' => 'Firma Adı ',
            'name' => 'Yetkili Ad Soyad ',  
            'country' => 'Ülke ',
            'company_profile' => 'Profil ',
        ];
    }
}
