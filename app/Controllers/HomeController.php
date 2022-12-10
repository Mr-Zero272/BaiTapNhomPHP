<?php

namespace App\Controllers;

use App\Models\User;
use App\Models\Product;


class HomeController  extends BaseController
{
    public function index()
    {
        $products = Product::Where('quantity', '>', 70)->get();
        return $this->render('home/index', ['products' => $products]);
    }
}
