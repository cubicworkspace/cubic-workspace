<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Adminspartnerships extends Model
{
   public function partner() {
    	return $this->belongsTo('App\Partner', 'codepartner');
    }
    public function companypartnership() {
    	return $this->belongsTo('App\Companypartnership', 'codecompanypartnership');
    }
	
}
