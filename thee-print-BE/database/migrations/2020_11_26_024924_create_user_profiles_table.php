<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUserProfilesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_profiles', function (Blueprint $table) {
            $table->increments('user_profile_id');
            $table->integer('user_id');
            $table->string('user_profile_salutation');
            $table->string('user_profile_first_name');
            $table->string('user_profile_middle_name');
            $table->string('user_profile_last_name');
            $table->string('user_profile_suffix');
            $table->string('user_profile_avatar');
            $table->string('user_profile_phone');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_profiles');
    }
}
