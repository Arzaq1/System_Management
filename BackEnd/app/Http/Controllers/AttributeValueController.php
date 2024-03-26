<?php

namespace App\Http\Controllers;

use App\Models\AttributeValue;
use Illuminate\Http\Request;

class AttributeValueController extends Controller
{
    public function index()
    {
    }
    public function store(Request $request)
    {
        $validated = $request->validate([
            'attribute_id' => 'required|exists:product_attributes,id',
            'value' => 'required|string|max:255',
        ]);

        $attributeValue = AttributeValue::create($validated);

        return response();
    }
    public function create()
    {
    }
    public function show($id)
    {
        $attributeValue = AttributeValue::findOrFail($id);
        return response();
    }
    public function edit(AttributeValue $attributeValue)
    {
    }

    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'attribute_id' => 'exists:product_attributes,id',
            'value' => 'string|max:255',
        ]);

        $attributeValue = AttributeValue::findOrFail($id);
        $attributeValue->update($validated);

        return response();
    }

    public function destroy(AttributeValue $attributeValue)
    {
        $attributeValue->delete();
        return response();
    }
}
