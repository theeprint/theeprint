<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePartnersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('partners', function (Blueprint $table) {
            $table->increments('partner_id');
            $table->integer('partner_user');
            $table->string('partner_company');
            $table->string('partner_phone');
            $table->string('partner_email');
            $table->string('partner_tin_number');
            $table->string('partner_logo');
            $table->string('partner_status')->comment("0");
            $table->string('partner_address');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('partners');
    }
}
