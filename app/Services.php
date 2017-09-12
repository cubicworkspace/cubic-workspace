<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Services extends Model
{
    public function categoryservices() {
    	return $this->belongsTo('App\Categoryservices', 'codecategoryservices');
    }
}
