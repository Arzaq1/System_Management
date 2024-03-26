<?php

namespace App\Http\Controllers;

use App\Models\SalesOrderItem;
use Illuminate\Http\Request;

class SalesOrderItemController extends Controller
{
    public function index()
    {
    }
    public function store(Request $request)
    {
        $validated = $request->validate([
            'sales_order_id' => 'required|exists:sales_orders,id',
            'product_id' => 'required|exists:products,id',
            'quantity' => 'required|integer|min:1',
            'unit_price' => 'required|numeric|min:0',
            'total_price' => 'required|integer|min:0',
        ]);

        $salesOrderItem = SalesOrderItem::create($validated);

        return response();
    }

    public function create()
    {
    }
    public function edit(SalesOrderItem $salesOrderItem)
    {
    }
    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'sales_order_id' => 'exists:sales_orders,id',
            'product_id' => 'exists:products,id',
            'quantity' => 'integer|min:1',
            'unit_price' => 'numeric|min:0',
            'total_price' => 'integer|min:0',
        ]);

        $salesOrderItem = SalesOrderItem::findOrFail($id);

        $salesOrderItem->update($validated);

        return response();
    }

    public function destroy(SalesOrderItem $salesOrderItem)
    {
        $salesOrderItem->delete();
        return response();
    }
}
