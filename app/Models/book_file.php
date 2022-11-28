<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class book_file extends Model
{
    use HasFactory;
    protected $fillable = [
        'chapter',
        'audio_book_path',
        'book_id'

    ];

    protected $table = "book_files";

    public function book(){
        return $this->belongsTo(book::class);

    }
}
