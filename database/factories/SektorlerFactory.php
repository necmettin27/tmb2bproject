<?php

namespace Database\Factories;

use App\Models\Sektorler;
use Illuminate\Database\Eloquent\Factories\Factory;

class SektorlerFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Sektorler::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title_tr' => $this->faker->sentence(rand(3,7)),
            'title_en' => $this->faker->sentence(rand(3,7)),
            'status' => '1',
        ];
    }
}
