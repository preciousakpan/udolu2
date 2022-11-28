<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;

class subscription extends Model
{
    use HasFactory, Notifiable;

    protected $fillable = [
        'id',
        'subscription_duration',
         'amount',
        ];
public function user_subscription()
{
    return $this->hasMany(user_subscription::class, 'subscription_id', 'id');
}
        //protected $primaryKey = 'id';
}
