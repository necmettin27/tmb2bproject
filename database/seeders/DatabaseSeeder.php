<?php

namespace Database\Seeders;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            SektorlerSeeder::class,
            UserSeeder::class,
            SettingsSeeder::class,
            UlkelerSeeder::class,
            SaatSeeder::class
        ]);
    }
}
