<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class streamed_book extends Model
{
    use HasFactory;

    protected $fillable = [
        'book_id',
        'user_email',
        'session_id',
        'stream_duration',
        'uploaded_by',
        
    ];
}
