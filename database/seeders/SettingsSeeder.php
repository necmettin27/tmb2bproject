<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class SettingsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\Settings::insert([
            'start' => '2021-11-11',
            'end' => '2021-11-11',
            'status' => 1,
            'barkod' => '8000001',
            'logo' => 'tmlogo.png',
        ]);
    }
}
