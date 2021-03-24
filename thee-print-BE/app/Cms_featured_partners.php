<?php

namespace App;

use Illuminate\Auth\Authenticatable;
use Laravel\Lumen\Auth\Authorizable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;

class Cms_featured_partners extends Model implements
    AuthenticatableContract,
    AuthorizableContract
{
    use Authenticatable, Authorizable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $primaryKey = 'cms_featured_partners_id';
    protected $fillable = [
        'cms_featured_partners_id', 'cms_featured_partners_logo', 'cms_featured_partners_logo1','cms_featured_partners_logo2','cms_featured_partners_logo3','cms_featured_partners_logo4',
        'created_at','updated_at','cms_featured_partners_updated'
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [
    ];
}
