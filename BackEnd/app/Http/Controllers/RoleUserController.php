<?php

namespace App\Http\Controllers;

use App\Models\RoleUser;
use Illuminate\Http\Request;

class RoleUserController extends Controller
{
    public function index()
    {
    }
    public function store(Request $request)
    {
        $validated = $request->validate([
            'user_id' => 'required|exists:users,id',
            'role_id' => 'required|exists:roles,id',
        ]);

        $roleUser = RoleUser::create($validated);

        return response();
    }
    public function create()
    {
    }
    public function edit(RoleUser $roleUser)
    {
    }
    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'user_id' => 'exists:users,id',
            'role_id' => 'exists:roles,id',
        ]);

        $roleUser = RoleUser::findOrFail($id);

        $roleUser->update($validated);

        return response();
    }

    public function destroy(RoleUser $roleUser)
    {
        $roleUser->delete();

        return response();
    }
}
