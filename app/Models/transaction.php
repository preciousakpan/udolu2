<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class transaction extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'user_id',
        'Transaction_type',
        'payment_channel',
        'transaction_status',
        'amount',
    ];


    public function user()
    {
        return $this->belongsTo(user::class, 'user_id', 'user_email');
    }

    public function user_subscription()
    {
        return $this->hasOne(user_subscription::class);
    }

}
