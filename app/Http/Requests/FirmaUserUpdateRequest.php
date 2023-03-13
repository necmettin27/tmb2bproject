<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class FirmaUserUpdateRequest extends FormRequest
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
            'name' => ['required', 'string', 'max:255'], 
            'password' => 'same:confirm-password',
            'title_tr' => ['required']
        ];
    }
    public function attributes(){
        return [
            'name' => 'Ad Soyad',
            'email' => 'Email adresi',
            'password' => 'Parola'
        ];
    }
}
