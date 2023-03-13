<?php

namespace App\Actions\Fortify;

use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Laravel\Fortify\Contracts\CreatesNewUsers;
use Laravel\Jetstream\Jetstream;

class CreateNewUser implements CreatesNewUsers
{
    use PasswordValidationRules;

    /**
     * Validate and create a newly registered user.
     *
     * @param  array  $input
     * @return \App\Models\User
     */
    public function create(array $input)
    {
        Validator::make($input, [
            'companyname' => ['required', 'string', 'max:255'],
            'name' => ['required', 'string', 'max:255'],
            'country' => ['required'],
            'phone' => ['required', 'string'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => $this->passwordRules(),
            'terms' => Jetstream::hasTermsAndPrivacyPolicyFeature() ? ['required', 'accepted'] : '',
        ])->validate();
        

        return User::create([
            'companyname' => $input['companyname'],
            'name' => $input['name'],
            'email' => $input['email'],
            'phone' => $input['phone'],
            'country' => $input['country'],
            'website' => $input['website'],
            'sector' => $input['sector'],
            'productandservices' => $input['productandservices'],
            'companydesciption' => $input['companydesciption'],
            'status' => '0',
            'type' => $input['type'],
            'randevuonay' => $input['randevuonay'],
            'password' => Hash::make($input['password']),
        ]);
    }
}
