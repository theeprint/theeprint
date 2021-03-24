<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->increments('product_id');
            $table->string('product_item_code');
            $table->string('product_machine_print');
            $table->string('product_media');
            $table->string('product_description');
            $table->string('product_retail_sqin');
            $table->string('product_retail_sqft');
            $table->string('product_corporate_sqin');
            $table->string('product_corporate_sqft');
            $table->string('product_partners_sqin');
            $table->string('product_partners_sqft');
            $table->boolean('product_status')->comment("0");
            $table->timestamp('product_created_at');
            $table->timestamp('product_update_at');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}
