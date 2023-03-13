<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SettingsUpdateRequest extends FormRequest
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
            'start'=>'required',
            'end'=>'required', 
            'status'=>'required',
            'logo' => 'image|nullable|file|max:2048|mimes:jpg,JPG,png,svg,SVG,jpeg,JPEG' 
        ];
    }
    public function attributes()
    {
        return [
            'start' => 'Randevu Başlangıç',
            'end' => 'Randevu Bitiş',
            'status' => 'Randevu Durumu',
            'logo' => 'Logo'
        ];
    }
}
