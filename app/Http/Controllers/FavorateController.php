<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Brian2694\Toastr\Facades\Toastr;

class FavorateController extends Controller
{
    public function add($post)
    {
        $user = Auth::user();
        $isFavorate = $user->favorate_posts()->where('post_id', $post)->count();

        if ($isFavorate == 0) {
            $user->favorate_posts()->attach($post);

            Toastr::success('Post Successfully added to your favorate list', 'Success');
            return redirect()->back();
        } else {
            $user->favorate_posts()->detach($post);
            Toastr::success('Post Successfully removed from your favorate list', 'Success');
            return redirect()->back();
        }
    }
}
