<?php

namespace App;

use Illuminate\Auth\Authenticatable;
use Laravel\Lumen\Auth\Authorizable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;

class Cms_core_values extends Model implements
    AuthenticatableContract,
    AuthorizableContract
{
    use Authenticatable, Authorizable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $primaryKey = 'cms_core_values_id';
    protected $fillable = [
        'cms_core_values_id', 'cms_core_values_icon', 'cms_core_values_title','cms_core_values_description','cms_core_values_icon1','cms_core_values_title1','cms_core_values_description1',
        'cms_core_values_icon2','cms_core_values_title2','cms_core_values_description2','cms_core_values_icon3','cms_core_values_title3','cms_core_values_description3','cms_core_values_update','created_at','updated_at'
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [
    ];
}
