<?php

namespace App\Controllers\ShoeStore;

use App\Controllers\BaseController;
use App\Models\Contact;
use App\Http\Paginator;
use App\Http\Response;

class ContactController extends BaseController
{
    public function showContact(){
        return $this->render('contact/contact');
    }

    public function contact(){
        $data = $_POST;
        $contact = new Contact();
        $contact->fill($data);

        if ($contact->save()) {
            return $this->render('contact/contact-success', [
                'messages' => [
                    'success' => 'Congratulations!'
                ]
            ]);
        }
    }

       
}