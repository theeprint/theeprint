<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJobOrderItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('job_order_items', function (Blueprint $table) {
            $table->increments('job_order_item_id');
            $table->integer('job_order_id');
            $table->integer('job_order_item_product_id');
            $table->string('job_order_item_length');
            $table->string('job_order_item_width');
            $table->integer('job_order_item_qty');
            $table->integer('job_order_item_price');
            $table->integer('job_order_item_unit')->comment("0");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('job_order_items');
    }
}
