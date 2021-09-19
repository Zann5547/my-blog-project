<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FavorateController extends Controller
{
    public function index()
    {
        $posts = Auth::user()->favorate_posts;
        return view('admin.favorate', compact('posts'));
    }
}
