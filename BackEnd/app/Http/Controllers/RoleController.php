<?php

namespace App\Http\Controllers;

use App\Models\Role;
use Illuminate\Http\Request;

class RoleController extends Controller
{
    public function index()
    {
    }
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
        ]);

        Role::create($validated);
        return response();
    }

    public function create()
    {
    }

    public function show(Role $role)
    {
    }

    public function edit(Role $role)
    {
    }

    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'name' => 'string|max:255',
        ]);

        $role = Role::findOrFail($id);

        $role->update($validated);

        return response();
    }

    public function destroy(Role $role)
    {
        $role->delete();
        return redirect();
    }
}
