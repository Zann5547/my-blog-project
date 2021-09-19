<?php

namespace App\Http\Controllers;

use App\Subscriber;
use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;


class SubscriberController extends Controller
{
    public function store(Request $request)
    {
        request()->validate([
            'email' => 'required|email|unique:subscribers'
        ]);

        Subscriber::create($request->all());

        Toastr::success('You successfully added to our subscriber list', 'Success');
        return redirect()->back();
    }
}
