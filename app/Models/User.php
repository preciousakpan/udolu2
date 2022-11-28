<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'user_firstname',
        'user_email',
        'user_othernames',
        'reg_date',
        'user_role',
        'password',
        'subisActive',
        'profile_image',
        'status'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function transaction()
{
    return $this->hasMany(transaction::class, 'user_id', 'user_email');
}

public function subscription()
{
    return $this->hasMany(user_subscription::class, 'user_id', 'user_email');
}

// public function customersubscriptionDaysLeft($request){
//     try{
//         $user = $request->user();
//          $daysLeft = carbon::parse($user_late_transaction->subscribed_on)->diffInDays(carbon::parse($user_late_transaction->subscription_expiry));
//         if($daysLeft) {
//             return $daysLeft;
//             }
//             return '-1';
//         }catch(\Exception $error){
//             return '-1';
//     }
   
//           //  $user->setAttribute('days_left', $daysLeft);

//  }
  
}
