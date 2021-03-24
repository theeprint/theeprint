<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJobOrderRequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('job_order_requests', function (Blueprint $table) {
            $table->increments('job_order_request_id');
            $table->string('job_order_user_id');
            $table->integer('job_order_quote_num');
            $table->string('job_order_project_name');
            $table->string('job_order_delivery_address');
            $table->string('job_order_remarks');
            $table->integer('job_order_status')->comment("0");
            $table->integer('job_order_payment_status')->comment("0");
            $table->timestamp('job_order_due_date');
            $table->timestamp('job_order_created_at');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('job_order_requests');
    }
}
