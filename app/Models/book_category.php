<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class book_category extends Model
{
    use HasFactory;

    protected $fillable = [
        'book_category',
        'book_category_id',
        'book_category_desc',
        'category_image',
       
    ];

    protected $table = 'book_categories';

    public function books(){
        return $this->hasMany(book::class);
    }
}
