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
    	return $this->belongsTo('App\Tagservices', 'codetagservices');
    }
}
