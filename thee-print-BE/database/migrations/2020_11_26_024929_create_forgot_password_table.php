<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateForgotPasswordTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('forgot_password', function (Blueprint $table) {
            $table->increments('forgot_password_id');
            $table->integer('forgot_password_user');
            $table->string('forgot_password_token');
            $table->timestamp('forgot_password_expiration');
            $table->datetime('updated_at');
            $table->datetime('created_at');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('forgot_password');
    }
}
