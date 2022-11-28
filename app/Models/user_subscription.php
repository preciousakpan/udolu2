<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class user_subscription extends Model
{
    use HasFactory;

    protected $fillable = [
        'transaction_id',
        'subscription_id ',
        'subscription_status',
        'subscribed_on',
        'subscription_expiry ',
    ];
    public function user()
{
    return $this->belongsTo(user_subscription::class);
}

public function transaction()
{
    return $this->belongsTo(transaction::class);
}

public function user_subscription()
{
    return $this->belongsTo(subscription::class, 'id', 'subscription_id');
}

}
