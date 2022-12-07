<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Model\Cart;

class Product extends Model
{

    use SoftDeletes; 

    /**
     * Tên bảng, nếu không có thuộc tính này
     * Eloquent sẽ lấy tên theo tên của Model ở dạng số nhiều
     *
     * @var string
     */
    protected $table = 'products';

    /**
     * Sử dụng các thuộc tính created_at và updated_at trong bảng
     *
     * @var boolean
     */
    public $timestamps = true;


    /**
     * Danh sách các thuộc tính để gán hàng loạt (massive assignment)
     * Khi dùng phương thức $model->fill($array) sẽ gán các giá trị trong mảng
     * cho các thuộc tính có trong danh sách fillable . 
     * Phương thức fill() được sử dụng thay thế phương thức set() cho 
     * từng thuộc tính
     *
     * @var array
     */
    protected $fillable = [
        'id',
        'kind',
        'name',
        'price',
        'quantity',
        'link_image',
        'created_at',
        'updated_at',
        'deleted_at'
    ];

    public function carts()
    {
        return $this->belongsTo(Cart::class);
    }
}
