<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Companyservices extends Model
{
    protected $table = 'companyservices';
    public function companypartnership() {
    	return $this->belongsTo('App\Companypartnership', 'codecompanypartnership');
    }
    public function services() {
    	return $this->belongsTo('App\Services', 'codeservices');
    }
    public function tagservices() {
    	return $this->hasMany('App\Tagservices', 'codetagservices', 'id');
    }
    public function city() {
        return $this->belongsTo('App\Citys', 'codecity');
    }
    // public function getTagServiceAttribute() {
    // 	return $this->tagservices->lists('id')->toArray();
    // }

    // public function tagserv()
    // {
    //     return $this->belongsToMany('App\Tagservices', 'codetagservices');
    // }
}
