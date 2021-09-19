<?php

namespace App\Http\Controllers\Author;

use App\Category;
use App\Http\Controllers\Controller;
use App\Notifications\NewAuthorPost;
use App\Post;
use App\Tag;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Intervention\Image\Facades\Image;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\Notification;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Auth::user()->posts()->latest()->get();
        return view('author.post.index', compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();
        $tags = Tag::all();
        return view('author.post.create', compact('categories', 'tags'));
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
            'title' => 'required',
            'image' => 'required',
            'categories' => 'required',
            'tags' => 'required',
            'body' => 'required',
        ]);

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $currentDate = Carbon::now()->toDateString();
            $imageName = Str::slug($request->title) . '-' . $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

            if (!Storage::disk('public')->exists('post')) {
                Storage::disk('public')->makeDirectory('post');
            }
            Image::make($image)->resize(1600, 1066)->save(public_path('storage/post/' . $imageName));
        } else {
            $imageName = 'default.png';
        }
        // $post->save();
        $post = Post::create([
            'user_id' => Auth::id(),
            'title' => $request->title,
            'slug' => Str::slug($request->title),
            'image' => $imageName,
            'status' => (bool) $request->status,
            'is_approved' => false,
            'body' => $request->body,
        ]);

        $post->categories()->attach($request->categories);
        $post->tags()->attach($request->tags);

        $users = User::where('role_id', 1)->get();
        Notification::send($users, new NewAuthorPost($post));

        Toastr::success('Post Successfully Saved', 'Success');
        return redirect()->route('author.post.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        if ($post->user_id != Auth::id()) {
            Toastr::error('You are not authorized to access this post', 'Error');
            return redirect()->back();
        }
        return view('author.post.show', compact('post'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        if ($post->user_id != Auth::id()) {
            Toastr::error('You are not authorized to access this post', 'Error');
            return redirect()->back();
        }

        $categories = Category::all();
        $tags = Tag::all();
        return view('author.post.edit', compact('post', 'categories', 'tags'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        if ($post->user_id != Auth::id()) {
            Toastr::error('You are not authorized to access this post', 'Error');
            return redirect()->back();
        }

        request()->validate([
            'title' => 'required',
            'image' => 'image',
            'categories' => 'required',
            'tags' => 'required',
            'body' => 'required',
        ]);

        if ($request->hasFile('image')) {

            if (Storage::disk('public')->exists('post/' . $post->image)) {
                Storage::disk('public')->delete('post/' . $post->image);
            }

            $image = $request->file('image');
            $currentDate = Carbon::now()->toDateString();
            $imageName = Str::slug($request->title) . '-' . $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

            if (!Storage::disk('public')->exists('post')) {
                Storage::disk('public')->makeDirectory('post');
            }
            Image::make($image)->resize(1600, 1066)->save(public_path('storage/post/' . $imageName));
        } else {
            $imageName = $post->image;
        }

        $post->update([
            'user_id' => Auth::id(),
            'slug' => Str::slug($request->title),
            'image' => $imageName,
            'status' => (bool) $request->status,
            'body' => $request->body,
            'is_approved' => false
        ]);

        $post->categories()->sync($request->categories);
        $post->tags()->sync($request->tags);

        Toastr::success('Post Successfully Updated', 'Success');
        return redirect()->route('author.post.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        if ($post->user_id != Auth::id()) {
            Toastr::error('You are not authorized to access this post', 'Error');
            return redirect()->back();
        }

        if (Storage::disk('public')->exists('post/' . $post->image)) {
            Storage::disk('public')->delete('post/' . $post->image);
        }

        $post->categories()->detach();
        $post->tags()->detach();

        $post->delete();

        Toastr::success('Post Successfully Deleted', 'Success');
        return redirect()->back();
    }
}
