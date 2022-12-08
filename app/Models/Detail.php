<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Detail extends Model
{

    /**
     * Tên bảng, nếu không có thuộc tính này
     * Eloquent sẽ lấy tên theo tên của Model ở dạng số nhiều
     *
     * @var string
     */
    protected $table = 'detail';

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
        'id_product',
        'link_image_1',
        'link_image_2',
        'link_image_3',
        'link_image_4',
        'created_at',
        'updated_at',
        'deleted_at'
    ];

    public function product(){
        return $this->belongsTo(Product::class, 'id_product');
    }
}
