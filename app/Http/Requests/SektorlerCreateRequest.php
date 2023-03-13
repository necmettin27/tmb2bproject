<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SektorlerCreateRequest extends FormRequest
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
            'title_tr' => 'required|min:3|max:255'
        ];
    }

    public function attributes()
    {
        return [
            'title_tr' => 'Başlık Türkçe',
        ];
    }
}
