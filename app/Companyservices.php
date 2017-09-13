<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Companyservices extends Model
{
    public function companypartnership() {
    	return $this->belongsTo('App\Companypartnership', 'codecompanypartnership');
    }
    public function services() {
    	return $this->belongsTo('App\Services', 'codeservices');
    }
    public function tagservices() {
    	return $this->hasMany('App\Tagservices', 'codetagservices');
    }
    // public function getTagServiceAttribute() {
    // 	return $this->tagservices->lists('id')->toArray();
    // }

    // public function tagserv()
    // {
    //     return $this->belongsToMany('App\Tagservices', 'codetagservices');
    // }
}
