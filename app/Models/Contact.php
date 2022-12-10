<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Model\Cart;

class Contact extends Model
{

    use SoftDeletes; 

    /**
     * Tên bảng, nếu không có thuộc tính này
     * Eloquent sẽ lấy tên theo tên của Model ở dạng số nhiều
     *
     * @var string
     */
    protected $table = 'contacts';

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
        'name',
        'phone',
        'address',
        'message',
        'created_at',
        'updated_at',
        'deleted_at'
    ];


}
