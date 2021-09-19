<?php

namespace App\Http\Controllers;

use App\Comment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Brian2694\Toastr\Facades\Toastr;

class CommentController extends Controller
{
    public function store(Request $request, $post)
    {
        request()->validate([
            'comment' => 'required',
        ]);

        Comment::create([
            'post_id' => $post,
            'user_id' => Auth::id(),
            'comment' => $request->comment,
        ]);

        Toastr::success('Comment Successfully Published', 'Success');
        return redirect()->back();
    }
}
