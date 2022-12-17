<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\User;
use App\Models\Product;
use App\Models\Size;
use App\Models\Cart;


class HomeController  extends BaseController
{
    public function index()
    {
        $products = Product::all();
        //$products = Size::with('sizes')->get();
        //$products = Size::with('sizes')->where('id', auth()->id)->get();
        //$products = Product::all();
        return $this->render('home/index', ['products' => $products]);
    }
}
