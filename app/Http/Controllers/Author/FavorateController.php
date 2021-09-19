<?php

namespace App\Http\Controllers\Author;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FavorateController extends Controller
{
    public function index()
    {
        $posts = Auth::user()->favorate_posts;
        return view('author.favorate', compact('posts'));
    }
}
