<?php

namespace App\Controllers\ShoeStore;

use App\Controllers\BaseController;
use App\Models\Product;
use App\Http\Paginator;
use App\Http\Response;

class AboutController extends BaseController
{
    public function showAbout(){
        return $this->render('about/about');
    }

       
}