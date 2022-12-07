<?php

namespace App\Controllers\ShoeStore;

use App\Controllers\BaseController;
use App\Models\Product;
use App\Http\Paginator;
use App\Http\Response;

class CartController extends BaseController
{
    public function showCart(){
        return $this->render('shoeStore/cart-list');
    }

    public function addToCart(){
        $id = $this->request->get('id');
        $city = Product::find($id);
    }
    
}