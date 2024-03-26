<?php

namespace App\Http\Controllers;

use App\Models\SalesOrder;
use Illuminate\Http\Request;

class SalesOrderController extends Controller
{
    public function index()
    {
    }
    public function store(Request $request)
    {
        $validated = $request->validate([
            'user_id' => 'required|exists:users,id',
            'customer_id' => 'required|exists:customers,id',
            'total_amount' => 'required|integer',
        ]);

        $salesOrder = SalesOrder::create($validated);
        return response();
    }

    public function create()
    {
    }
    public function show($id)
    {
        // $salesOrder = SalesOrder::findOrFail($id);
        // return response();
    }
    public function edit(SalesOrder $salesOrder)
    {
    }
    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'user_id' => 'exists:users,id',
            'customer_id' => 'exists:customers,id',
            'total_amount' => 'integer',
        ]);

        $salesOrder = SalesOrder::findOrFail($id);
        $salesOrder->update($validated);
        return response();
    }
    public function destroy(SalesOrder $salesOrder)
    {
        $salesOrder->delete();
        return response();
    }
}
