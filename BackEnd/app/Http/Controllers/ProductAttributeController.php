<?php

namespace App\Http\Controllers;

use App\Models\ProductAttribute;
use Illuminate\Http\Request;

class ProductAttributeController extends Controller
{
    public function index()
    {
    }
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
        ]);

        ProductAttribute::create($validated);
        return response();
    }

    public function create()
    {
    }

    public function show(ProductAttribute $productattribute)
    {
    }

    public function edit(ProductAttribute $productattribute)
    {
    }

    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'name' => 'string|max:255',
        ]);

        $productattribute = ProductAttribute::findOrFail($id);

        $productattribute->update($validated);

        return response();
    }

    public function destroy(ProductAttribute $productattribute)
    {
        $productattribute->delete();

        return redirect();
    }
}
