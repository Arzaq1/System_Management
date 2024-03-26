<?php

namespace Database\Factories;

use App\Models\Customer;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\SalesOrder>
 */
class SalesOrderFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'user_id' => $this->faker->numberBetween(1, 10),
            //'customer_id' => Customer::inRandomOrder()->first(),
            'customer_id' => Customer::inRandomOrder()->first()->id,
            'total_amount' => $this->faker->randomFloat(2, 10, 1000),
        ];
    }
}
