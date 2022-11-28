<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class passwordResetmail extends Mailable
{
    use Queueable, SerializesModels;

    protected $token;
    protected $userEmail;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($mytoken, $userEmail)
    {
        $this->token = $mytoken;
        $this->$userEmail = $userEmail;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        //return $this->view('view.name');
       // $recovery_pin = mt_rand(1000000000, 9999999999);
        return $this->from('customercare@clearingcost.com', 'udolu test clearing cost')
        ->subject('Your Password Reset Code')
        ->view('emails.resetpassword')->with([
            'token' => $this->token,
            'user_email'=>$this->userEmail
     ]);
    }
}
