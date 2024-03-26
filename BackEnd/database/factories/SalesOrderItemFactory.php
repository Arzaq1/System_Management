<?php

namespace Database\Factories;

use App\Models\Product;
use App\Models\SalesOrder;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\SalesOrderItem>
 */
class SalesOrderItemFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {

        $quantity = $this->faker->numberBetween(1, 10);
        $unitPrice = $this->faker->randomFloat(2, 10, 100);
        return [
            'sales_order_id' => function () {
                return SalesOrder::inRandomOrder()->first()->id;
            },
            'product_id' => function () {
                return Product::inRandomOrder()->first()->id;
            },
            'quantity' => $quantity,
            'unit_price' => $unitPrice,
            'total_price' => ($quantity * $unitPrice)
        ];
    }
}
