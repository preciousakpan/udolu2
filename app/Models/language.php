<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;

class language extends Model
{
    use HasFactory, Notifiable;

    protected $fillable = [
        'language',
        'language_code',
        ];
        protected $table = 'languages';

        public function books()
        {
            return $this->hasMany(book::class);
        }
}
