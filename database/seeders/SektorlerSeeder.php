<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class SektorlerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\Sektorler::factory(5)->create(); 
    }
}
