<?php

namespace App\Http\Controllers;

use App\Models\ProductAttributeValuePivot;
use Illuminate\Http\Request;

class ProductAttributeValuePivotController extends Controller
{
    public function index()
    {
    }
    public function store(Request $request)
    {
        $validated = $request->validate([
            'product_id' => 'required|exists:products,id',
            'attribute_value_id' => 'required|exists:attribute_values,id',
        ]);

        $pivot = ProductAttributeValuePivot::create($validated);
        return response();
    }

    public function create()
    {
    }

    public function edit(ProductAttributeValuePivot $pivot)
    {
    }


    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'product_id' => 'required|exists:products,id',
            'attribute_value_id' => 'required|exists:attribute_values,id',
        ]);

        $pivot = ProductAttributeValuePivot::findOrFail($id);

        $pivot->update($validated);

        return response();
    }

    public function destroy(ProductAttributeValuePivot $pivot)
    {

        $pivot->delete();
        return response();
    }
}
