<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Partners extends Model
{
    public function companypartnership() {
    	return $this->hasOne('App\Companypartnership', 'codepartner');
    }
}
