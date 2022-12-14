<?php

namespace App\Controllers\ShoeStore;

use App\Controllers\BaseController;
use App\Models\Product;
use App\Models\Cart;
use App\Models\Detail;
use App\Models\User;
use App\Http\Paginator;
use App\Http\Response;
use Illuminate\Support\Facades\Auth;

class ProductController extends BaseController
{
    public function showProducts(){
        $productsKid = Product::Where('kind', 'kid')->get();
        $productsWoman = Product::Where('kind', 'woman')->get();
        $productsMan = Product::Where('kind', 'man')->get();
        return $this->render('shoeStore/product', ['productsKid' => $productsKid, 
                                                   'productsWoman' => $productsWoman,
                                                   'productsMan' => $productsMan]);
    }

    public static function setQuantityForCart()
    {
        $total = Cart::Where('id_user', auth()->id)->get();
        $number = 0;
        foreach($total as $product)
        {
            $number += $product->quantity;
        }
        session()->set('quantity', serialize($number));
    }

    public function showCart(){
        if (auth())
        {
            $productsInCart = Cart::with('product')->where('id_user', auth()->id)->get();
            // $number = 0;
            // foreach($productsInCart as $product)
            // {
            //     $number += $product->quantity;
            // }
            // session()->set('quantity', serialize($number));
            ProductController::setQuantityForCart();
            return $this->render(
                'shoeStore/cart',
                [
                    'products' => $productsInCart,
                ]
            );
        } else {
            session()->setFlash(\FLASH::ERROR, 'You need to log in');
            return $this->redirect('/login');
        }

    }

    public function addToCart(){ 
        if (auth())
        {
            $id = $this->request->post('id');
            $product = Product::find($id);
            $exist = Cart::find($product->id + (100 * auth()->id));
            if($exist)
            {
                $exist->quantity += 1;
                if ($this->request->ajax()) {
                    if ($product) {
                        if ($exist->save()) {
                            ProductController::setQuantityForCart();
                            return $this->json([
                                'message' => $product->name . 'has been added successfully!'
                            ], Response::HTTP_OK);
                        } else {
                            return $this->json([
                                'message' => 'Unable to add product to cart!'
                            ], Response::HTTP_BAD_REQUEST);
                        }
                    }
                    return $this->json([
                        'message' => 'Product ID does not exists!'
                    ], Response::HTTP_NOT_FOUND);
                }
            } else if(!$exist) {
                $data = [
                    'id' => $product->id + (100 * auth()->id),
                    'id_product'=> $product->id,
                    'id_user'=> auth()->id,
                    'quantity' => 1,
                    'created_at' => '2022-05-11 08:36:57',
                    'updated_at' => null,
                    'deleted_at' => null
                ];
                $cart = new Cart();
                $cart->fill($data);
        
                if ($this->request->ajax()) {
                    if ($product) {
                        if ($cart->save()) {
                            ProductController::setQuantityForCart();
                            return $this->json([
                                'message' => $product->name . 'has been added successfully!'
                            ], Response::HTTP_OK);
                        } else {
                            return $this->json([
                                'message' => 'Unable to add product to cart!'
                            ], Response::HTTP_BAD_REQUEST);
                        }
                    }
                    return $this->json([
                        'message' => 'Product ID does not exists!'
                    ], Response::HTTP_NOT_FOUND);
                }
            }

            $return_url = $this->request->post('return_url', '/home');
            return $this->redirect($return_url);
        } else {
            return $this->json([
                'message' => 'You need to log in before shopping!'
            ], Response::HTTP_BAD_REQUEST);
        }
    }

    public function deleteProductFromCart(){
        $id = $this->request->post('id');

        $cart = Cart::find($id);
        $productsInCart = Product::find($id - (auth()->id * 100));

        //Neu ajax request tra ve json
        if ($this->request->ajax())
        {
            if ($cart)
            {
                if ($cart->delete()) {
                    return $this->json([
                        'message' => $productsInCart->name . ' has ben deleted successfully'
                    ], Response::HTTP_OK);
                } else {
                    return $this->json([
                        'message' => 'Unable to delete Ward'
                    ], Response::HTTP_BAD_REQUEST);
                }
            }
            return $this->json([
                'message' => 'Ward ID does not exists!'
            ], Response::HTTP_NOT_FOUND);
        }

        $return_url = $this->request->post('return_url', '/home');
        return $this->redirect($return_url);
    }

    public function updateQuantity()
    {
        $id = $this->request->post('update_quantity_id');
        $id = (int) $id + (auth()->id * 100);
        $quantity = $this->request->post('update_quantity');
        $cart = Cart::find($id);
        if ($cart)
        {
            $cart->quantity = $quantity;
            if ($cart->save())
            {
                session()->setFlash(\FLASH::SUCCESS, 'Quantity has been updated');
            } else {
                session()->setFlash(\FLASH::ERROR, 'Unable to update');
            }
        } else {
            session()->setFlash(\FLASH::ERROR, 'ID was not exist');
        }
        return $this->redirect('/cart');
    }

    public function checkOut(){
        $id_user = $this->request->post('id');
        $checkout = Cart::Where('id_user', $id_user);
        $user = User::find($id_user);
        if ($this->request->ajax())
        {
            if ($checkout)
            {
                if ($checkout->delete()) {
                    return $this->json([
                        'message' => 'Thank ' . $user->username . ' for shopping in our shop. Please check your email to track your order and invoice.'
                    ], Response::HTTP_OK);
                } else {
                    return $this->json([
                        'message' => 'Unable to check out products'
                    ], Response::HTTP_BAD_REQUEST);
                }
            }
            return $this->json([
                'message' => 'User ID does not exists!'
            ], Response::HTTP_NOT_FOUND);
        }

        $return_url = $this->request->post('return_url', '/home'); 
        return $this->redirect($return_url);
    }

    public function showDetailProduct(){
        //tai sao cai link /product/detail thi ko co css ;?
        //$detailProduct = Detail::with('product')->where('id', 13)->get();
        $id = $this->request->get('id');
        $detailProduct = Detail::with('product')->find($id);

        return $this->render(
            'shoeStore/detail',
            [
                'detail' => $detailProduct,
            ]
        );
    }

    public function showAllProduct(){
        $kind = $this->request->get('kind');
        $products = Product::Where('kind', $kind)->get();
        return $this->render('shoeStore/all-product-' . $kind, ['products' => $products]);
    }

    public function showFormAddProduct()
    {
        return $this->render('shoeStore/product-add');
    }

    public function addProduct(){
        //$data = $_POST;
        $data = [
            'id_user' => 'user1',
            'id' => 5,
            'name' => 'dddd',
            'price' => 1234567,
            'quantity' => 1,
            'link_image' => 'https://get.wallhere.com/photo/anime-anime-girls-Yae-Miko-Genshin-Impact-Genshin-Impact-2095033.jpg',
            'created_at' => '2022-05-11 08:36:57',
            'updated_at' => '2022-05-11 08:36:57',
            'deleted_at' => null
        ];
        $cart = new Cart();
        $cart->fill($data);
        if ($cart->save())
        {
            session()->setFlash(\FLASH::ERROR, 'Can\'t add product, something went wrong!');
            return $this->redirect('/cart');
        } else {
            session()->setFlash(\FLASH::ERROR, 'Can\'t add product, something went wrong!');
        }
    }
}
