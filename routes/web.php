<?php

use App\Models\Category;
use App\Models\Comment;
use App\Models\Country;
use App\Models\Mechanic;
use App\Models\Phone;
use App\Models\Post;
use App\Models\User;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    // One To One
    $users = User::all();
    // $users = User::find(1);
    // $users = User::find(1)->phone;
    // return $users;
    // $phones = Phone::all();
    // $phones = Phone::find(1);
    // $phones = Phone::find(1)->user;
    // return $phones;

    // One To Many
    // $comments = Comment::all();
    // $comments = Post::find(1);
    // $comments = Post::find(1)->comments; // How many comments has number 1 post?
    // return $comments;
    // $post = Comment::find(1);
    // $post = Comment::find(5)->post; // Number 5 comment belongs to which post?
    // return $post;
    // $posts = Post::all();
    $posts = Post::with('comments')->get();
    // return $posts;

    // Many To Many
    $mtm_posts = Post::with('categories')->get();
    $categories = Category::with('posts')->get();
    // return $mtm_posts;

    // Has One Throug
    // $mechanics = Mechanic::all();
    $mechanics = Mechanic::with('carOwner')->get(); // `mechanics` and `owners` table has no relation. But we can get data from `mechanics` through hasOneThrough relation.
    // return $mechanics;

    // Has Many Through
    // `countries` table has NO relation with the `posts` table. `posts` table has relation with the `users` table through `user_id` column. Again `users` table has relation with the `countries` table through `country_id` column,
    // A row is a horizontal alignment of data, while a column is vertical- https://prnt.sc/LryJXqdZQHzl
    // `countries` may have many `users`. Every `users` may have many `posts`. Here `users` table column `country_id` will work as intermediator. 
    // $countries = Country::all();
    $countries = Country::with('posts')->get();
    // return $countries;

    return view('welcome', compact('users', 'posts', 'mtm_posts', 'categories', 'mechanics', 'countries'));
});
