<?php

namespace App;

use Illuminate\Auth\Authenticatable;
use Laravel\Lumen\Auth\Authorizable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;

class Job_order_request extends Model implements
    AuthenticatableContract,
    AuthorizableContract
{
    use Authenticatable, Authorizable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $primaryKey = 'job_order_request_id';
    protected $fillable = [
        'job_order_request_id','job_order_user_id', 'job_order_quote_num', 'job_order_project_name','job_order_delivery_address','job_order_remarks','job_order_status','job_order_payment_status','job_order_due_date','job_order_total','admin_archived','partner_archived', 'job_order_payment_date','archived_isDeleted','updated_by', 'created_at'
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [
    ];
}
