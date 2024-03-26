<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index()
    {
    }
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'nullable|string|max:1000',
        ]);

        Category::create($validated);
        return response();
    }

    public function create()
    {
    }

    public function show(Category $category)
    {
    }

    public function edit(Category $category)
    {
    }

    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'name' => 'string|max:255',
            'description' => 'nullable|string|max:1000',
        ]);

        $category = Category::findOrFail($id);

        $category->update($validated);

        return response();
    }

    public function destroy(Category $category)
    {
        if (!$category->products()->exists()) {
            $category->delete();
        }
        return redirect();
    }
}
