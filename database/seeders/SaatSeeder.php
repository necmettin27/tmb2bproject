<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class SaatSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\Saatler::insert([
            [
                'saat' => '10:00 - 10:15'
            ],
            [
                'saat' => '10:15 - 10:30'
            ],
            [
                'saat' => '10:30 - 10:45'
            ],
            [
                'saat' => '10:45 - 11:00'
            ],
            [
                'saat' => '11:00 - 11:15'
            ],
            [
                'saat' => '11:15 - 11:30'
            ],
            [
                'saat' => '11:30 - 11:45'
            ],
            [
                'saat' => '11:45 - 12:00'
            ],
            [
                'saat' => '12:00 - 12:15'
            ],
            [
                'saat' => '12:15 - 12:30'
            ],
            [
                'saat' => '13:30 - 13:45'
            ],
            [
                'saat' => '13:45 - 14:00'
            ],
            [
                'saat' => '14:00 - 14:15'
            ],
            [
                'saat' => '14:15 - 14:30'
            ],
            [
                'saat' => '14:30 - 14:45'
            ],
            [
                'saat' => '14:45 - 15:00'
            ],
            [
                'saat' => '15:00 - 15:15'
            ],
            [
                'saat' => '15:15 - 15:30'
            ],
            [
                'saat' => '15:30 - 15:45'
            ],
            [
                'saat' => '15:45 - 16:00'
            ],
            [
                'saat' => '16:00 - 16:15'
            ],
            [
                'saat' => '16:15 - 16:30'
            ],
            [
                'saat' => '16:30 - 16:45'
            ],
            [
                'saat' => '16:45 - 17:00'
            ],
            [
                'saat' => '17:00 - 17:15'
            ],
            [
                'saat' => '17:15 - 17:30'
            ],
            [
                'saat' => '17:30 - 17:45'
            ],
            [
                'saat' => '17:45 - 18:00'
            ],
        ]);
    }
}
