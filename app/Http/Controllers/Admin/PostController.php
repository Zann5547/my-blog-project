<?php

namespace App\Http\Controllers\Admin;

use App\Category;
use App\Http\Controllers\Controller;
use App\Notifications\AuthorPostApproved;
use App\Notifications\NewPostNotify;
use App\Post;
use App\Subscriber;
use App\Tag;
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
        $posts = Post::latest()->get();
        return view('admin.post.index', compact('posts'));
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
        return view('admin.post.create', compact('categories', 'tags'));
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

        $post = Post::create([
            'user_id' => Auth::id(),
            'title' => $request->title,
            'slug' => Str::slug($request->title),
            'image' => $imageName,
            'status' => (bool) $request->status,
            'is_approved' => true,
            'body' => $request->body,
        ]);

        $post->categories()->attach($request->categories);
        $post->tags()->attach($request->tags);

        $subscribers = Subscriber::all();
        foreach ($subscribers as $subscriber) {
            Notification::route('mail', $subscriber->email)->notify(new NewPostNotify($post));
        }

        Toastr::success('Post Successfully Saved', 'Success');
        return redirect()->route('admin.post.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        return view('admin.post.show', compact('post'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        $categories = Category::all();
        $tags = Tag::all();
        return view('admin.post.edit', compact('post', 'categories', 'tags'));
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
            'is_approved' => true
        ]);

        $post->categories()->sync($request->categories);
        $post->tags()->sync($request->tags);

        Toastr::success('Post Successfully Updated', 'Success');
        return redirect()->route('admin.post.index');
    }

    public function pending()
    {
        $posts = Post::where('is_approved', false)->get();
        return view('admin.post.pending', compact('posts'));
    }

    public function approval($id)
    {
        $post = Post::find($id);
        if ($post->is_approved == false) {
            $post->is_approved = true;
            $post->save();

            $post->user->notify(new AuthorPostApproved($post));
            $subscribers = Subscriber::all();
            foreach ($subscribers as $subscriber) {
                Notification::route('mail', $subscriber->email)->notify(new NewPostNotify($post));
            }

            Toastr::success('Post Successfully Approved', 'Success');
        } else {
            Toastr::success('This Post Is Already Approved', 'Info');
        }
        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
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
