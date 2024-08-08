<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;

class UserController extends Controller
{
    public function index(Request $request)
    {
        // Retrieve the currently authenticated user
        $currentUser = Auth::user();
        
        // Retrieve all users with the same ID as the currently logged-in user
        $users = User::where('id', $currentUser->id)->get();
        
        return response()->json([
            "data" => $users,
        ]);
    }
}
