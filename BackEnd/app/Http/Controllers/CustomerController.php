<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;

class CustomerController extends Controller
{
    public function index()
    {
    }
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:customers,email',
            'phone' => 'required|string|max:255',
            'address' => 'required|string|max:255',
        ]);

        Customer::create($validated);

        return response();
    }
    public function create()
    {
    }

    public function edit(Customer $customer)
    {
    }
    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'name' => 'string|max:255',
            'email' => 'email|unique:customers,email,' . $id,
            'phone' => 'string|max:255',
            'address' => 'string|max:255',
        ]);

        $customer = Customer::findOrFail($id);
        $customer->update($validated);

        return response();
    }

    public function destroy(Customer $customer)
    {
        $customer->delete();
        return response();
    }
}
