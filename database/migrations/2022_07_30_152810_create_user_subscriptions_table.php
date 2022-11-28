<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_subscriptions', function (Blueprint $table) {
            $table->id();
            $table->string('user_id');
            $table->unsignedBigInteger('transaction_id');
            $table->string('subscription_id');
            $table->string('subscription_status');
            $table->string('subscribed_on');
            $table->string('subscription_expiry');
            $table->timestamps();
            $table->foreign('user_id')->references('user_email')->on('users');
            $table->foreign('subscription_id')->references('id')->on('subscriptions');
            $table->foreign('transaction_id')->references('id')->on('transactions');
            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_subscriptions');
    }
};
