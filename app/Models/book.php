<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class book extends Model
{
    use HasFactory;

    protected $fillable = [
        'book_name',
        'sub_title',
        'durationofaudio',
        'coauthor',
        'publisher',
        'narrators',
        'book_rating',
        'downloadCount',
        'booklistencount',
        'keywords',
        'user_guidance',
        'book_isbn',
        'book_description', 
        'hasAudio',
        'book_author',
        'entry_date',
        'book_category_id',
        'language_id',
        'uploaded_by',
        'book_cover_image_path',
        'book_price',
        ];

    public function book_categories(){
        return $this->hasOne(book::class);

    }
    public function language(){
        return $this->belongsTo(language::class);

    }
    public function book_file(){
        return $this->hasMany(book_file::class);

    }

    public static function boot() {
        parent::boot();

        static::deleting(function($book) { // before delete() method call this
             $book->book_file()->delete();
             // do the rest of the cleanup...
        });
    }
}
