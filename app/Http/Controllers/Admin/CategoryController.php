<?php

namespace App\Http\Controllers\Admin;

use App\Category;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Intervention\Image\Facades\Image;
use Brian2694\Toastr\Facades\Toastr;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories = Category::latest()->get();
        return view('admin.category.index', compact('categories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.category.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate([
            'name' => 'required|unique:categories',
            'image' => 'required|mimes:png,jpg,jpeg,bmp'
        ]);

        $request['slug'] = Str::slug($request->name);
        $category = Category::create($request->all());

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $currentDate = Carbon::now()->toDateString();
            $imageName =  Str::slug($request->name) . '-' . $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

            if (!Storage::disk('public')->exists('category')) {
                Storage::disk('public')->makeDirectory('category');
            }
            Image::make($image)->resize(1600, 479)->save(public_path('storage/category/' . $imageName));

            if (!Storage::disk('public')->exists('category/slider')) {
                Storage::disk('public')->makeDirectory('category/slider');
            }
            Image::make($image)->resize(500, 333)->save(public_path('storage/category/slider/' . $imageName));
        } else {
            $imageName = 'default.png';
        }

        $category->image = $imageName;
        $category->save();

        Toastr::success('Category Successfully Saved', 'Success');
        return redirect()->route('admin.category.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {
        return view('admin.category.edit', compact('category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Category $category)
    {
        request()->validate([
            'name' => 'required',
            'image' => 'mimes:png,jpg,jpeg,bmp'
        ]);

        $slug = Str::slug($request->name);

        if ($request->hasFile('image')) {
            if (Storage::disk('public')->exists('category/' . $category->image)) {
                Storage::disk('public')->delete('category/' . $category->image);
            }
            if (Storage::disk('public')->exists('category/slider/' . $category->image)) {
                Storage::disk('public')->delete('category/slider/' . $category->image);
            }

            $image = $request->file('image');
            $currentDate = Carbon::now()->toDateString();
            $imageName =  Str::slug($request->name) . '-' . $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

            if (!Storage::disk('public')->exists('category')) {
                Storage::disk('public')->makeDirectory('category');
            }
            Image::make($image)->resize(1600, 479)->save(public_path('storage/category/' . $imageName));

            if (!Storage::disk('public')->exists('category/slider')) {
                Storage::disk('public')->makeDirectory('category/slider');
            }
            Image::make($image)->resize(500, 333)->save(public_path('storage/category/slider/' . $imageName));
        } else {
            $imageName = $category->image;
        }
        // $request['image'] = $imageName;
        // dd($request);
        $category->update([
            'name' => $request['name'],
            'slug' => $slug,
            'image' => $imageName,
        ]);

        Toastr::success('Category Successfully Updated', 'Success');
        return redirect()->route('admin.category.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {
        if (Storage::disk('public')->exists('category/' . $category->image)) {
            Storage::disk('public')->delete('category/' . $category->image);
        }

        if (Storage::disk('public')->exists('category/slider/' . $category->image)) {
            Storage::disk('public')->delete('category/slider/' . $category->image);
        }

        $category->delete();

        Toastr::success('Category Successfully Deleted', 'Success');
        return redirect()->back();
    }
}
