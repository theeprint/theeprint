<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCompanyAddressesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('company_addresses', function (Blueprint $table) {
            $table->increments('company_address_id');
            $table->integer('partner_id');
            $table->boolean('company_address_type')->comment("0");
            $table->string('company_address');
            $table->boolean('company_address_default');
            $table->string('company_address_label');
            $table->string('company_address_brgy');
            $table->string('company_address_city');
            $table->string('company_address_province');
            $table->string('company_address_post_code');
            $table->string('company_address_person');
            $table->string('company_address_contact');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('company_addresses');
    }
}
