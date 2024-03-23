<?php

namespace Database\Factories;

use App\Models\AttributeValue;
use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\ProductAttributeValuePivot>
 */
class ProductAttributeValuePivotFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'product_id' => function () {
                return  Product::factory()->create()->id;
            },
            'attribute_value_id' => function () {
                return AttributeValue::factory()->create()->id;
            },
        ];
    }
}
