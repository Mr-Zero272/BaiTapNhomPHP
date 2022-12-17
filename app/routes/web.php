<?php

use App\Router;
use Illuminate\Support\Facades\Route;

// Router::get('/hello', function () {
//     echo 'Hello world!';
// });

Router::get('/', 'App\Controllers\HomeController@index');
Router::get('/home', 'App\Controllers\HomeController@index');

// user authentication
Router::get('/login', '\App\Controllers\Auth\LoginController@showLoginForm');
Router::post('/login', '\App\Controllers\Auth\LoginController@login');

Router::get('/logout', '\App\Controllers\Auth\LoginController@logout');
Router::post('/logout', '\App\Controllers\Auth\LoginController@logout');

// register user
Router::get('/register', '\App\Controllers\Auth\RegisterController@showRegisterForm');
Router::post('/register', '\App\Controllers\Auth\RegisterController@register');

Router::error("\App\Controllers\ErrorController@notFoundError");

//Shoe store
Router::get('/product', 'App\Controllers\ShoeStore\ProductController@showProducts');

//Show cart list
Router::get('/cart', 'App\Controllers\ShoeStore\ProductController@showCart');
//Router::post('/cart', 'App\Controllers\ShoeStore\ProductController@showCart');

//Update quantity
Router::post('/cart/updateQuantity', 'App\Controllers\ShoeStore\ProductController@updateQuantity');
//Update size
Router::post('/cart/updateSize', 'App\Controllers\ShoeStore\ProductController@updateSize');


Router::post('/product/add', 'App\Controllers\ShoeStore\ProductController@addToCart');
Router::post('/cart/delete', 'App\Controllers\ShoeStore\ProductController@deleteProductFromCart');
Router::post('/cart/checkout', 'App\Controllers\ShoeStore\ProductController@checkOut');
Router::get('/product_detail', 'App\Controllers\ShoeStore\ProductController@showDetailProduct');
//Router::get('/cart', 'App\Controllers\ShoeStore\ProductController@checkOut');
Router::get('/seeAllProduct', 'App\Controllers\ShoeStore\ProductController@showAllProduct');

Router::get('/about','App\Controllers\ShoeStore\AboutController@showAbout');
//Contact
Router::get('/contact','App\Controllers\ShoeStore\ContactController@showContact');
Router::post('/contact','App\Controllers\ShoeStore\ContactController@contact');
?>

