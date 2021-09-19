<?php

namespace App\Http\Controllers\Author;

use App\Http\Controllers\Controller;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Intervention\Image\Facades\Image;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\Hash;

class SettingsController extends Controller
{
    public function index()
    {
        return view('author.settings');
    }

    public function updateProfile(Request $request)
    {
        request()->validate([
            'name' => 'required',
            'email' => 'required|email',
            'image' => 'required|image',
        ]);

        $user = User::findOrFail(Auth::id());

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $currentDate = Carbon::now()->toDateString();
            $imageName =  Str::slug($request->name) . '-' . $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

            if (!Storage::disk('public')->exists('profile')) {
                Storage::disk('public')->makeDirectory('profile');
            }

            if (Storage::disk('public')->exists('profile/' . $user->image)) {
                Storage::disk('public')->delete('profile/' . $user->image);
            }

            Image::make($image)->resize(500, 500)->save(public_path('storage/profile/' . $imageName));
        } else {
            $imageName = $user->image;
        }

        $user->name = $request->name;
        $user->email = $request->email;
        $user->image = $imageName;
        $user->about = $request->about;
        $user->save();

        Toastr::success('Profile Successfully Updated', 'Success');
        return redirect()->back();
    }

    public function updatePassword(Request $request)
    {
        request()->validate([
            'old_password' => 'required',
            'password' => 'required|confirmed',
        ]);

        $hashedPassword = Auth::user()->password;

        if (Hash::check($request->old_password, $hashedPassword)) {

            if (!Hash::check($request->password, $hashedPassword)) {
                $user = User::find(Auth::id());
                $user->password = Hash::make($request->password);
                $user->save();

                Toastr::success('Password Successfully Changed', 'Success');
                Auth::logout();
                return redirect()->back();
            } else {
                Toastr::error('New Password can not be sam as Old Password', 'Error');
                return redirect()->back();
            }
        } else {
            Toastr::error('Current Password does not match', 'Error');
            return redirect()->back();
        }
    }
}
