<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();
        /*
        User::factory()->create([
            'name' => 'Test User',
            'email' => 'test@example.com',
        ]);
*/
        \App\Models\User::factory(10)->create();
        \App\Models\Product::factory(20)->create();
        \App\Models\Customer::factory(10)->create();
        \App\Models\Category::factory(5)->create();
        \App\Models\SalesOrder::factory(15)->create();
        \App\Models\SalesOrderItem::factory(50)->create();
        \App\Models\Role::factory(3)->create();
        \App\Models\RoleUser::factory(20)->create();
        \App\Models\ProductAttribute::factory(5)->create();
        \App\Models\AttributeValue::factory(20)->create();
        \App\Models\ProductAttributeValuePivot::factory(50)->create();
    }
}
