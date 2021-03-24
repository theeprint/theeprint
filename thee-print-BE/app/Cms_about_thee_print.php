<?php

namespace App;

use Illuminate\Auth\Authenticatable;
use Laravel\Lumen\Auth\Authorizable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;

class Cms_about_thee_print extends Model implements
    AuthenticatableContract,
    AuthorizableContract
{
    use Authenticatable, Authorizable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $primaryKey = 'cms_about_thee_print_id';
    protected $fillable = [
        'cms_about_thee_print_id', 'cms_about_thee_print_logo', 'cms_about_thee_print_logo1','cms_about_thee_print_title','cms_about_thee_print_description','cms_about_thee_print_mission','cms_about_thee_print_vision','created_at','updated_at','cms_about_thee_print_update','created_at','updated_at'
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [
    ];
}
