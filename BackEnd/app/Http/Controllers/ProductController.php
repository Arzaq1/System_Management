<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{

    public function index()
    {
    }
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'nullable|string|max:1000',
            'price' => 'required|numeric|min:0',
            'quantity' => 'required|integer|min:0',
            'category_id' => 'required|exists:categories,id'
        ]);

        Product::create($validated);

        return response();
    }

    public function create()
    {
    }
    public function edit(Product $product)
    {
    }
    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'name' => 'string|max:255',
            'description' => 'nullable|string|max:1000',
            'price' => 'numeric|min:0',
            'quantity' => 'integer|min:0',
            'category_id' => 'exists:categories,id'
        ]);

        $product = Product::findOrFail($id);
        $product->update($validated);

        return response();
    }

    public function destroy(Product $product)
    {
        $product->delete();
        return response();
    }
}
